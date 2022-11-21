package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.entities.CV;
public interface CvRepository extends JpaRepository<CV,Integer> {
}
