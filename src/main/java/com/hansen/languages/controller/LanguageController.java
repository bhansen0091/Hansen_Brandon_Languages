package com.hansen.languages.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hansen.languages.models.Language;
import com.hansen.languages.services.LanguageService;

@Controller
@RequestMapping("/languages")
public class LanguageController {
	
	private final LanguageService lService;
	
	public LanguageController(LanguageService lService) {
		this.lService = lService;
	}

	@RequestMapping("")
	public String index(Model viewModel) {
		viewModel.addAttribute("allLanguages", this.lService.getAllLanguages());
		return "index.jsp";
	}
	
	// displays the creation form
	@RequestMapping("/add")
	public String addLanguage(@ModelAttribute("language") Language language) {
		return "create.jsp";
	}
	
	// processes the creation data and redirects back to the creation page if invalid or to index on success
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(@Valid @ModelAttribute("language") Language language,
			BindingResult result) {
		
		if (result.hasErrors()) {
			return "create.jsp";
		} else {
			this.lService.createLanguage(language);
			return "redirect:/";
		}
		
	}
	
	// show individual
	@RequestMapping(value = "/{id}")
	public String show(@PathVariable("id") Long id, Model viewModel) {
		Language sLanguage = this.lService.getById(id);
		viewModel.addAttribute("sLanguage", sLanguage);
		return "show.jsp";
	}
	
	// displays the edit form 
	@RequestMapping(value = "/{id}/edit")
	public String  edit(@PathVariable("id") Long id, Model model) {
		Language language = this.lService.getById(id);
		model.addAttribute("language", language);
		return "edit.jsp";
	}
	
	// processes the data and redirects back to the edit page if invalid or to index on success
	@RequestMapping(value = "/{id}/update", method=RequestMethod.POST)
	public String update(@Valid @ModelAttribute("language") Language language,
			BindingResult result, @PathVariable("id") Long id) {
		if (result.hasErrors()) {
			return "edit.jsp";
		} else {
			System.out.println("else");
			this.lService.updateLanguage(language);
			return "redirect:/languages";
		}
	}
	
	// delete 
	@RequestMapping(value = "/{id}/delete")
	public String deleteLanguage(@PathVariable("id") Long id) {
		this.lService.deleteLanguage(id);
		return "redirect:/languages";
	}
	
	
	
}
