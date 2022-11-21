package com.example.entities;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
public class CV {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
private int id_cv;
	
	@OneToOne(mappedBy = "cv" , optional = false)
	Compte compte;
	@OneToMany(mappedBy = "cv")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private List<Competences> competence =new  ArrayList<Competences>();
	@OneToMany(mappedBy = "cv")
	private List<Formations> formation =new  ArrayList<Formations>();
	@OneToMany(mappedBy = "cv")
	private List<Experiences> experience =new  ArrayList<Experiences>();
	public List<Competences> getCompetence() {
		return competence;
	}

	public void setCompetence(Competences competence) {
		competence.setCv(this);
		this.competence.add(competence);
	}

	public List<Formations> getFormation() {
		return formation;
	}

	public void setFormation(Formations formation) {
		 formation.setCv(this);
		 this.formation.add(formation);
	}

	public List<Experiences> getExperience() {
		return experience;
	}

	public void setExperience(Experiences experience) {
		experience.setCv(this);
		this.experience.add(experience);
	}

	public CV() {
		super();
	}

	public int getId_cv() {
		return id_cv;
	}

	public void setId_cv(int id_cv) {
		this.id_cv = id_cv;
	}

	public Compte getCompte() {
		return compte;
	}

	public void setCompte(Compte compte) {
		this.compte = compte;
	}
	
	
}
