package com.example;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.dao.CompetencesRepository;
import com.example.dao.CvRepository;
import com.example.entities.CV;
import com.example.entities.Competences;

public class CvServiceImpl implements CvService {
@Autowired
CvRepository CvRepository;
@Autowired
CompetencesRepository competencesRepository;
	public void savecv(CV cv) {
		// TODO Auto-generated method stub	}
       
}

	public void savecomp(Competences com) {
		// TODO Auto-generated method stub
		
	}
	}
