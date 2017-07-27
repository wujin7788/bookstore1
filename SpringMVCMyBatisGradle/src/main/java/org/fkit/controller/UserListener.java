package org.fkit.controller;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class UserListener implements HttpSessionListener {
	
	public static int count=0;
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		count++;
		se.getSession().setAttribute("count", count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		count=count-1;
		se.getSession().setAttribute("count", count);
	}

}
