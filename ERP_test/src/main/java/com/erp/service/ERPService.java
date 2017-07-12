package com.erp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.persistence.ERPDao;

@Service
public class ERPService {

	@Inject
	private ERPDao dao;
	
	
}
