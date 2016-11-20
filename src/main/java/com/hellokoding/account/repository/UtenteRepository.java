package com.hellokoding.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hellokoding.account.model.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Long> 
{
	Utente findByUsername(String username);
}
