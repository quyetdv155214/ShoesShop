/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class testPagger {

    public static void main(String[] args) {
        try {
            Properties p = new Properties();
            p.put("mail.smtp.auth", "true");
            p.put("mail.smtp.starttls.enable", "true");
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.put("mail.smtp.port", 587);

            Session s = Session.getInstance(p,
                    new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("khanhlnse04056@fpt.edu.vn", "lamngockhanh123");
                }
            });

            Message msg = new MimeMessage(s);
            msg.setFrom(new InternetAddress("khanhlnse04056@fpt.edu.vn"));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("lamngockhanhtn@gmail.com"));
            msg.setSubject("tesssst");
            msg.setText("hello");
            
            Transport.send(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
