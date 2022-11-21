package com.example;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

import net.bytebuddy.utility.*;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.security.auth.login.AccountNotFoundException;
import javax.servlet.MultipartConfigElement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.example.dao.CompetencesRepository;
import com.example.dao.CompteRepository;
import com.example.dao.Demande_emploiRepository;
import com.example.dao.ExperiencesRepository;
import com.example.dao.FormationsRepository;
import com.example.dao.NotificationRepository;
import com.example.dao.OffreRepository;
import com.example.entities.Competences;
import com.example.entities.Compte;
import com.example.entities.Demande_emploi;
import com.example.entities.Experiences;
import com.example.entities.FileDb;
import com.example.entities.Formations;
import com.example.entities.Notification;
import com.example.entities.Offre;
import net.bytebuddy.utility.RandomString;
@Controller
public class RecriteurController {
	
	
	
	
	
	  
	HttpServletRequest req;
	HttpSession Session ;
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	FIleServiceImpl fIleServiceImpl;
	@Autowired
	OffreRepository offreRepository;
	@Autowired
	JavaMailSender javaMailSender;
    @Autowired
    private JavaMailSender mailSender;
	@Autowired
	Demande_emploiRepository demande_emploiRepository;
	@Autowired
	NotificationRepository notificationRepository;
	@Autowired
	CompteService cpsevice;
	@Autowired
    ScrappingService scrappingService;
	@Autowired
	CompteServiceImpl compteService;
	@Autowired
	CompteRepository compteRepository;
	@Autowired
	OffreServiceImpl offreService;
	@Autowired
	ExperiencesRepository experiencesRepository;
	@Autowired
	CompetencesRepository competencesRepository;
	@Autowired
	FormationsRepository formationsRepository;
	HttpServletRequest http;

	
	
	public void sendEmail(String recipientEmail, String link)
	        throws MessagingException, UnsupportedEncodingException {
	    MimeMessage message = javaMailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	     
	    helper.setFrom("contact@shopme.com", "JOBBOARD Support");
	    helper.setTo(recipientEmail);
	     
	    String subject = "Here's the link to reset your password";
	     
	    String content = "<p>Hello,</p>"
	            + "<p>You have requested to reset your password.</p>"
	            + "<p>Click the link below to change your password:</p>"
	            + "<p><a href=\"" + link + "\">Change my password</a></p>"
	            + "<br>"
	            + "<p>Ignore this email if you do remember your password, "
	            + "or you have not made the request.</p>";
	     
	    helper.setSubject(subject);
	     
	    helper.setText(content, true);
	     
	    javaMailSender.send(message);
	}
	public void sendEmailcontact(String recipientEmail, String body)
	        throws MessagingException, UnsupportedEncodingException {
	    MimeMessage message = javaMailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    helper.setFrom(recipientEmail,"jouduser");
	    helper.setTo("amjedmh111@gmail.com");
	     
	    String subject = "user contact";
	     
	    String content = body;
	     
	    helper.setSubject(subject);
	     
	    helper.setText(content, true);
	     
	    javaMailSender.send(message);
	}
	
