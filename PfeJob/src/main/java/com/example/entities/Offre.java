package com.example.entities;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.ForeignKey;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
public class Offre implements Serializable {
@Id @GeneratedValue(strategy=GenerationType.AUTO)
public  Long id_offre;
private String titre;
private String lieu;
private String poste;
private String description;
private int salaire;
private String categories;
private Date date_expiration;
@ManyToOne(fetch=FetchType.LAZY)
@JoinColumn(name="compte_id",referencedColumnName="id")
@OnDelete(action = OnDeleteAction.CASCADE)
private Compte compte;

public Long getId_offre(){
	return id_offre;
}
public void setId_offre(Long id_offre) {
	this.id_offre = id_offre;
}
public Compte  getCompte() {
	return compte;
}
public void setCompte(Compte compte) {
	this.compte = compte;
}
public String getTitre() {
	return titre;
}
public void setTitre(String titre) {
	this.titre = titre;
}
public String getPoste(){
	return poste;
}
public void setPoste(String poste) {
	this.poste = poste;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public int getSalaire() {
	return salaire;
}
public void setSalaire(int salaire) {
	this.salaire = salaire;
}
public String getCategories() {
	return categories;
}

public void setCategories(String categories) {
	this.categories = categories;
}
public String getLieu() {
	return lieu;
}
public void setLieu(String lieu) {
	this.lieu = lieu;
}
public Date getDate_expiration() {
	return date_expiration;
}
public void setDate_expiration(Date date_expiration) {
	this.date_expiration = date_expiration;
}
public Offre(String titre, String lieu, String poste, String description, int salaire, String categories,
		Date date_expiration, Compte compte) {
	super();
	this.titre = titre;
	this.lieu = lieu;
	this.poste = poste;
	this.description = description;
	this.salaire = salaire;
	this.categories = categories;
	this.date_expiration = date_expiration;
	this.compte = compte;
}
@OneToMany(mappedBy = "off",cascade=CascadeType.ALL)
private List<Demande_emploi> listDemande;

public List<Demande_emploi> getListDemande() {
	return listDemande;
}
public void setListDemande(Demande_emploi Demande) {
	Demande.setOff(this);
	this.listDemande.add(Demande) ;
}
public  Offre() {
	super();
}
@OneToMany (mappedBy = "off",cascade=CascadeType.ALL)
 
private List<Notification> notif;

public List<Notification> getNotif() {
	return notif;
}
public void setNotif(Notification n) {
	n.setOff(this);
	this.notif.add(n);
}


}

