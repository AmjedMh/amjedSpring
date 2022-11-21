package com.example;

import java.util.Optional;

import com.example.entities.Compte;
import com.example.entities.Offre;

public interface OffreService {
	public void saveOffre(Offre offre , Compte c);
	public Offre offreExist(long id);
}
