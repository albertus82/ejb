package it.albertus.ejb.web.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/secured/*")
public class AuthFilter extends FilterAdapter {

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("utente") == null) {
			HttpServletResponse response = (HttpServletResponse) servletResponse;
			response.sendRedirect(request.getContextPath() + "/login");
		}
		else {
			chain.doFilter(servletRequest, servletResponse);
		}
	}

}
