package com.example.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
public class Formations {
@Id @GeneratedValue
private int id_formation;
private String nom_etablissement;
private String diplome_obtenu;
private String date_diplome;
@ManyToOne
@JoinColumn(name="cv_id",referencedColumnName="id_cv")
@OnDelete(action = OnDeleteAction.CASCADE)
private CV cv;
public Formations(String nom_etablissement, String diplome_obtenu, String date_diplome,CV cv) {
	super();
	this.nom_etablissement = nom_etablissement;
	this.diplome_obtenu = diplome_obtenu;
	this.date_diplome = date_diplome;
	this.cv=cv;
}
public Formations() {
	super();
}
public int getId_formation() {
	return id_formation;
}
public void setId_formation(int id_formation) {
	this.id_formation = id_formation;
}
public String getNom_etablissement() {
	return nom_etablissement;
}
public void setNom_etablissement(String nom_etablissement) {
	this.nom_etablissement = nom_etablissement;
}
public String getDiplome_obtenu() {
	return diplome_obtenu;
}
public void setDiplome_obtenu(String diplome_obtenu) {
	this.diplome_obtenu = diplome_obtenu;
}
public String getDate_diplome() {
	return date_diplome;
}
public void setDate_diplome(String date_diplome) {
	this.date_diplome = date_diplome;
}

public CV getCv() {
	return cv;
}
public void setCv(CV cv) {
	this.cv = cv;
}

}
