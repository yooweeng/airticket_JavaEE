package com.bean;

public class User {
	
//for schedule
private int idschedule,idairplane;
private String destname,description;
	
public int getIdschedule() {
	return idschedule;
}
public void setIdschedule(int idschedule) {
	this.idschedule = idschedule;
}
public int getIdairplane() {
	return idairplane;
}
public void setIdairplane(int idairplane) {
	this.idairplane = idairplane;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getDestname() {
	return destname;
}
public void setDestname(String destname) {
	this.destname = destname;
}


//for passenger
private int idpassenger;
private String first_name,last_name,password,email, status;

public int getIdpassenger() {
	return idpassenger;
}
public void setIdpassenger(int idpassenger) {
	this.idpassenger = idpassenger;
}
public String getFirst_name() {
	return first_name;
}
public void setFirst_name(String first_name) {
	this.first_name = first_name;
}
public String getLast_name() {
	return last_name;
}
public void setLast_name(String last_name) {
	this.last_name = last_name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}


//for ticket
private int idticket,idflight;

public int getIdticket() {
	return idticket;
}
public void setIdticket(int idticket) {
	this.idticket = idticket;
}
public int getIdflight() {
	return idflight;
}
public void setIdflight(int idflight) {
	this.idflight = idflight;
}

//for airplane
private double price;
private int seat_available;

public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getSeat_available() {
	return seat_available;
}
public void setSeat_available(int seat_available) {
	this.seat_available = seat_available;
}

//for flight
private String departure_time,date,origin,destination;

public String getDeparture_time() {
	return departure_time;
}
public void setDeparture_time(String departure_time) {
	this.departure_time = departure_time;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getOrigin() {
	return origin;
}
public void setOrigin(String origin) {
	this.origin = origin;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}

}