package com.example.dao;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.entities.Compte;
import com.example.entities.Offre;

import org.springframework.data.jpa.repository.query.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
@Repository
@Transactional
public interface CompteRepository extends JpaRepository<Compte, Integer> {
Compte findByType(String type);
public Compte findByEmail(String email);
public Compte findByResetPasswordToken(String token);
Compte findByEmailAndPassword(String name,String password);
@Query("Select p from Compte p where p.id = :x")
public Compte chercherById(@Param("x")int mc);
@Query("SELECT u FROM Compte u WHERE u.verificationCode = ?1")
public Compte findByVerificationCode(String code);
@Query("Select p from Compte p where p.email != :x AND p.type = :t")
public List<Compte> chercherallcompte(@Param("x")String  mc,@Param("t")String  t);

}
