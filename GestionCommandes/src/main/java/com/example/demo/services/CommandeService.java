package com.example.demo.services;


import java.util.Collection;

import com.example.demo.models.Commande;

public interface CommandeService {
public Collection<Commande> findAll();
public Commande findone(String id);
public Commande save(Commande commande);
public void delete(String id);
}
