<%@page import="com.login.hibernateutil.ConnectionUtil"%>
<%@page import="com.login.user.User"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	
	String januarySalary = request.getParameter("januarySalary");
	String februarySalary = request.getParameter("februarySalary");
	String marchSalary = request.getParameter("marchSalary");
	String aprilSalary = request.getParameter("aprilSalary");
	String maySalary = request.getParameter("maySalary");
	String juneSalary = request.getParameter("juneSalary");
	String julySalary = request.getParameter("julySalary");
	String augustSalary = request.getParameter("augustSalary");
	String septemberSalary = request.getParameter("septemberSalary");
	String octoberSalary = request.getParameter("octoberSalary");
	String novemberSalary = request.getParameter("novemberSalary");
	String decemberSalary = request.getParameter("decemberSalary");

	SessionFactory factory = null;
	Session ss = null;
	User user;
	
	factory = ConnectionUtil.getSessionFactory();
	ss = factory.openSession();
	user = new User(userName, password, firstName, lastName, email, age);
	
	ss.getTransaction().begin();
	ss.save(user);
	ss.beginTransaction().commit();
	
	if(ss != null){
		out.println("Record Saved");
	}
	
	
	
	



%>