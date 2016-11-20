package com.hellokoding.account.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="ruolo")
public class Ruolo 
{
	/**
	 * @return the id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() 
	{
		return id;
	}
	
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) 
	{
		this.id = id;
	}
	
	/**
	 * @return the nome
	 */
	public String getNome() 
	{
		return nome;
	}
	
	/**
	 * @param nome the nome to set
	 */
	public void setNome(String nome) 
	{
		this.nome = nome;
	}
	
	/**
	 * @return the utenti
	 */
	@ManyToMany(mappedBy = "ruoli")
	public Set<Utente> getUtenti() 
	{
		return utenti;
	}
	
	/**
	 * @param utenti the utenti to set
	 */
	public void setUtenti(Set<Utente> utenti) 
	{
		this.utenti = utenti;
	}
	
	private Long id;
	private String nome;
	private Set<Utente> utenti;
}
