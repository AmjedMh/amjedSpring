package com.example.dao;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.*;

import com.example.entities.Offre;
@Repository
@Transactional
public interface OffreRepository extends JpaRepository<Offre, Long> {
	@Query("Select p from Offre p where p.titre like :x")
	public Page<Offre> chercher(@Param("x")String mc,Pageable pageable);
	@Query("Select p from Offre p where p.lieu like :x")
	public List<Offre> chercherlieu(@Param("x")String mc);
	@Query("Select p from Offre p where p.titre like :x")
	public List<Offre> cherchertitle(@Param("x")String mc);
	@Query("Select p from Offre p where p.categories like :x")
	public List<Offre> cherchercategorie(@Param("x")String mc);
	@Query("Select p from Offre p ")
	public List<Offre> getall();
}

