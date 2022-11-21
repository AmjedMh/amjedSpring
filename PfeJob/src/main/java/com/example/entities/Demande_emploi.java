package com.example.entities;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;


@Entity
public class Demande_emploi implements Serializable{
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id_demande;
private String lettre_motivation;
private String email;
private int etat;
@ManyToOne(fetch=FetchType.LAZY)
private Offre off;
@ManyToOne
private Compte com;

public Offre getOff() {
	return off;
}
public void setOff(Offre off) {
	this.off = off;
}
public Compte getCom() {
	return com;
}
public void setCom(Compte com) {
	this.com = com;
}
public int getId_demande() {
	return id_demande;
}
public void setId_demande(int id_demande) {
	this.id_demande = id_demande;
}
public String getLettre_motivation() {
	return lettre_motivation;
}
public void setLettre_motivation(String lettre_motivation) {
	this.lettre_motivation = lettre_motivation;
}

public int getEtat() {
	return etat;
}
public void setEtat(int etat) {
	this.etat = etat;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}


public Demande_emploi() {
	super();
}

}
