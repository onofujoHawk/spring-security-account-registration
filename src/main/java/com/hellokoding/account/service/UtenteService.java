package com.hellokoding.account.service;

import com.hellokoding.account.model.Utente;

public interface UtenteService 
{
	void save(Utente utente);
	
	Utente findByUsername(String username);
}
