package com.hellokoding.account.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="utente")
public class Utente 
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
	 * @return the username
	 */
	public String getUsername() 
	{
		return username;
	}
	
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) 
	{
		this.username = username;
	}
	
	/**
	 * @return the password
	 */
	public String getPassword() 
	{
		return password;
	}
	
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) 
	{
		this.password = password;
	}
	
	/**
	 * @return the confermaPassword
	 */
	@Transient
	public String getConfermaPassword() 
	{
		return confermaPassword;
	}
	
	/**
	 * @param confermaPassword the confermaPassword to set
	 */
	public void setConfermaPassword(String confermaPassword)
	{
		this.confermaPassword = confermaPassword;
	}
	
	/**
	 * @return the ruoli
	 */
	@ManyToMany
    @JoinTable(name = "utente_ruolo", joinColumns = @JoinColumn(name = "utente_id"), inverseJoinColumns = @JoinColumn(name = "ruolo_id"))
	public Set<Ruolo> getRuoli()
	{
		return ruoli;
	}
	
	/**
	 * @param ruoli the ruoli to set
	 */
	public void setRuoli(Set<Ruolo> ruoli) 
	{
		this.ruoli = ruoli;
	}
	
	private Long id;
	private String username;
	private String password;
	private String confermaPassword;
	private Set<Ruolo> ruoli;
}
