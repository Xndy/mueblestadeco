package com.spring.Bean;

import com.spring.servlet.Protocol;
import java.util.Date;
import java.util.Properties;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

@Stateless
@LocalBean
public class CorreoSessionBean {

    private int port = 465;
    private String host = "smtp.gmail.com";
    private String from = "andysanchezgonzalez1996@gmail.com";
    private boolean auth = true;
    private String username = "andysanchezgonzalez1996@gmail.com";
    private String password = "andy123A";
    private Protocol protocol = Protocol.SMTPS;
    private boolean debug = true;

    public void sendEmail(String to, String subject, String body, String telefono) {
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        switch (protocol) {
            case SMTPS:
                props.put("mail.smtp.ssl.enable", true);
                break;
            case TLS:
                props.put("mail.smtp.starttls.enable", true);
                break;
        }

        Authenticator authenticator = null;
        if (auth) {
            props.put("mail.smtp.auth", true);
            authenticator = new Authenticator() {
                private PasswordAuthentication pa = new PasswordAuthentication(username, password);
                @Override
                public PasswordAuthentication getPasswordAuthentication() {
                    return pa;
                }
            };
        }

        Session session = Session.getInstance(props, authenticator);
        session.setDebug(debug);

        MimeMessage message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(to));
            InternetAddress[] address = {new InternetAddress(from)};
            message.setRecipients(Message.RecipientType.TO, address);
            message.setSubject(subject);
            message.setSentDate(new Date());
            message.setText("El correo fue enviado por: \n " + subject + "\n El correo electronico es: \n" + to + " \n El numero de telefono es: \n" + telefono+ "\n El mensaje es el siguiente: \n" +body);
//            Multipart multipart = new MimeMultipart("alternative");
//            
//            MimeBodyPart textPart = new MimeBodyPart();
//            String textContent = "Hi, Nice to meet you!";
//            textPart.setText(textContent);
//
//            MimeBodyPart htmlPart = new MimeBodyPart();
//            String htmlContent = "<html><h1>Hi</h1><p>Nice to meet you!</p></html>";
//            htmlPart.setContent(htmlContent, "text/html");
//
//            multipart.addBodyPart(textPart);
//            multipart.addBodyPart(htmlPart);
//            message.setContent(multipart);
            Transport.send(message);
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
    }
}