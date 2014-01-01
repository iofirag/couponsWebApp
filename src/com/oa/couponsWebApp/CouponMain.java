package com.oa.couponsWebApp;


import java.awt.Image;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class CouponMain {	
	public static void main(String [] args){
		
		DAO dao = DAO.getInstance();
		System.out.println("UserDAO_ClassInstance="+dao);
		dao.addUser(new User("ofir",	MD5.encryptMD5("1") ,1));
		dao.addUser(new User("vidran", MD5.encryptMD5("a") ,0));
	}
}
