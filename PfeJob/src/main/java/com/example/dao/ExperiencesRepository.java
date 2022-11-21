package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.entities.Experiences;
import com.example.entities.Offre;
@Repository
@Transactional
public interface ExperiencesRepository extends JpaRepository<Experiences,Integer> {
    @Modifying
    @Query("UPDATE Experiences c SET c.nom_societe = :nom"
    		+ " , c.secteur_activite = :sec , c.poste_occupee = :po , c.date_debut = :dd , "
    		+ " c.date_fin = :df WHERE c.id_experience = :id")
    int updateExperience(@Param("nom") String nom, @Param("sec") String sec , @Param("po") String po
    		, @Param("dd") String datedebu, @Param("df") String datefin, @Param("id") int id);
}
