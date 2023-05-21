package com.enoch.chris.lessonplanwebsite.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.enoch.chris.lessonplanwebsite.entity.Purchase;
import com.enoch.chris.lessonplanwebsite.entity.User;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Integer> {
	List<Purchase> findByUser(User user);
	
}