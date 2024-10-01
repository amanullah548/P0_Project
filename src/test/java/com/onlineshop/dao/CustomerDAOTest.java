package com.onlineshop.dao;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.revonlineshop.dao.CustomerDAOInterface;
import com.revonlineshop.entity.Customer;
import com.revonlineshop.entity.Product;
import com.revonlineshop.utility.DaoFactory;

public class CustomerDAOTest {
private CustomerDAOInterface cDAO;
	@Before
	public void setUp() throws Exception {
		cDAO=DaoFactory.getObject("customer");
	}

	@After
	public void tearDown() throws Exception {
		cDAO=null;
	}

	@Test
	public void testAddCustomerDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testAddProductDAO() {
		System.out.println("Not yet implemented");
		
	}

	@Test
	public void testAddtoCartDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testAddOrderDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testDeleteFromCartDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testFindMaxOrderDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testFindTotalProductDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testUpdateOrderStatusDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testUpdateProductDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testAdminLoginDAO() {
		System.out.println("Not yet implemented");
	}

	@Test
	public void testCustomerLoginDAO() {
		System.out.println("Not yet implemented");
	}

}
