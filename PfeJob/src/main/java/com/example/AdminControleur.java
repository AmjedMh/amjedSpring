package com.example;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.CompetencesRepository;
import com.example.dao.CompteRepository;
import com.example.dao.Demande_emploiRepository;
import com.example.dao.ExperiencesRepository;
import com.example.dao.FormationsRepository;
import com.example.dao.OffreRepository;
import com.example.entities.Competences;
import com.example.entities.Compte;
import com.example.entities.Demande_emploi;
import com.example.entities.Experiences;
import com.example.entities.Formations;
import com.example.entities.Offre;
@Controller
public class AdminControleur {
	HttpSession Session ;
	@Autowired
	OffreRepository offreRepository;
	@Autowired
	CompteService cpsevice;
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
	@Autowired
	Demande_emploiRepository demande_emploiRepository;
	HttpServletRequest http;
	
	@RequestMapping(value="/loginadmin",method=RequestMethod.GET)
	public ModelAndView LoginAdmin(HttpServletRequest request) {
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
		}
	@RequestMapping(value="/logoutadmin",method=RequestMethod.GET)
	public ModelAndView logoutadmin(HttpServletRequest request) {
		HttpSession sc = request.getSession();
		sc.setAttribute("adminmail", null);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
		}
	@RequestMapping(value="/loginadmin",method=RequestMethod.POST)
	public ModelAndView Loginadm(Model model,HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession sc = request.getSession();
		if(email.equals("admin") && password.equals("adminadmin")){
			sc.setAttribute("adminmail", "admin");
			List<Compte> lc = new ArrayList<Compte>();
			lc = compteRepository.chercherallcompte("admin","R");
			List<Compte> lc1 = new ArrayList<Compte>();
			lc1 = compteRepository.chercherallcompte("admin","c");
			model.addAttribute("lc1",lc);
			model.addAttribute("lc2",lc1);
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("accueiladmin");
			return modelAndView;
		}else{
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("loginadmin");
			return modelAndView;
		}
		
		}
	@RequestMapping(value="/controleoffres",method=RequestMethod.GET)
	public ModelAndView controleoffre(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		List<Offre> lc1 = offreRepository.getall();
		model.addAttribute("lc2",lc1);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("controleoffres");
		return modelAndView;
		}else{
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("loginadmin");
			return modelAndView;
		}
		}
	@RequestMapping(value="/controledemande",method=RequestMethod.GET)
	public ModelAndView controledemande(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if( admin!=null){
		List<Demande_emploi> lc1 = demande_emploiRepository.getall();
		model.addAttribute("lc2",lc1);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("controledemande");
		return modelAndView;
		}else{
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("loginadmin");
			return modelAndView;
		}
		}
	@RequestMapping(value="/accueiladmin",method=RequestMethod.GET)
	public ModelAndView AdminAcceuil(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		List<Compte> lc = new ArrayList<Compte>();
		lc = compteRepository.chercherallcompte("admin","R");
		List<Compte> lc1 = new ArrayList<Compte>();
		lc1 = compteRepository.chercherallcompte("admin","c");
		model.addAttribute("lc1",lc);
		model.addAttribute("lc2",lc1);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("accueiladmin");
		return modelAndView;
		}else{
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("loginadmin");
			return modelAndView;
		}
		}
	@RequestMapping(value="/controlecompte",method=RequestMethod.GET)
	public ModelAndView ControleClient(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		System.out.println("admin : " +admin);
		if(admin !=null){
		int id = Integer.parseInt(request.getParameter("id")+"");
		Compte c = compteRepository.chercherById(id);
		ModelAndView modelAndView=new ModelAndView();
		if(c.getType().equals("c")){
			List<Experiences> listexperinece = c.getCv().getExperience();
			List<Formations> listformation = c.getCv().getFormation();
			List<Competences> listcompetence = c.getCv().getCompetence();
			List<Demande_emploi> listdemande = c.getDemande_emploi();
			model.addAttribute("compte",c);
			model.addAttribute("lexp",listexperinece);
			model.addAttribute("lform",listformation);
			model.addAttribute("lcomp",listcompetence);
			model.addAttribute("ldem",listdemande);
			modelAndView.setViewName("controlecompte");
			
		}else{
			List<Offre> lof = c.getOffre();
			model.addAttribute("offre", lof);
			model.addAttribute("compte",c);
			modelAndView.setViewName("controlerecriteur");
		}
		
		
		
		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	
	@RequestMapping(value="/deleteCondidat",method=RequestMethod.GET)
	public ModelAndView deleteCondidat(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		compteRepository.deleteById(idc);
		List<Compte> lc = new ArrayList<Compte>();
		lc = compteRepository.chercherallcompte("admin","R");
		List<Compte> lc1 = new ArrayList<Compte>();
		lc1 = compteRepository.chercherallcompte("admin","c");
		model.addAttribute("lc1",lc);
		model.addAttribute("lc2",lc1);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("accueiladmin");
		return modelAndView;
		}else{
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("loginadmin");
			return modelAndView;
		}
		}
	@RequestMapping(value="/deleteexperienc",method=RequestMethod.GET)
	public ModelAndView deleteexperience(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		int ide = Integer.parseInt(request.getParameter("id")+"");
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		experiencesRepository.deleteById(ide);
		Compte c = compteRepository.chercherById(idc);
		
		ModelAndView modelAndView=new ModelAndView();
		List<Experiences> listexperinece = c.getCv().getExperience();
		List<Formations> listformation = c.getCv().getFormation();
		List<Competences> listcompetence = c.getCv().getCompetence();
		List<Demande_emploi> listdemande = c.getDemande_emploi();
		model.addAttribute("compte",c);
		model.addAttribute("lexp",listexperinece);
		model.addAttribute("lform",listformation);
		model.addAttribute("lcomp",listcompetence);
		model.addAttribute("ldem",listdemande);
		modelAndView.setViewName("controlecompte");

		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	
	@RequestMapping(value="/deleteCompetence",method=RequestMethod.GET)
	public ModelAndView deleteCompetence(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		int ide = Integer.parseInt(request.getParameter("id")+"");
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		competencesRepository.deleteById(ide);
		Compte c = compteRepository.chercherById(idc);
		
		ModelAndView modelAndView=new ModelAndView();
		List<Experiences> listexperinece = c.getCv().getExperience();
		List<Formations> listformation = c.getCv().getFormation();
		List<Competences> listcompetence = c.getCv().getCompetence();
		List<Demande_emploi> listdemande = c.getDemande_emploi();
		model.addAttribute("compte",c);
		model.addAttribute("lexp",listexperinece);
		model.addAttribute("lform",listformation);
		model.addAttribute("lcomp",listcompetence);
		model.addAttribute("ldem",listdemande);
		modelAndView.setViewName("controlecompte");
		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	@RequestMapping(value="/deleteFormation",method=RequestMethod.GET)
	public ModelAndView deleteFormation(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin!=null){
		int ide = Integer.parseInt(request.getParameter("id")+"");
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		formationsRepository.deleteById(ide);
		Compte c = compteRepository.chercherById(idc);
		
		ModelAndView modelAndView=new ModelAndView();
		List<Experiences> listexperinece = c.getCv().getExperience();
		List<Formations> listformation = c.getCv().getFormation();
		List<Competences> listcompetence = c.getCv().getCompetence();
		List<Demande_emploi> listdemande = c.getDemande_emploi();
		model.addAttribute("compte",c);
		model.addAttribute("lexp",listexperinece);
		model.addAttribute("lform",listformation);
		model.addAttribute("lcomp",listcompetence);
		model.addAttribute("ldem",listdemande);
		modelAndView.setViewName("controlecompte");
		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	@RequestMapping(value="/deleteDemande",method=RequestMethod.GET)
	public ModelAndView deleteDemande(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin!=null){
		int ide = Integer.parseInt(request.getParameter("id")+"");
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		demande_emploiRepository.deleteById(ide);
		
		Compte c = compteRepository.chercherById(idc);
		
		ModelAndView modelAndView=new ModelAndView();
		List<Experiences> listexperinece = c.getCv().getExperience();
		List<Formations> listformation = c.getCv().getFormation();
		List<Competences> listcompetence = c.getCv().getCompetence();
		List<Demande_emploi> listdemande = c.getDemande_emploi();
		model.addAttribute("compte",c);
		model.addAttribute("lexp",listexperinece);
		model.addAttribute("lform",listformation);
		model.addAttribute("lcomp",listcompetence);
		model.addAttribute("ldem",listdemande);
		modelAndView.setViewName("controlecompte");
		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	@RequestMapping(value="/deleteRecriteur",method=RequestMethod.GET)
	public ModelAndView deleteRecriteur(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		compteRepository.deleteById(idc);
		List<Compte> lc = new ArrayList<Compte>();
		lc = compteRepository.chercherallcompte("admin","R");
		List<Compte> lc1 = new ArrayList<Compte>();
		lc1 = compteRepository.chercherallcompte("admin","c");
		model.addAttribute("lc1",lc);
		model.addAttribute("lc2",lc1);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("accueiladmin");
		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	@RequestMapping(value="/deleteoffre",method=RequestMethod.GET)
	public ModelAndView deleteoffre(Model model,HttpServletRequest request) {
		HttpSession sc = request.getSession();
		String admin = null;
		try{
			admin = (String)sc.getAttribute("adminmail");
		}catch(Exception e){
			admin=null;
		}
		if(admin !=null){
		long ide = Long.parseLong(request.getParameter("id")+"");
		int idc = Integer.parseInt(request.getParameter("idc")+"");
		offreRepository.deleteById(ide);
		Compte c = compteRepository.chercherById(idc);
		List<Offre> lof = c.getOffre();
		model.addAttribute("offre", lof);
		model.addAttribute("compte",c);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("controlerecriteur");
		return modelAndView;
	}else{
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("loginadmin");
		return modelAndView;
	}
		}
	

}
