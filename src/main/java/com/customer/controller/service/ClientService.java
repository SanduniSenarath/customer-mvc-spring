package com.customer.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.customer.controller.dao.ClientDao;
import com.customer.controller.entity.Client;

@Service
public class ClientService {
	
	@Autowired
	ClientDao clientDao;
	
	
	public void addClient(Client client)
	{
		clientDao.addClient(client);
	}
	
	public List<Client> getAllClient()
	{
		return clientDao.getAllClient();
	}
	
	
	public Client getById(int id)
	{
		return clientDao.getClientById(id);
	}
	
	
	public void updateClient(Client client)
	{
		clientDao.updateClient(client);
	}
	
	
	public void deleteClient(int id)
	{
		clientDao.deleteClient(id);
	}

}
