package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.entities.Demande_emploi;
import com.example.entities.Offre;

@Repository
@Transactional
public interface Demande_emploiRepository extends JpaRepository<Demande_emploi,Integer> {
	@Query("Select p from Demande_emploi p ")
	public List<Demande_emploi> getall();
	 @Modifying
	    @Query("UPDATE Demande_emploi c SET c.etat = :etat"
	    		+ " WHERE c.id_demande = :id")
	    int updateDemande(@Param("etat") int etat, @Param("id") int id);
}
