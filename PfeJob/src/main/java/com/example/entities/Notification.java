package com.example.entities;
import java.util.List;

import javax.persistence.*;
@Entity
public class Notification {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	String text;
	int etat;
	@ManyToOne(fetch=FetchType.LAZY)
	Offre off;
	@ManyToOne(fetch=FetchType.LAZY)
	Compte compte;
	public Compte getCompte() {
		return compte;
	}
	public void setCompte(Compte compte) {
		this.compte = compte;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Notification(){
		super();
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getEtat() {
		return etat;
	}
	public void setEtat(int etat) {
		this.etat = etat;
	}
	public Offre getOff() {
		return off;
	}
	public void setOff(Offre off) {
		this.off = off;
	}
	public void setCompte(Demande_emploi demande_emploi) {
		// TODO Auto-generated method stub
		
	}
	
}
