package com.example.demo.services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Commande;
import com.example.demo.repositories.CommandeRepository;

@Service("CommandeService")
public class CommandeServiceImpl implements CommandeService {
	@Autowired
	private CommandeRepository commandeRepository;
	@Override
	public Collection<Commande> findAll() {

		return commandeRepository.findAll();
	}

	@Override
	public Commande findone(String id) {
		
		return commandeRepository.findById(id).get();
	}

	@Override
	public Commande save(Commande commande) {
		
		return commandeRepository.save(commande);
	}

	@Override
	public void delete(String id) {
		commandeRepository.deleteById(id);
	}

}
