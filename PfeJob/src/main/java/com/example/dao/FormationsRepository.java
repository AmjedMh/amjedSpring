package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.entities.Formations;
@Repository
@Transactional
public interface FormationsRepository extends JpaRepository<Formations,Integer> {
	@Modifying
    @Query("UPDATE Formations c SET c.nom_etablissement = :nom"
    		+ " , c.diplome_obtenu = :diplom , c.date_diplome = :datediplom  "
    		+ " WHERE c.id_formation = :id")
    int updateFormation(@Param("nom") String nometab, @Param("diplom") String dip , @Param("datediplom") String date_dip
    		, @Param("id") int id);
}
