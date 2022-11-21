package com.example.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
public class Competences {
	@Id 
	@Column(name = "id_competence")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id_competence;
	@Column(name = "nomcompp")
	private String nomcompp;
	private String mois_experience;
	private String niveau;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="cv_id",referencedColumnName="id_cv")
    @OnDelete(action = OnDeleteAction.CASCADE)
	private CV cv;
	public Competences(String nom, String mois_experience, String niveau,CV cv) {
		super();
		this.nomcompp = nom;
		this.mois_experience = mois_experience;
		this.niveau = niveau;
		this.cv=cv;
	}
	public Competences() {
		super();
	}
	public int getId_competence() {
		return id_competence;
	}
	public void setId_competence(int id_competence) {
		this.id_competence = id_competence;
	}
	
	public String getNomcompp() {
		return nomcompp;
	}
	public void setNomcompp(String nomcompp) {
		this.nomcompp = nomcompp;
	}
	public String getMois_experience() {
		return mois_experience;
	}
	public void setMois_experience(String mois_experience) {
		this.mois_experience = mois_experience;
	}
	public String getNiveau() {
		return niveau;
	}
	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}
	public CV getCv() {
		return cv;
	}
	public void setCv(CV cv) {
		this.cv = cv;
	}

}
