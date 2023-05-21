package com.enoch.chris.lessonplanwebsite.controller;

import java.time.LocalDateTime;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.enoch.chris.lessonplanwebsite.dao.PurchaseRepository;
import com.enoch.chris.lessonplanwebsite.dao.SubscriptionRepository;
import com.enoch.chris.lessonplanwebsite.entity.Subscription;
import com.enoch.chris.lessonplanwebsite.entity.User;
import com.enoch.chris.lessonplanwebsite.entity.utils.SubscriptionUtils;
import com.enoch.chris.lessonplanwebsite.service.SubscriptionService;

@Controller
public class UpgradeController {
	
	private SubscriptionRepository subcriptionRepository;
	private SubscriptionService subscriptionService;
	private PurchaseRepository purchaseRepository;
	
	@Autowired
	public UpgradeController(SubscriptionRepository subcriptionRepository, SubscriptionService subscriptionService
			,PurchaseRepository purchaseRepository) {
		this.subcriptionRepository = subcriptionRepository;
		this.subscriptionService = subscriptionService;
		this.purchaseRepository = purchaseRepository;
	}
	
	/**
	 * Displays a list of the subscriptions the user hasn't bought (nonActiveSubscriptions)
	 * ,followed by the subscriptions the user has bought (activeSubscriptions)
	 * @param theModel
	 * @param session
	 * @param request
	 * @return the name of the page to be rendered
	 */
	@GetMapping("/upgrade")
	public String displaySubscriptionsForUpgrade(Model theModel, HttpSession session, HttpServletRequest request) {		
		User user = (User) session.getAttribute("user");
		
		LinkedHashSet<Subscription> activeSubscriptions = subcriptionRepository.findActiveSubscriptionsOrderByName(user, LocalDateTime.now())
				.stream().collect(Collectors.toCollection(LinkedHashSet::new));	
		
		//send a list of SubscriptionUtils with activeSubscriptions in. They must be in order.
		List<SubscriptionUtils> activeSubscriptionUtils = activeSubscriptions.stream().map(sub -> 
		new SubscriptionUtils(sub, user, purchaseRepository, LocalDateTime.now()))
				.collect(Collectors.toList());
		
		//find non.active subscriptions
		LinkedHashSet<Subscription> nonActiveSubscriptions = subscriptionService.findNonActiveSubscriptions(activeSubscriptions
				, subcriptionRepository);
				
		//add active and inactive subscriptions to model
		theModel.addAttribute("nonActiveSubscriptions", nonActiveSubscriptions);
		theModel.addAttribute("activeSubscriptions", activeSubscriptionUtils);
		
		return "upgrade";
	}

	
}








