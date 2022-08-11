package com.example.demo.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Commande;
@Repository("commandeRepository")
public interface CommandeRepository extends MongoRepository<Commande,String> {

}
