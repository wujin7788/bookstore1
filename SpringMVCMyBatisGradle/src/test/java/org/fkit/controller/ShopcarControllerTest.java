package org.fkit.controller;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:springmvc-config.xml","classpath:applicationContext.xml"})

public class ShopcarControllerTest {

	@Test
	public void testGoToShopcar() {
		
	}

	@Test
	public void testShopcarlist() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteShopcar() {
		fail("Not yet implemented");
	}

}
