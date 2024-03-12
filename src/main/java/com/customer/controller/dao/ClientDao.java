package com.customer.controller.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.customer.controller.entity.Client;


@Component
public class ClientDao {
    @Autowired
    HibernateTemplate hibernateTemplate;
    @Transactional
    public void addClient(Client client) {
        
        	hibernateTemplate.save(client);
       
        
    }

    public List<Client> getAllClient() {
        try {
            return hibernateTemplate.loadAll(Client.class);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("An error occurred while fetching clients");
        }
    }

    @Transactional
    public Client getClientById(int id) {
        return hibernateTemplate.get(Client.class, id);
    }

    @Transactional
    public void updateClient(Client client) {
        hibernateTemplate.update(client);
    }

    @Transactional
    public void deleteClient(int id) {
        hibernateTemplate.delete(hibernateTemplate.load(Client.class, id));
    }
}
