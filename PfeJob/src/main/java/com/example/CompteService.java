package com.example;

import java.io.UnsupportedEncodingException;
import java.util.Optional;

import javax.mail.MessagingException;

import org.springframework.web.multipart.MultipartFile;

import com.example.entities.Compte;
import com.example.entities.Formations;
import com.example.entities.Offre;

public interface CompteService {
public void saveCompte(Compte compte,String siteURL) throws UnsupportedEncodingException, MessagingException;
public Compte compteExist(String email);
Compte findByEmailAndPassword(String email, String password);
public void saveFormations(Formations formations);
}
