package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.entities.Competences;

@Repository
@Transactional
public interface CompetencesRepository extends JpaRepository<Competences,Integer> {
	@Modifying
    @Query("UPDATE Competences c SET c.nomcompp = :nom"
    		+ " , c.mois_experience = :moexp , c.niveau = :nv  "
    		+ " WHERE c.id_competence = :id")
    int updateCompetence(@Param("nom") String nom, @Param("moexp") String moexp , @Param("nv") String nv
    		, @Param("id") int id);
}
