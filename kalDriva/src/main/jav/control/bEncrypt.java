package control;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;

import control.DBConnection;

import javax.crypto.Cipher;

public class bEncrypt {
	private bEncrypt(){}
	
	public static String enc(String pass,String union,String branch,String name) throws Exception {
		try {
			  
            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance("MD5");
  
            // digest() method is called to calculate message digest
            //  of an input digest() return array of byte
            byte[] messageDigest = md.digest(pass.getBytes());
  
            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);
  
            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }

	      Connection con = DBConnection.getConnection();
	      
	      PreparedStatement pst = con.prepareStatement("insert into login(unions,branch,name,password,position,status)values(?,?,?,?,'Branch Manager','Active')");
		    pst.setString(1, union);
		    pst.setString(2, branch+" Branch");
		    pst.setString(3, name);
		    pst.setString(4, hashtext);
		    pst.executeUpdate();
	      
            return hashtext;
        } 
  
        // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
		
	}
}
