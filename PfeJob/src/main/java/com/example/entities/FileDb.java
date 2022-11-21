package com.example.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.boot.rsocket.context.LocalRSocketServerPort;

@Entity
@Table(name = "file")
public class FileDb implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7852089355430348077L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;
	
	private String name;
	
	private String type;
	
	@Lob
	private byte[] data;
	@OneToOne
	private Compte compte;
	public FileDb() {
		
	}

	public FileDb(String id, String name, String type, byte[] data) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.data = data;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}
	
	
}
