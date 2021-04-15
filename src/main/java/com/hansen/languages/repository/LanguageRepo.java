package com.hansen.languages.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.hansen.languages.models.Language;

public interface LanguageRepo extends CrudRepository<Language, Long> {
	
	List<Language> findAll();

}
