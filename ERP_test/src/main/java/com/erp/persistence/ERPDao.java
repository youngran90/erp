package com.erp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ERPDao {
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	="com.erp.mapper.ERPMapper";

}