	   private String getSiteURL(HttpServletRequest request) {
	        String siteURL = request.getRequestURL().toString();
	        return siteURL.replace(request.getServletPath(), "");
	    }
	@RequestMapping(value="/demande",method=RequestMethod.POST)
	public ModelAndView demande(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
		int id =Integer.parseInt(request.getParameter("id_offre")+""); 
		Offre off = offreService.offreExist(id);
		Demande_emploi dem = new Demande_emploi();
		dem.setEmail(c1.getEmail());
		dem.setLettre_motivation(request.getParameter("lett"));
		dem.setEtat(0);
		Demande_emploi dem1 = compteService.saveDemande_emploi(c1, off, dem);
		
		
		Notification notif = new Notification();
		notif.setText("you have new demande d'emploi");
		notif.setEtat(0);
		notif.setCompte(off.getCompte());
		notif.setOff(off);
		notificationRepository.save(notif);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;
		}
	@GetMapping("/user")
    public Principal get(Principal p)
    {
        return p;
    }
	@RequestMapping(value="/toutnotification",method=RequestMethod.GET)
	public ModelAndView toutnotification(HttpServletRequest request,Model model , HttpSession session) {
		int idc = Integer.parseInt(request.getParameter("id")+"");
		Compte c1 = compteRepository.chercherById(idc);
		List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
		notificationRepository.updatenotification(1,c1.getId());
		model.addAttribute("compte",c1);
		model.addAttribute("toutnotif",toutnotif);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("toutnotification");
		return modelAndView;
	}
	@RequestMapping(value="/refuserdemande",method=RequestMethod.GET)
	public ModelAndView refuserdemande(HttpServletRequest request,Model model , HttpSession session) {
		int idd = Integer.parseInt(request.getParameter("id_demande")+"");
		demande_emploiRepository.updateDemande(2, idd);
		
		Optional<Demande_emploi> demande_notif = demande_emploiRepository.findById(idd);
		Notification notif = new Notification();
		notif.setText("your demande has been refused");
		notif.setEtat(0);
		notif.setCompte(demande_notif.get());
		notificationRepository.save(notif);
		session = request.getSession();
		long id = Long.parseLong(request.getParameter("id_offre")+"");
		Offre p = offreService.offreExist(id);
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
		List<Demande_emploi> Dom = p.getListDemande();
		model.addAttribute("compte",c1);
		model.addAttribute("demande",Dom);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/offreDetails");
		return modelAndView;
		}
	@RequestMapping(value="/accepterdemande",method=RequestMethod.GET)
	public ModelAndView accepterdemande(HttpServletRequest request,Model model , HttpSession session) {
		int idd = Integer.parseInt(request.getParameter("id_demande")+"");
		demande_emploiRepository.updateDemande(1, idd);
		
		Optional<Demande_emploi> demande_notif = demande_emploiRepository.findById(idd);
		Notification notif = new Notification();
		notif.setText("your demande has been accepted");
		notif.setEtat(0);
		notif.setCompte(demande_notif.get());
		notificationRepository.save(notif);
		
		session = request.getSession();
		long id = Long.parseLong(request.getParameter("id_offre")+"");
		Offre p = offreService.offreExist(id);
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
		List<Demande_emploi> Dom = p.getListDemande();
		model.addAttribute("compte",c1);
		model.addAttribute("demande",Dom);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/offreDetails");
		return modelAndView;
		}
	@RequestMapping(value="/demande",method=RequestMethod.GET)
	public ModelAndView demande() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("demande");
		return modelAndView;
		}
	@RequestMapping(value="/index.jsp")
	public ModelAndView index(Model model,@Validated Compte compte,HttpServletRequest req,HttpSession session,String password,String email,@ModelAttribute ("compte")
			@RequestParam(name="page",defaultValue="0")int p,
			@RequestParam(name="size",defaultValue="5")int s,
			@RequestParam(name="mc",defaultValue="")String mc,
			@RequestParam(name="lieu",defaultValue="")String lieu) {
		ModelAndView modelAndView=new ModelAndView();

		Page<Offre> page=offreRepository.chercher("%"+mc+"%",PageRequest.of(p, s));
		model.addAttribute("offre", page.getContent());
		int[] pages=new int[page.getTotalPages()];
		model.addAttribute("pages", pages);
		model.addAttribute("size", s);
		model.addAttribute("pagecourante", p);
		model.addAttribute("mc", mc);
		model.addAttribute("lieu", lieu);
		modelAndView.setViewName("/index");
		String mail = (String)req.getRemoteUser();
		Compte c1 = compteService.compteExist(mail);
		if(c1!=null)
		session.setAttribute("role", c1.getType());
		return modelAndView;
		}
	@GetMapping(value ="/offres")
    public Set<Offre> getOffres(String offres) {
        return  scrappingService.getOffre(offres);
    }
