package com.saicards.utility;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailThread {

	private String subject;
	private String msg;
	private String recipient;
	public MailThread(String subject, String msg, String recipient) {
		super();
		this.subject = subject;
		this.msg = msg;
		this.recipient = recipient;
	}
	
	public void run() {
		
		   String host="localhost";
	       String to=recipient;
	       String from="saicardsamravati@gmail.com";
	       String pwd="Saicards@2021";
	       
	       Properties properties=new Properties();
	       properties.put("mail.smtp.ssl.enable", "true");
	       properties.put("mail.smtp.auth", "true");
	       properties.put("mail.smtp.host", "smtp.gmail.com");
	       properties.put("mail.smtp.port", "465"); 
	        
	      
	       
	       Session session=Session.getInstance(properties,new Authenticator(){
	           @Override
	           protected PasswordAuthentication getPasswordAuthentication() {
	               return new PasswordAuthentication(from,pwd);
	           }
	           
	       });
	       
	       System.out.println("ala ala ala");
	       try {
	       MimeMessage message=new MimeMessage(session);
	       message.setFrom(new InternetAddress(from));
	       message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
	       message.setSubject(subject);
	       message.setContent(msg, "text/html");
	       //message.setText(msg);
	       System.out.println("ala ala ala");
	       Transport.send(message);
	       System.out.println("successfull");
	       
	       } catch (Exception ex) {
	           System.out.println("senderrorMailThread"+ex);
	       }
	}


}
