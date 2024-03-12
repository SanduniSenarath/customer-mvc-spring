package com.customer.controller.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.NaturalId;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
@Entity
public class Client {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "client_sequence")
    @SequenceGenerator(name = "client_sequence", sequenceName = "CLIENT_SEQ", allocationSize = 1)
    int id;
	private String nic;
    private String name;
    private String address;
    private Long mobile;
    
	/*public Client(int id, String nic, String name, String address, Long mobile) {
		super();
		this.id = id;
		this.nic = nic;
		this.name = name;
		this.address = address;
		this.mobile = mobile;
	}*/
	
    
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Long getMobile() {
		return mobile;
	}
	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}
	
}
