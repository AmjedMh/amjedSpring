package com.example;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.CompetencesRepository;
import com.example.dao.ExperiencesRepository;
import com.example.dao.FormationsRepository;
import com.example.dao.NotificationRepository;
import com.example.entities.Competences;
import com.example.entities.Compte;
import com.example.entities.Experiences;
import com.example.entities.Formations;
import com.example.entities.Notification;
@Controller
public class Candidat {
	@Autowired
	CompteServiceImpl compteService;
	@Autowired
	ExperiencesRepository experiencesRepository;
	@Autowired
	CompetencesRepository competencesRepository;
	@Autowired
	NotificationRepository notificationRepository;
	@Autowired
	FormationsRepository formationsRepository;
	@GetMapping("/add-resume.jsp")
	public String add_resume(Model m) throws IOException {
		Competences competence= new Competences();
		m.addAttribute("competence",competence);
		Experiences experience = new Experiences();
		Formations formation = new Formations();
		m.addAttribute("experience",experience);
		m.addAttribute("formation",formation);
		//ModelAndView modelAndView=new ModelAndView();
		//modelAndView.addObject(competence);
		//modelAndView.setViewName("/add-resume");
		return "/add-resume";
	}
	
	@RequestMapping(value="/add-competence",method=RequestMethod.POST)
	public ModelAndView ajouterCompetence(@Validated Compte compte,Competences competence,Model model, HttpServletRequest request) {
		ModelAndView modelAndView=new ModelAndView();
		String email = (String)request.getRemoteUser();
				
		model.addAttribute("competence", new Competences());
		
		Compte c1 = compteService.compteExist(email);
		Competences cm1 = new Competences();
		cm1.setNiveau(request.getParameter("niveau"));
		cm1.setMois_experience(request.getParameter("mois_experience"));
		cm1.setNomcompp(request.getParameter("nomcompp"));
		
		Competences comp = compteService.saveCompetences(c1,cm1);
	    if((comp!=null)) {
	    	
	    	modelAndView.addObject("succesmsg","CV successfuly ceated");
	    	modelAndView.setViewName("/add-resume");
	    	return modelAndView;
	    	}
	    	else {
	    	modelAndView.addObject("errormsg","Verifier tous les champs");
	    	modelAndView.setViewName("/add-resume");
	    	return modelAndView;
	    	}
	}
	@RequestMapping(value="/add-formation",method=RequestMethod.POST)
	public ModelAndView ajouterFormation(@Validated Compte compte,Formations formation,Model model, HttpServletRequest request) {
		ModelAndView modelAndView=new ModelAndView();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);		
		model.addAttribute("formation", new Formations());
		model.addAttribute("competence", new Competences());
		Formations cm1 = new Formations();
		cm1.setDiplome_obtenu(request.getParameter("diplome_obtenu"));
		cm1.setNom_etablissement(request.getParameter("nom_etablissement"));
		
