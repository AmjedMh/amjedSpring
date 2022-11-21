package com.example.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.entities.Notification;
import com.example.entities.Offre;
@Repository
@Transactional
public interface NotificationRepository extends JpaRepository<Notification,Integer> {
	@Query("Select p from Notification p where p.etat = :x AND p.compte.id = :id")
	public List<Notification> cherchernotification(@Param("x")int etat,@Param("id")int id);
	@Modifying
    @Query("UPDATE Notification c SET c.etat = :etat"
    		+ " WHERE c.compte.id = :id")
    int updatenotification(@Param("etat") int etat,  @Param("id") int id);
}
