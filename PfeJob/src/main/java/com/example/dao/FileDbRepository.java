package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entities.FileDb;

public interface FileDbRepository extends JpaRepository<FileDb, String> {

}
