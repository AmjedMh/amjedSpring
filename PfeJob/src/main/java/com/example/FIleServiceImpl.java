package com.example;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.dao.FileDbRepository;
import com.example.entities.FileDb;
import com.example.entities.FileResponse;

@Service
public class FIleServiceImpl{
	@Autowired
	FileDbRepository fileDbRepository;
	public FileDb uploadImage(MultipartFile file) throws IOException {
        FileDb fileDb = new FileDb();
        fileDb.setName(file.getOriginalFilename());
        fileDb.setName(file.getContentType());
        fileDb.setData(FileDbUtil.compressImage(file.getBytes()));
       return  fileDbRepository.save(fileDb);

    }
	

}