@RequestMapping(value="/rechercheoffre",method=RequestMethod.POST)
public ModelAndView rechercheoffre(Model model,@Validated Compte compte,HttpServletRequest req,HttpSession session,String password,String email) {
	ModelAndView modelAndView=new ModelAndView();
	String title="";
	String lieux="";
	String categorie="";
	try{
		title=req.getParameter("mc");
	}catch(Exception e){
		title="";
	}
	try{
		lieux=req.getParameter("lieu");
	}catch(Exception e){
		lieux="";
	}
	try{
		categorie=req.getParameter("categorie");
	}catch(Exception e){
		categorie="";
	}
	List<Offre> l1 = new ArrayList<Offre>();
	List<Offre> l2 = new ArrayList<Offre>();
	List<Offre> l0 = new ArrayList<Offre>();
	List<Offre> l3 = new ArrayList<Offre>();
	if(!title.isEmpty()){
		l1=offreRepository.cherchertitle(title);
	}
	if(!categorie.isEmpty())
	{
		l0=offreRepository.cherchercategorie(categorie);
	}
	if(!lieux.isEmpty()){
		l2=offreRepository.chercherlieu(lieux);
	}
	for(Offre o : l1){
		if(!l3.contains(o))
		l3.add(o);
	}
	for(Offre o : l2){
		if(!l3.contains(o))
		l3.add(o);
	}
	for(Offre o : l0){
		if(!l3.contains(o))
		l3.add(o);
	}
	model.addAttribute("offre", l3);
	
	
	modelAndView.setViewName("/index");
	return modelAndView;
	}
@RequestMapping(value="/browse-categories.jsp")
public String categorie() {
	return "/browse-categories";
}
@RequestMapping(value="/searchCategories",method=RequestMethod.POST)
public ModelAndView searchByCategories(Model model,@Validated Compte compte,HttpServletRequest req,HttpSession session,String password,String email) {
	ModelAndView modelAndView=new ModelAndView();
	String categorie="";
	
	try{
		categorie=req.getParameter("categorie");
	}catch(Exception e){
		categorie="";
	}
	List<Offre> l1 = new ArrayList<Offre>();

	
	if(!categorie.isEmpty())
	{
		l1=offreRepository.cherchercategorie(categorie);
	}
	
	model.addAttribute("offre", l1);
	
	
	modelAndView.setViewName("/index");
	return modelAndView;
	}
@RequestMapping(value="/addDemande",method=RequestMethod.GET)
public String demande(Model model,Long id_offre,Map<String, Object>map,HttpServletRequest request,Compte compte){
	ModelAndView modelAndView = new ModelAndView();
	HttpSession session = request.getSession();
	String email = (String) session.getAttribute("user");
	Compte c1 = compteService.compteExist(email);
	if(c1==null) {
		modelAndView.addObject(compte);
		return "/login";}
	else if(c1.getType().equals("R")) {
		return "/index";}
	else {
		Offre p=offreRepository.findById(id_offre).get();
		map.put("offre",p);
		return "/Demande";
	}}
@RequestMapping(value="/post-job.jsp" )
public ModelAndView post_jobs(HttpSession session, Compte compte){
	ModelAndView modelAndView=new ModelAndView();
	Offre offre=new Offre();
	modelAndView.addObject(offre);
	modelAndView.setViewName("/post-job");
	
	return modelAndView;
	
}
@RequestMapping(value="/inscription")
public ModelAndView inscription() {
	ModelAndView modelAndView=new ModelAndView();
	Compte compte=new Compte();
	modelAndView.addObject(compte);
	modelAndView.setViewName("/inscription");
	return modelAndView;
	
	}
@RequestMapping(value="/signup")
public ModelAndView signup() {
	ModelAndView modelAndView=new ModelAndView();
	Compte compte=new Compte();
	modelAndView.addObject(compte);
	modelAndView.setViewName("/signup");
	return modelAndView;
	
	}
@RequestMapping("/user")
public Principal user(Principal principal) {
	return principal;
}

@RequestMapping(value="/login.jsp",method = RequestMethod.GET)
public ModelAndView loginpage() {
	ModelAndView modelAndView=new ModelAndView();
	Compte compte=new Compte();
	modelAndView.addObject(compte);
	modelAndView.setViewName("/login");
	return modelAndView;
	
	}



@RequestMapping(value="/")
public ModelAndView indexx() {
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/index");
	return modelAndView;
	
	}
