package com.example.demo.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.models.Client;
import com.example.demo.models.Commande;
import com.example.demo.models.Produit;
import com.example.demo.services.CommandeService;

@Controller
@RequestMapping("Commande")
public class CommandeController {
	@Autowired
	private CommandeService commandeService;
	
	@RequestMapping(method= RequestMethod.GET)
	public String index(ModelMap modelMap) {
		 modelMap.put("commandes",commandeService.findAll());
		 System.out.print("---------------------------------------");
		 System.out.print(commandeService.findAll());
		 System.out.print(modelMap.getAttribute("commandes"));
		 int size=commandeService.findAll().size();
		 modelMap.put("size", size);
		 System.out.print("---------------------------------------");
		 return "Commande/index";
		
	}
	@RequestMapping(value="Commande_Inf/{id}",method= RequestMethod.GET)
	public String CommandeInf(ModelMap modelMap,@PathVariable String id) {
		Commande commande=commandeService.findone(id);
		System.out.println(commande.getDate());
		modelMap.put("commandeInf", commandeService.findone(id));
		 return "Commande/Commande_Inf";
		
	}
	
	@RequestMapping(value = "addCommande",method= RequestMethod.GET)
	public String add(ModelMap modelMap) {
		 modelMap.put("commande", new Commande()); 
		 modelMap.put("produits", new Produit());
		 modelMap.put("Client", new Client());
		
		 return "Commande/addCommande";
		
	}
	@RequestMapping(value = "addCommande",method= RequestMethod.POST)
	public String add(@ModelAttribute("Client") Client client, @ModelAttribute("commande") Commande commande,@ModelAttribute("produits") Produit produit) {
		 
		commande.setPrixT(produit.getPrix()*produit.getQuantite());
	    long millis = System.currentTimeMillis();  
	      
	    // creating a new object of the class Date  
	    java.util.Date date = new java.util.Date(millis);      
	    System.out.println(date.toString());  
	    commande.setDate(date.toString());
		commande.setProduits(produit);
		 commande.setClient(client);
		 commandeService.save(commande);
		 
		 
	 System.out.print(client.getAdresse()+"--77777777777777777777------------------------");

		 return "redirect:/Commande";}
	
		 @RequestMapping(value = "Delete/{id}",method= RequestMethod.GET)
			public String Delete(@PathVariable String id) {
				commandeService.delete(id);
				 System.out.print("---------------------------------------");
				 return "redirect:/Commande";
				
		
	}
	
		 @RequestMapping(value = "Update/{id}",method= RequestMethod.GET)
			public String Update(ModelMap modelMap,@PathVariable String id) {
			 	 modelMap.put("CommandeUp", commandeService.findone(id));
				 modelMap.put("commandee", new Commande()); 
				 modelMap.put("produits", new Produit());
				 modelMap.put("Client", new Client());
				
				 return "Commande/UpdateCommande";
				
			}
		
		 @RequestMapping(value = "Update/{id}",method= RequestMethod.POST)
			public String Update(@PathVariable String id,@ModelAttribute("Client") Client client, @ModelAttribute("commandee") Commande commande,@ModelAttribute("produits") Produit produit) {
				 
			    commande.setPrixT(produit.getPrix()*produit.getQuantite());
				commande.setProduits(produit);
				commande.set_id(id);
				commande.setClient(client);
				commandeService.delete(id);
				commandeService.save(commande);
				 return "redirect:/Commande";
				 
		 }

}
