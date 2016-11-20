package com.hellokoding.account.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public class SecurityServiceImpl implements SecurityService 
{
	public String findLoggedInUsername()
	{
		Object detailsUtente = SecurityContextHolder.getContext().getAuthentication().getDetails();
		if (detailsUtente instanceof UserDetails)
		{
			return ((UserDetails)detailsUtente).getUsername();
		}
		return null;
	}
	
	//dopo memorizzazione utente, viene autenticato, se successo = autologin, altrimenti no
	public void autologin(String username, String password)
	{
		UserDetails detailsUtente = userDetailsService.loadUserByUsername(username);
		UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(detailsUtente, password, detailsUtente.getAuthorities());
		authenticationManager.authenticate(usernamePasswordAuthenticationToken);
		//se dopo il salvataggio, è andato con successo allora autologin
		if (usernamePasswordAuthenticationToken.isAuthenticated())
		{
			SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
			logger.debug(String.format("Auto login %s succesfully!", username));
		}
	}
	
	@Autowired
	private AuthenticationManager authenticationManager;
	@Autowired
	private UserDetailsService userDetailsService;
	private static final Logger logger = LoggerFactory.getLogger(SecurityServiceImpl.class);
	
}