		cm1.setDate_diplome(request.getParameter("date_diplome"));
		cm1.setCv(c1.getCv());
		Formations comp = compteService.saveFormation(c1,cm1);
	    if((comp!=null)) {
	    	
	    	modelAndView.addObject("succesmsg","CV successfuly ceated");
	    	modelAndView.setViewName("/add-resume");
	    	return modelAndView;
	    	}
	    	else {
	    	modelAndView.addObject("errormsg","Verifier tous les champs");
	    	modelAndView.setViewName("/add-resume");
	    	return modelAndView;
	    	}
	}
	@RequestMapping(value="/add-experience",method=RequestMethod.POST)
	public ModelAndView ajouterCv(@Validated Compte compte,Experiences experience,Model model, HttpServletRequest request) {
		ModelAndView modelAndView=new ModelAndView();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
				
		model.addAttribute("experience", new Experiences());
		model.addAttribute("competence", new Competences());
	
		Experiences cm1 = new Experiences();
		cm1.setNom_societe(request.getParameter("nom_societe"));
		cm1.setPoste_occupee(request.getParameter("poste"));
		cm1.setSecteur_activite(request.getParameter("secteur_activite"));
		cm1.setDate_debut(request.getParameter("date_debut"));
		cm1.setDate_fin(request.getParameter("date_fin"));
		
		Experiences comp = compteService.saveExperiences(c1,cm1);
	    if((comp!=null)) {
	    	
	    	modelAndView.addObject("succesmsg","CV successfuly ceated");
	    	modelAndView.setViewName("/add-resume");
	    	return modelAndView;
	    	}
	    	else {
	    	modelAndView.addObject("errormsg","Verifier tous les champs");
	    	modelAndView.setViewName("/add-resume");
	    	return modelAndView;
	    	}
	}
	@RequestMapping(value="/deleteexperience",method=RequestMethod.GET)
	public String delete(Model model,Long id_offre,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id_experience")+"");
		experiencesRepository.deleteById(id);
		String email = (String)request.getRemoteUser();
		Compte c1 = compteService.compteExist(email);
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
		return "/candidataccount";
		
	}
	@RequestMapping(value="/deleteformation",method=RequestMethod.GET)
	public String deleteform(Model model,Long id_offre,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id_formation")+"");
		formationsRepository.deleteById(id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
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
		return "/candidataccount";
		
	}
	@RequestMapping(value="/deletecompetence",method=RequestMethod.GET)
	public String deletecompetence(Model model,Long id_offre,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id_competence")+"");
		competencesRepository.deleteById(id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
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
		return "/candidataccount";
		
	}
	@RequestMapping(value="/ouvrirmodifierexperience",method=RequestMethod.GET)
	public String ouvrirmodifierexperience(Model model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id_experience")+"");
		Optional<Experiences> exp = experiencesRepository.findById(id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
		session.setAttribute("compte", c1.getId());
		model.addAttribute("exp",exp);
		return "/modifierexperience";
	}
	@RequestMapping(value="/ouvrirmodifierexperience",method=RequestMethod.POST)
	public String modifierexperience(Model model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id")+"");
		String nom = request.getParameter("nom_societe");
		String sec = request.getParameter("secteur_activite");
		String po = request.getParameter("poste_occupee");
		String dd = request.getParameter("date_debut");
		String df = request.getParameter("date_fin");
		experiencesRepository.updateExperience(nom, sec, po, dd, df, id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
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
		return "/candidataccount";
	}
	@RequestMapping(value="/ouvrirmodifierformation",method=RequestMethod.GET)
	public String ouvrirmodifierformation(Model model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id_formation")+"");
		Formations form = formationsRepository.getById(id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
		session.setAttribute("compte", c1.getId());
		model.addAttribute("form",form);
		return "/modifierformation";
	}
	@RequestMapping(value="/ouvrirmodifierformation",method=RequestMethod.POST)
	public String modifierformation(Model model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id")+"");
		String nom = request.getParameter("nom_etablissement");
		String dep = request.getParameter("diplome_obtenu");
		String datedep = request.getParameter("date_diplome");
		
		formationsRepository.updateFormation(nom, dep, datedep, id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
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
		return "/candidataccount";
	}
	@RequestMapping(value="/ouvrirmodifiercompetence",method=RequestMethod.GET)
	public String ouvrirmodifiercompetence(Model model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id_competence")+"");
		Optional<Competences> comp = competencesRepository.findById(id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
		session.setAttribute("compte", c1.getId());
		model.addAttribute("comp",comp);
		return "/modifiercompetence";
	}
	@RequestMapping(value="/ouvrirmodifiercompetence",method=RequestMethod.POST)
	public String modifiercompetence(Model model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id")+"");
		String nom = request.getParameter("nomcompp");
		String dep = request.getParameter("mois_experience");
		String datedep = request.getParameter("niveau");
		
		competencesRepository.updateCompetence(nom, dep, datedep, id);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("user");
		Compte c1 = compteService.compteExist(email);
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
		return "/candidataccount";
	}
}