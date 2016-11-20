package com.hellokoding.account.service;

import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.hellokoding.account.model.Ruolo;
import com.hellokoding.account.model.Utente;
import com.hellokoding.account.repository.RuoloRepository;
import com.hellokoding.account.repository.UtenteRepository;

@Service
public class UtenteServiceImpl implements UtenteService
{
	public void save(Utente utente)
	{
		utente.setPassword(bCryptPasswordEncoder.encode(utente.getPassword()));
		utente.setRuoli(new HashSet<Ruolo>(ruoloRepository.findAll()));
		utenteRepository.save(utente);
	}
	
	public Utente findByUsername(String username)
	{
		return utenteRepository.findByUsername(username);
	}
	
	@Autowired
	private UtenteRepository utenteRepository;
	@Autowired
	private RuoloRepository ruoloRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
}
