package com.servise;


import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Service
public interface MailSenderService {

      void sendMail(String content, String email, String path);

}

