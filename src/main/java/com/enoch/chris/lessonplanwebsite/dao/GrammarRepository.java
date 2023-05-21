package com.enoch.chris.lessonplanwebsite.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.enoch.chris.lessonplanwebsite.entity.Grammar;

@Repository
public interface GrammarRepository extends JpaRepository<Grammar, Integer> {
	Optional<Grammar> findByGrammarPoint(String name); 




}