@RequestMapping(value="/inscription",method=RequestMethod.POST, consumes=MediaType.MULTIPART_FORM_DATA_VALUE)
public ModelAndView inscriptionpost(@Validated Compte compte,@RequestParam("fileDb") MultipartFile  file,String email,BindingResult bindingResult,HttpServletRequest request,ModelMap modelMap,Model model) throws MessagingException, IOException {
	ModelAndView modelAndView=new ModelAndView();
	if(bindingResult.hasErrors()){
		modelAndView.addObject("msg","please inter valid informations");
		modelMap.addAttribute("bindingResult", bindingResult);
		modelAndView.setViewName("/inscription");
	}
	else if(compteService.compteExist(email) != null){
		modelAndView.setViewName("/inscription");
		modelAndView.addObject("errormsg","compte already exist");
		
	}else {
 
		compteService.saveCompte(compte,getSiteURL(request));
	    fIleServiceImpl.uploadImage(file);
	     //fIleServiceImpl.store(file);
	       
		modelAndView.setViewName("/login");
		modelAndView.addObject("succesmsg","compte successfuly ceated,Please check your email to verify");
	}
	modelAndView.addObject("compte",new Compte());
	
	return modelAndView;}
@GetMapping(value="/logout")
public ModelAndView logout(HttpServletRequest request) {
	HttpSession sc = request.getSession();
	sc.setAttribute("user", null);
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("login");
	return modelAndView;
	}
@RequestMapping(value="/login",method=RequestMethod.POST)
public String validateLoginInfo(String email,String password ,ModelMap model,@ModelAttribute ("compte") @Validated Compte compte,HttpSession session,HttpServletRequest s ) {

	compte=compteService.compteExist(email);
	boolean result = passwordEncoder.matches(password, compte.getPassword());
	System.out.println("the password is "+ compte.getPassword());
	if((result)){ 
		
		session.setAttribute("user", compte.getEmail());
		session.setAttribute("userName", compte.getNom());
		session.setAttribute("role", compte.getType());
        model.addAttribute("success","LoginSuccesfuly");
	return "/index";
	}else {
	model.addAttribute("error", "invalid email or password");
return "/login";
	
	}
}

@RequestMapping(value="/post-job",method=RequestMethod.POST)
public ModelAndView post_job(@Validated Offre  offre ,Model model,HttpServletRequest request,HttpSession session,BindingResult bindingResult,Compte compte,ModelMap modelMap){
	ModelAndView modelAndView = new ModelAndView();
	if(bindingResult.hasErrors()) {
		modelAndView.addObject("msg","please inter valid informations");
		modelMap.addAttribute("bindingResult", bindingResult);
	}else {
		String email = (String) session.getAttribute("user");
		System.out.println("la session est "+ session.getAttribute("user"));
		Compte c1 = compteService.compteExist(email);
		
		System.out.println("ID de session est "+ session.getAttribute("compte"));
		offreService.saveOffre(offre,c1);
		modelAndView.addObject("msg","Offre successfuly added");
		c1 = compteService.compteExist(email);
		List<Offre> lof = c1.getOffre();
		model.addAttribute("offre", lof);
		List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
		model.addAttribute("notif", toutnotif.size());
		modelAndView.setViewName("/RecruteurAccount");
	
		return modelAndView;
}
	return modelAndView;
}
@RequestMapping(value="/changepassword.jsp",method=RequestMethod.GET)
public ModelAndView password() {
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/changepassword");
	return modelAndView;
}
@RequestMapping(value="/about.jsp",method=RequestMethod.GET)
public ModelAndView about() {
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/about");
	return modelAndView;
}
@RequestMapping(value="/candidataccount")
public ModelAndView account( @Validated Compte compte,HttpSession session,HttpServletRequest request,Model model) { 
	session = request.getSession();
	String email = (String)request.getRemoteUser();
	Compte c1 = compteService.compteExist(email);
	List<Experiences> listexperinece = c1.getCv().getExperience();
	List<Formations> listformation = c1.getCv().getFormation();
	List<Competences> listcompetence = c1.getCv().getCompetence();
	model.addAttribute("compte",c1);
	model.addAttribute("lexp",listexperinece);
	model.addAttribute("lform",listformation);
	model.addAttribute("lcomp",listcompetence);
	
	
	session.setAttribute("type",compte.getType());
	List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
	model.addAttribute("notif", toutnotif.size());
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/candidataccount");
	return modelAndView;
	
}
@RequestMapping(value="/mesDemandes")
public ModelAndView accountDemande( @Validated Compte compte,HttpSession session,HttpServletRequest request,Model model) { 
	session = request.getSession();
	String email = (String)request.getRemoteUser();
	Compte c1 = compteService.compteExist(email);
	List<Demande_emploi> Dom = c1.getDemande_emploi();
	model.addAttribute("compte",c1);
	model.addAttribute("demande",Dom);
	
	
	session.setAttribute("type",compte.getType());
	
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/mesDemandes");
	return modelAndView;
	
}
@RequestMapping(value="/offreDetails")
public ModelAndView offreDetails( @Validated Compte compte,Offre offre, HttpSession session,HttpServletRequest request,Model model) { 
	session = request.getSession();
	long id = Long.parseLong(request.getParameter("id_offre")+"");
	Offre p = offreService.offreExist(id);
	String email = (String)request.getRemoteUser();
	Compte c1 = compteService.compteExist(email);
	List<Demande_emploi> Dom = p.getListDemande();
	model.addAttribute("compte",c1);
	model.addAttribute("demande",Dom);
	
	
	session.setAttribute("type",compte.getType());
	
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/offreDetails");
	return modelAndView;
	
}
@RequestMapping(value="/manage-resumes")
public ModelAndView manageResume(@Validated Compte compte,HttpServletRequest request) {
	ModelAndView modelAndView=new ModelAndView();
	HttpSession session = request.getSession();
	String email = (String)request.getRemoteUser();
	Compte c1 = compteService.compteExist(email);
	modelAndView.setViewName("/manage-resumes");
	return modelAndView;
}
@RequestMapping(value="/notifications")
public ModelAndView notificaions() {
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.setViewName("/notifications");
	return modelAndView;
	
}

