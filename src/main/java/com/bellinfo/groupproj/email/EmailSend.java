package com.bellinfo.groupproj.email;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Component;

import com.sun.mail.smtp.SMTPTransport;

@Component
public class EmailSend {
	
	
	public void sendEmail(String to) {
		String host = "smtp.gmail.com";
    	String user="krishnakanthmusunuru@gmail.com";
    	String pass ="9966226350";
    	String from ="krishnakanthmusunuru@gmail.com";
    	String subject="Welcome to Spice Garden";
    	String msgTxt ="Checkout our new deals page\n"
    			+ "http://www.spicegarden.com/deals";
    	boolean sessionDebug = false;
    	try {
        Properties props = System.getProperties();
        props.put("mail.smtps.host", host);
        props.put("mail.smtps.auth", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.starttls.required", "true");
        
        java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        Session session = Session.getInstance(props, null);
        session.setDebug(sessionDebug);
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(from));

        InternetAddress[] address = {new InternetAddress(to)};
        msg.setRecipients(Message.RecipientType.TO, address);

        msg.setSubject(subject);
        msg.setText(msgTxt);
        msg.setSentDate(new Date());

        SMTPTransport t =
            (SMTPTransport) session.getTransport("smtp");
        t.connect(host, user, pass);
        t.sendMessage(msg, msg.getAllRecipients());

        System.out.println("Response: " + t.getLastServerResponse());

        t.close();
        System.out.println("Message Sent Successfully.");
    	}catch(Exception e) {e.printStackTrace();}
	}

}
