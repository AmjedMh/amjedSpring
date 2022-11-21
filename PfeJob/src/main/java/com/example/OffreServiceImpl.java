package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.CompteRepository;
import com.example.dao.OffreRepository;
import com.example.entities.Compte;
import com.example.entities.Offre;
@Service
@Transactional
public class OffreServiceImpl implements OffreService {
	@Autowired
OffreRepository offreRepository;
	@Autowired
CompteRepository compteRepository;
	private Compte compte=new Compte();
	public void saveOffre(Offre offre, Compte c) {
		offre.setTitre(offre.getTitre());
		offre.setSalaire(offre.getSalaire());
		offre.setPoste(offre.getPoste());
		offre.setDescription(offre.getDescription());
		offre.setDate_expiration(offre.getDate_expiration());
		offre.setCategories(offre.getCategories());
		offre.setCompte(c);
		offreRepository.save(offre);

}
	
	public Offre offreExist(long id) {
		// TODO Auto-generated method stub
		return offreRepository.findById(id).get();
	}	
}
