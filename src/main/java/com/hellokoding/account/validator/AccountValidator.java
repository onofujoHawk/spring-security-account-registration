package com.hellokoding.account.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.hellokoding.account.model.Utente;
import com.hellokoding.account.service.UtenteService;

@Component
public class AccountValidator implements Validator
{

	public boolean supports(Class<?> aClass)
	{
		return Utente.class.equals(aClass);
	}

	public void validate(Object o, Errors errors) 
	{
		Utente utente = (Utente) o;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
		if (utente.getUsername().length() < 6 || utente.getUsername().length() > 32)
		{
			errors.rejectValue("username", "Size.userForm.username");
		}
		if (utenteService.findByUsername(utente.getUsername()) != null)
		{
			errors.rejectValue("username", "Duplicate.userForm.username");
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (utente.getPassword().length() < 8 || utente.getPassword().length() > 32)
		{
			errors.rejectValue("password", "Size.userForm.password");
		}
		if (!utente.getConfermaPassword().equals(utente.getPassword()))
		{
			errors.rejectValue("confermaPassword", "Diff.userForm.confermaPassword");
		}
	}
	
	 @Autowired
	 private UtenteService utenteService;
}
