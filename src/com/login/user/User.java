package com.login.user;

public class User {
	private int id;
	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private String email;
	private int age;
	private String januarySalary;
	private String februarySalary;
	private String marchSalary;
	private String aprilSalary;
	private String maySalary;
	private String juneSalary;
	private String julySalary;
	private String augustSalary;
	private String septemberSalary;
	private String octoberSalary;
	private String novemberSalary;
	private String decemberSalary;
	
	
	public User(int id, String username, String password, String firstName, String lastName, String email, int age,
			String januarySalary, String februarySalary, String marchSalary, String aprilSalary, String maySalary,
			String juneSalary, String julySalary, String augustSalary, String septemberSalary, String octoberSalary,
			String novemberSalary, String decemberSalary) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.age = age;
		this.januarySalary = januarySalary;
		this.februarySalary = februarySalary;
		this.marchSalary = marchSalary;
		this.aprilSalary = aprilSalary;
		this.maySalary = maySalary;
		this.juneSalary = juneSalary;
		this.julySalary = julySalary;
		this.augustSalary = augustSalary;
		this.septemberSalary = septemberSalary;
		this.octoberSalary = octoberSalary;
		this.novemberSalary = novemberSalary;
		this.decemberSalary = decemberSalary;
	}


	public User(String username, String password, String firstName, String lastName, String email, int age) {
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.age = age;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getJanuarySalary() {
		return januarySalary;
	}


	public void setJanuarySalary(String januarySalary) {
		this.januarySalary = januarySalary;
	}


	public String getFebruarySalary() {
		return februarySalary;
	}


	public void setFebruarySalary(String februarySalary) {
		this.februarySalary = februarySalary;
	}


	public String getMarchSalary() {
		return marchSalary;
	}


	public void setMarchSalary(String marchSalary) {
		this.marchSalary = marchSalary;
	}


	public String getAprilSalary() {
		return aprilSalary;
	}


	public void setAprilSalary(String aprilSalary) {
		this.aprilSalary = aprilSalary;
	}


	public String getMaySalary() {
		return maySalary;
	}


	public void setMaySalary(String maySalary) {
		this.maySalary = maySalary;
	}


	public String getJuneSalary() {
		return juneSalary;
	}


	public void setJuneSalary(String juneSalary) {
		this.juneSalary = juneSalary;
	}


	public String getJulySalary() {
		return julySalary;
	}


	public void setJulySalary(String julySalary) {
		this.julySalary = julySalary;
	}


	public String getAugustSalary() {
		return augustSalary;
	}


	public void setAugustSalary(String augustSalary) {
		this.augustSalary = augustSalary;
	}


	public String getSeptemberSalary() {
		return septemberSalary;
	}


	public void setSeptemberSalary(String septemberSalary) {
		this.septemberSalary = septemberSalary;
	}


	public String getOctoberSalary() {
		return octoberSalary;
	}


	public void setOctoberSalary(String octoberSalary) {
		this.octoberSalary = octoberSalary;
	}


	public String getNovemberSalary() {
		return novemberSalary;
	}


	public void setNovemberSalary(String novemberSalary) {
		this.novemberSalary = novemberSalary;
	}


	public String getDecemberSalary() {
		return decemberSalary;
	}


	public void setDecemberSalary(String decemberSalary) {
		this.decemberSalary = decemberSalary;
	}

	@Override 
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", last Name" + lastName + "]";
	}
	
}
