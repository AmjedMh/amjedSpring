package com.example;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Base64;
import java.util.HashSet;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.security.auth.login.AccountNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.example.dao.CompetencesRepository;
import com.example.dao.CompteRepository;
import com.example.dao.CvRepository;
import com.example.dao.Demande_emploiRepository;
import com.example.dao.ExperiencesRepository;
import com.example.dao.FormationsRepository;
import com.example.entities.CV;
import com.example.entities.Competences;
import com.example.entities.Compte;
import com.example.entities.Demande_emploi;
import com.example.entities.Experiences;
import com.example.entities.FileDb;
import com.example.entities.Formations;
import com.example.entities.Offre;

import net.bytebuddy.utility.RandomString;
@Service
@Transactional
public class CompteServiceImpl implements CompteService {
@Autowired
CompteRepository compteRepository;
@Autowired
private JavaMailSender mailSender;
@Autowired
FormationsRepository formRepository;
@Autowired
CompetencesRepository competencesRepository;
@Autowired
FormationsRepository formationsRepository;
@Autowired
Demande_emploiRepository demande_emploiRepository;

@Autowired
ExperiencesRepository experiencesRepository;
@Autowired
CvRepository cvRepository;
	public void saveCompte(Compte compte,String siteURL) throws UnsupportedEncodingException, MessagingException  {
		CV cv = new CV();
		FileDb fileDb = new FileDb();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    
	String encodedPassword = passwordEncoder.encode(compte.getPassword());
	String randomCode = RandomString.make(64);
	compte.setPassword(encodedPassword);
	compte.setActive(false);
	compte.setVerificationCode(randomCode);
	compte.setNom(compte.getNom());
	compte.setPrenom(compte.getPrenom());
	compte.setAdresse(compte.getAdresse());
	compte.setDate_nais(compte.getDate_nais());
	compte.setSexe(compte.getSexe());
	compte.setTel(compte.getTel());
	compte.setType(compte.getType());
	compte.setCv(cv);
	cvRepository.save(cv);
	compteRepository.save(compte);
	sendVerificationEmail(compte, siteURL);
	
	}
	public Demande_emploi saveDemande_emploi(Compte c1,Offre of, Demande_emploi dem) {
		dem.setCom(c1);
		of.setListDemande(dem);
		return demande_emploiRepository.save(dem);
	}
	public Competences saveCompetences(Compte c,Competences competence) {
	
	c.getCv().setCompetence(competence);
	return competencesRepository.save(competence);
	}
	public Experiences  saveExperiences(Compte c,Experiences experience)
	{
		c.getCv().setExperience(experience);
		return experiencesRepository.save(experience);
		
	}
	public Formations saveFormation( Compte c,Formations formation)
	{
		c.getCv().setFormation(formation);
		return formationsRepository.save(formation);
	}
	
	public Compte findByEmailAndPassword(String email,String password) {
		// TODO Auto-generated method stub
		return compteRepository.findByEmailAndPassword(email,password);}

	public Compte compteExist(String email) {
		return compteRepository.findByEmail(email);
	}
	Compte compte;
	public Compte findByType(String type) {
		// TODO Auto-generated method stub
		return compteRepository.findByType(compte.getType());
	}
	
	public void saveFormations(Formations formations) {
		// TODO Auto-generated method stub
		
	}
	public void updateResetPasswordToken(String token, String email) throws AccountNotFoundException {

        Compte compte = compteRepository.findByEmail(email);

        if (compte != null) {

            compte.setResetPasswordToken(token);

            compteRepository.save(compte);

        } else {

            throw new AccountNotFoundException ("Could not find any customer with the email " + email);

        }

    }

     

    public Compte getByResetPasswordToken(String token) {

        return compteRepository.findByResetPasswordToken(token);

    }

     

    public void updatePassword(Compte compte, String newPassword) {

        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        String encodedPassword = passwordEncoder.encode(newPassword);

        compte.setPassword(encodedPassword);

         

        compte.setResetPasswordToken(null);

        compteRepository.save(compte);

    }
    public void sendVerificationEmail(Compte user, String siteURL)
	        throws MessagingException, UnsupportedEncodingException {
	    String toAddress = user.getEmail();
	    String fromAddress = "amjedmh111@gmail.com";
	    String senderName = "JOBTUNE";
	    String subject = "Please verify your registration";
	    String content = "Dear [[name]],<br>"
	            + "Please click the link below to verify your registration:<br>"
	            + "<h3><a href=\"[[URL]]\" target=\"_self\">VERIFY</a></h3>"
	            + "Thank you,<br>"
	            + "Your company name.";
	     
	    MimeMessage message = mailSender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	     
	    helper.setFrom(fromAddress, senderName);
	    helper.setTo(toAddress);
	    helper.setSubject(subject);
	     
	    content = content.replace("[[name]]", user.getNom());
	    String verifyURL = siteURL + "/verify?code=" + user.getVerificationCode();
	     
	    content = content.replace("[[URL]]", verifyURL);
	     
	    helper.setText(content, true);
	     
	    mailSender.send(message);
	     
	}
    public boolean verify(String verificationCode) {
        Compte user = compteRepository.findByVerificationCode(verificationCode);
         
        if (user == null || user.getActive()) {
            return false;
        } else {
            user.setVerificationCode(null);
            user.setActive(true);
            compteRepository.save(user);
             
            return true;
        }
         
    }
	
}
