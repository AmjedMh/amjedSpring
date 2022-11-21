package com.example.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.mail.Multipart;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.web.multipart.MultipartFile;
@Entity
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Compte implements Serializable {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String email;
	private String verificationCode;
	private String nom;
	private String prenom;
	private String tel;
	private String password;
	private String resetPasswordToken;
	private String sexe;
	private String date_nais;
	private String adresse;
	private String type;
	private Boolean active;
    private String file;
    
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public void setOffre(List<Offre> offre) {
		this.offre = offre;
	}
	public void setDemande_emploi(List<Demande_emploi> demande_emploi) {
		this.demande_emploi = demande_emploi;
	}
	public void setNotification(List<Notification> notification) {
		this.notification = notification;
	}
	@OneToMany(mappedBy = "compte",cascade=CascadeType.ALL)
    private List<Offre> offre ;
	@OneToOne(fetch = FetchType.LAZY)
    private CV cv ;
    
	public List<Offre> getOffre() {
		return offre;
	}
	public void setOffre(Offre offre) {
		offre.setCompte(this);
		this.offre.add(offre);
	}
	public CV getCv() {
		return cv;
	}
	public void setCv(CV cv) {
		this.cv = cv;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getDate_nais() {
		return date_nais;
	}
	public void setDate_nais(String date_nais) {
		this.date_nais = date_nais;
	}

	public Compte() {
		super();
	}
	@OneToMany(mappedBy = "com",cascade=CascadeType.ALL)
    private List<Demande_emploi> demande_emploi ;
    
	public List<Demande_emploi> getDemande_emploi() {
		return demande_emploi;
	}
	public void setDemande_emploi(Demande_emploi demande) {
		demande.setCom(this);
		this.demande_emploi.add(demande);
	}
	 public Compte(Compte compte) {
	        this.active = compte.getActive();
	        this.email = compte.getEmail();
	       
	        this.nom = compte.getNom();
	        this.tel =compte.getTel();
	        this.id = compte.getId();
	        this.password = compte.getPassword();
	        this.adresse=compte.getAdresse();
	        this.date_nais=compte.getDate_nais();
	        this.type=compte.getType();
	        this.sexe=compte.getSexe();
	        this.prenom=compte.getPrenom();
	    }
	 @OneToMany(mappedBy = "compte",cascade=CascadeType.ALL)
	    private List<Notification> notification ;

	public List<Notification> getNotification() {
		return notification;
	}
	public void setNotification(Notification notif) {
		notif.setCompte(this);
		this.notification.add(notif);
	}
	public String getResetPasswordToken() {
		return resetPasswordToken;
	}
	public void setResetPasswordToken(String resetPasswordToken) {
		this.resetPasswordToken = resetPasswordToken;
	}
	public String getVerificationCode() {
		return verificationCode;
	}
	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
	}
	 
}



