package com.hansen.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.hansen.languages.models.Language;
import com.hansen.languages.repository.LanguageRepo;

@Service
public class LanguageService {
	
	private final LanguageRepo lRepo;
	
	public LanguageService(LanguageRepo languageRepo) {
		this.lRepo = languageRepo;
	}
	
	public List<Language> getAllLanguages() {
		return this.lRepo.findAll();
	}
	
	public Language createLanguage(Language language) {
		return this.lRepo.save(language);
	}
	
	public Language getById(Long id) {
		Optional<Language> optionalLanguage = this.lRepo.findById(id);
		if (optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		}
		return null;
	}
	
	public Language updateLanguage(Long id, String name, String creator, String currentVersion) {
		Language toUpdate = this.lRepo.findById(id).orElse(null);
		if (toUpdate == null) {
			return null;
		} else {
			toUpdate.setName(name);
			toUpdate.setCreator(creator);
			toUpdate.setCurrentVersion(currentVersion);
			return this.lRepo.save(toUpdate);
		}
	}
	
	public Language updateLanguage(Language language) {
		return this.lRepo.save(language);
	}
	
	public void deleteLanguage(Long id) {
		this.lRepo.deleteById(id);
	}
	
	
}
