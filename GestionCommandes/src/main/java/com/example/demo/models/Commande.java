package com.example.demo.models;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;
@Document(collection="Gestion Commandes")
public class Commande {

	@Id
	private String _id;
	@Field
	private Produit produits;
	@Field
	private Client Client;
	@Field
	private String date;
	@Field
	private double PrixT;
	public Commande() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Commande(Produit produit, Client client, String date, double PrixT) {
		super();
		this.produits = produit;
		this.Client = client;
		this.date = date;
		this.PrixT = PrixT;
	}
	public Commande( String Date, double prixTotal) {
		super();
		date = Date;
		PrixT = prixTotal;
	}
	public Commande(String _id,Produit produit, Client client, String date, double PrixT) {
		super();
		this._id=_id;
		this.produits = produit;
		this.Client = client;
		this.date = date;
		this.PrixT = PrixT;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String Date) {
		date = Date;
	}
	
	public Client getClient() {
		return Client;
	}
	public void setClient(Client client) {
		this.Client = client;
	}
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public Produit getProduits() {
		return produits;
	}
	public void setProduits(Produit produits) {
		this.produits = produits;
	}
	public double getPrixT() {
		return PrixT;
	}
	public void setPrixT(double prixT) {
		PrixT = prixT;
	}
	
}
