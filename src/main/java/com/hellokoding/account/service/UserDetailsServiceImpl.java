package com.hellokoding.account.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hellokoding.account.model.Ruolo;
import com.hellokoding.account.model.Utente;
import com.hellokoding.account.repository.UtenteRepository;

@Component
public class UserDetailsServiceImpl implements UserDetailsService 
{
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException 
	{
		Utente utente = utenteRepository.findByUsername(username);
		Set<GrantedAuthority> grantedAuthorities = new HashSet<GrantedAuthority>();
		for (Ruolo ruolo : utente.getRuoli())
		{
			grantedAuthorities.add(new SimpleGrantedAuthority(ruolo.getNome()));
		}
		return new User(utente.getUsername(), utente.getPassword(), grantedAuthorities);
	}
	
	@Autowired
	private UtenteRepository utenteRepository;

}