@RequestMapping(value="/RecruteurAccount.jsp")
public ModelAndView accountRec(Model model,@Validated Compte compte ,@RequestParam(name="page",defaultValue="0")int p,HttpServletRequest request,
		@RequestParam(name="size",defaultValue="5")int s) {
	HttpSession session = request.getSession();
	String email = (String) session.getAttribute("user");
	Compte c1 = compteService.compteExist(email);
	List<Offre> lof = c1.getOffre();
	
	ModelAndView modelAndView = new ModelAndView();
   
    model.addAttribute("offre", lof);
if(c1.getType().equals("R")){
	model.addAttribute("compte",c1);
	List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
	model.addAttribute("notif", toutnotif.size());
	modelAndView.setViewName("/RecruteurAccount");
}else{
	
	List<Experiences> listexperinece = c1.getCv().getExperience();
	List<Formations> listformation = c1.getCv().getFormation();
	List<Competences> listcompetence = c1.getCv().getCompetence();
	model.addAttribute("compte",c1);
	model.addAttribute("lexp",listexperinece);
	model.addAttribute("lform",listformation);
	model.addAttribute("lcomp",listcompetence);
	List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
	model.addAttribute("notif", toutnotif.size());
	
	session.setAttribute("type",compte.getType());
	modelAndView.setViewName("/candidataccount");
}

    return modelAndView;
}
@RequestMapping(value="/delete",method=RequestMethod.GET)
public String delete(Model model,Long id_offre,HttpServletRequest request, Compte compte) {
	long id = Long.parseLong(request.getParameter("id_offre")+"");
	offreRepository.deleteById(id);
	HttpSession session = request.getSession();
	String email = (String) session.getAttribute("user");
	System.out.println("delete session"+ email);
	Compte c1 = compteService.compteExist(email);
	session.setAttribute("compte", c1.getId());
	List<Offre> lof = c1.getOffre();
	model.addAttribute("offre", lof);
	List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
	model.addAttribute("notif", toutnotif.size());
	return "/RecruteurAccount";
}
@RequestMapping(value="/edit",method=RequestMethod.GET)
public String edit(Model model,Long id_offre,Map<String, Object> map,HttpServletRequest request){
	long id = Long.parseLong(request.getParameter("id_offre")+"");
	Offre p = offreService.offreExist(id);
	
	model.addAttribute("offre",p);
	return "/edit_offre";
}
@RequestMapping(value="/access-denied")
public String access() {
	return "/access-denied";
	
}
@RequestMapping(value="/contact.jsp")
public String contact() {
	return "/contact";
	
}
@PostMapping(value="/contact")
public String contactPOST(HttpServletRequest request,Model model) throws UnsupportedEncodingException, MessagingException {
	String email=request.getParameter("email");
	String message=request.getParameter("message");
	sendEmailcontact(email, message);
	model.addAttribute("message", "your message was send successfuly, we replied to you as soon as possible ");
	return "/contact";
	
}
@RequestMapping(value="/clientacount",method=RequestMethod.GET)
public String clientacount(Model model,HttpServletRequest request) {
	int id = Integer.parseInt(request.getParameter("id")+"");
	Compte c1 =compteRepository.chercherById(id);
	HttpSession session = request.getSession();
	session.setAttribute("compte", c1.getId());
	List<Experiences> listexperinece = c1.getCv().getExperience();
	List<Formations> listformation = c1.getCv().getFormation();
	List<Competences> listcompetence = c1.getCv().getCompetence();
	model.addAttribute("compte",c1);
	model.addAttribute("lexp",listexperinece);
	model.addAttribute("lform",listformation);
	model.addAttribute("lcomp",listcompetence);
	List<Notification> toutnotif = notificationRepository.cherchernotification(0, c1.getId());
	model.addAttribute("notif", toutnotif.size());
	return "/clientaccount";
}
@PostMapping("/forgotpassword")
public String processForgotPassword(HttpServletRequest request, Model model) throws UnsupportedEncodingException, MessagingException {
    String email = request.getParameter("email");
    String token = RandomString.make(30);
     
    try {
        compteService.updateResetPasswordToken(token, email);
        String resetPasswordLink = Utility.getSiteURL(request) + "/reset_password?token=" + token;
        sendEmail(email, resetPasswordLink);
        model.addAttribute("message", "We have sent a reset password link to your email. Please check.");
        
    } catch (AccountNotFoundException ex) {
        model.addAttribute("error", ex.getMessage());
    } catch (UnsupportedEncodingException | MessagingException e) {
        model.addAttribute("error", "Error while sending email");
    }
         
    return "forgotpassword";
}
@GetMapping("/forgotpassword")
public String showForgotPasswordForm() {
	return "forgotpassword";

}
@PostMapping("/changepassword")
public String changePasswordForm(HttpServletRequest request,String email,Model model) {
	HttpSession sc=request.getSession();
	String user=(String) sc.getAttribute("user");
	 String oldPass=request.getParameter("oldpass");
	 String newpass=request.getParameter("password");
	 Compte compte=compteService.compteExist(user);
	 if (compte!=null) {
		 if (passwordEncoder.matches(oldPass, compte.getPassword())) {
			 compteService.updatePassword(compte, newpass);
	         
		        model.addAttribute("message", "You have successfully changed your password.");
			
		}
		
	}else {
		model.addAttribute("failde", "session closed");
	}
	return "changepassword";

}
@GetMapping("/reset_password")
public String showResetPasswordForm(@Param(value = "token") String token, Model model) {
    Compte compte = compteService.getByResetPasswordToken(token);
    model.addAttribute("token", token);
     
    if (compte == null) {
        model.addAttribute("message", "Invalid Token");
        return "message";
    }
     
    return "reset_password";
}
 
@PostMapping("/reset_password")
public String processResetPassword(HttpServletRequest request, Model model) {
    String token = request.getParameter("token");
    String password = request.getParameter("password");
     
    Compte compte = compteService.getByResetPasswordToken(token);
    model.addAttribute("title", "Reset your password");
     
    if (compte == null) {
        model.addAttribute("message", "Invalid Token");
        return "message";
    } else {           
        compteService.updatePassword(compte, password);
         
        model.addAttribute("message", "You have successfully changed your password.");
    }
     
    return "reset_password";
}

@GetMapping("/verify")
public ModelAndView verifyUser(@Param("code") String code,@Validated Compte compte, Model model) {

	ModelAndView modelAndView=new ModelAndView();
	modelAndView.addObject(compte);
    if (compteService.verify(code)) {
    	modelAndView.setViewName("/login");
   model.addAttribute("VerifSuccess","Congratulations, your account has been verified");
    } else {

    	modelAndView.setViewName("/login"); 
    	model.addAttribute("Veriffail","Ooops, email not vrtifird");       
    }
	return modelAndView;
}
} 

