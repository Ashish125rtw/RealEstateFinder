package com.grownited.filter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Component;

import com.grownited.entity.UserEntity;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component
public class LoginCheckFilter implements Filter {

    private static final List<String> publicURLs = Arrays.asList(
        "/login", "/signup", "/authenticate", "/homepage", "/forgotpassword", "/sendOtp",
        "/changpassword", "/updatepassword", "/privacy", "/savecontact", "/SIGNUPNICE", "/contact"
    );

    private static final List<String> publicExtensions = Arrays.asList(
        ".css", ".js", ".png", ".jpg", ".jpeg", ".gif", ".svg", ".woff", ".ttf", ".ico"
    );

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String uri = req.getRequestURI();
        HttpSession session = req.getSession(false);
        UserEntity user = (session != null) ? (UserEntity) session.getAttribute("user") : null;

        boolean isPublic = publicURLs.stream().anyMatch(uri::contains);
        boolean isStatic = publicExtensions.stream().anyMatch(uri::endsWith) || uri.contains("/assets/");

        if (isPublic || isStatic) {
            chain.doFilter(request, response);
            return;
        }

        if (user == null) {
            res.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        // Role-based access
        String role = user.getRole();

        if ((uri.contains("/AdminDashboard") || uri.contains("/admin")) && !role.equals("Admin")) {
            res.sendRedirect(req.getContextPath() + "/access-denied");
            return;
        }

        if ((uri.contains("/AgentDashboard") || uri.contains("/agent")) && !role.equals("Agent")) {
            res.sendRedirect(req.getContextPath() + "/access-denied");
            return;
        }

        if ((uri.contains("/BuyerDashboard") || uri.contains("/buyer")) && !role.equals("Buyer")) {
            res.sendRedirect(req.getContextPath() + "/access-denied");
            return;
        }

        if ((uri.contains("/SellerDashboard") || uri.contains("/seller")) && !role.equals("Seller")) {
            res.sendRedirect(req.getContextPath() + "/access-denied");
            return;
        }

        // If everything is good
        chain.doFilter(request, response);
    }
}
