package com.hellokoding.account.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hellokoding.account.model.Utente;
import com.hellokoding.account.service.SecurityService;
import com.hellokoding.account.service.UtenteService;
import com.hellokoding.account.validator.AccountValidator;

@Controller
public class AccountController 
{
	@RequestMapping(value="/registration")
	public String registration(Model model)
	{
		model.addAttribute("userForm", new Utente());
		return "registration";
	}
	
	//alla request dopo il submit, si controlla che i campi del model non contengano errori
	//altrimenti ritorna alla form di registrazione
	//oppure salva i dati e fai autologin alla welcome page.
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") Utente userForm, BindingResult bindingResult, Model model)
	{
		accountValidator.validate(userForm, bindingResult);
		if (bindingResult.hasErrors())
		{
			return "registration";
		}
		utenteService.save(userForm);
		//dopo la creazione del proprio account fa autologin è da accesso alla welcome page
		securityService.autologin(userForm.getUsername(), userForm.getConfermaPassword());
		return "redirect:/welcome";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model, String error, String logout)
	{
		if (error != null)
		{
			model.addAttribute("error","Your username and password is invalid.");
		}
		if (logout != null)
		{
			model.addAttribute("message", "You have successfully logged out.");
		}
		return "login";
	}
	
	@RequestMapping(value={"/", "/welcome"}, method=RequestMethod.GET)
	public String welcome(Model model)
	{
		return "welcome";
	}
	
	@RequestMapping("/403page")
	public String get403denied(Model model) 
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("error", "Access denied for user "+auth.getName());
		return "redirect:/403page";
	}
	
	@Autowired
	private UtenteService utenteService;
	@Autowired
	private SecurityService securityService;
	@Autowired
	private AccountValidator accountValidator;
}
