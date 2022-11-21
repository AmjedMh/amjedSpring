package com.example.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
public class Experiences {
	@Id @GeneratedValue
private int id_experience;
private String nom_societe;
private String secteur_activite;
private String poste_occupee;
private String date_debut;
private String date_fin;
@ManyToOne(fetch=FetchType.LAZY)
@JoinColumn(name="cv_id",referencedColumnName="id_cv")
@OnDelete(action = OnDeleteAction.CASCADE)
private CV cv;
public Experiences(String nom_societe, String secteur_activite, String poste_occupee, String date_debut, String date_fin,CV cv) {
	super();
	this.nom_societe = nom_societe;
	this.secteur_activite = secteur_activite;
	this.poste_occupee = poste_occupee;
	this.date_debut = date_debut;
	this.date_fin = date_fin;
	this.cv=cv;
}
public Experiences() {
	super();
}
public int getId_experience() {
	return id_experience;
}
public void setId_experience(int id_experience) {
	this.id_experience = id_experience;
}
public String getNom_societe() {
	return nom_societe;
}
public void setNom_societe(String nom_societe) {
	this.nom_societe = nom_societe;
}
public String getSecteur_activite() {
	return secteur_activite;
}
public void setSecteur_activite(String secteur_activite) {
	this.secteur_activite = secteur_activite;
}
public String getPoste_occupee() {
	return poste_occupee;
}
public void setPoste_occupee(String poste_occupee) {
	this.poste_occupee = poste_occupee;
}
public String getDate_debut() {
	return date_debut;
}
public void setDate_debut(String date_debut) {
	this.date_debut = date_debut;
}
public String getDate_fin() {
	return date_fin;
}
public void setDate_fin(String date_fin) {
	this.date_fin = date_fin;
}
public CV getCv() {
	return cv;
}
public void setCv(CV cv) {
	this.cv = cv;
}

}
