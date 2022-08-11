package com.example.demo.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;


public class Produit {
	@Id
	private int p_ID;
	@Field
	private String Pnom;
	@Field
	private float prix;
	@Field
	private int quantite;
	public Produit(int p_ID, String Pnom, float prix, int quantite) {
		super();
		this.p_ID = p_ID;
		this.Pnom = Pnom;
		this.prix = prix;
		this.quantite= quantite;
	}
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getP_ID() {
		return this.p_ID;
	}
	public void setP_ID(int p_ID) {
		this.p_ID = p_ID;
	}
	public String getPnom() {
		return Pnom;
	}
	public void setPnom(String pnom) {
		Pnom = pnom;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public float getPrix() {
		return this.prix;
	}
	public void setPrix(float prix) {
		this.prix = prix;
	}

}
