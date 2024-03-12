package com.customer.controller.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.customer.controller.entity.Client;
import com.customer.controller.service.ClientService;


public class ClientController {
	
	@Autowired
	ClientService clientService;
	
	@GetMapping("/addClient")
    public String addClient() {
        return "addClient";
    }
    
    @PostMapping("/insertClient")
    public String insertClient(@ModelAttribute("insertClient") Client client) {
        clientService.addClient(client);
        return "redirect:/clientReport";
    }
    
    @GetMapping("/clientReport")
    public String loadClient(Model model) {
        model.addAttribute("client", clientService.getAllClient());
        model.addAttribute("title", "Client Report");
        return "ClientReport";
    }
    
    @GetMapping("/editClient/{id}")
    public String loadEditForm(@PathVariable(value = "id") int id, Model model) {
        Client client = clientService.getById(id);
        model.addAttribute("client", client);
        model.addAttribute("title", "Edit Client");
        return "EditClient";
    }
    
    @PostMapping("/editClient/updateClient")
    public String updateClient(@ModelAttribute("client") Client client) {
        clientService.updateClient(client);
        return "redirect:/clientReport";
    }
    
    @GetMapping("/deleteClient/{id}")
    public String deleteClient(@PathVariable int id) {
        clientService.deleteClient(id);
        return "redirect:/clientReport";
    }

}
