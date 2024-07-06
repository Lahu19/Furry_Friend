package com.services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.entity.allcatEntity;
import com.entity.allproductEntity;
import com.entity.blog;
public class serviceProvider {
	Connection con;
	public serviceProvider(Connection con) {
		super();
		this.con=con;
	}
	public boolean checkLogin(String uName, String pass) throws SQLException {
		// TODO Auto-generated method stub
		boolean b=false;
		String sql="SELECT * FROM login WHERE uName=? AND PASS=? ";
		PreparedStatement pS=(PreparedStatement) con.prepareStatement(sql);
		pS.setString(1, uName);
		pS.setString(2, pass);
		
		ResultSet rS=(ResultSet) pS.executeQuery();
		if(rS.next()) {
			b=true;
		}
		return b;
	}
	public boolean CreateRegistration(String fullName, String uName, String pass) throws SQLException {
		// TODO Auto-generated method stub
		boolean b=false;
		 String sql="INSERT INTO login (fullName,uName, pass)VALUES( ?, ?,?)";
		 PreparedStatement pS=(PreparedStatement) con.prepareStatement(sql);
		 pS.setString(1, fullName);
		 pS.setString(2, uName);
		 pS.setString(3, pass);
		 int i=pS.executeUpdate();
		 if(i==1) {
			 b=true;
		 } 
		return b;
	}
	public boolean updatePass(String uName, String pass) throws SQLException {
		// TODO Auto-generated method stub
		boolean b=false;
		String sql="UPDATE  login SET pass=? WHERE uName=?";
		PreparedStatement pS=(PreparedStatement) con.prepareStatement(sql);
		pS.setString(1, pass);
		pS.setString(2, uName);
		int i=pS.executeUpdate();
		if(i==1) {
			b=true;
		}
		return b;
	}
	public List<allcatEntity>purchaseTotalList(){
		List<allcatEntity> li=new ArrayList<>();
		allcatEntity se=null;
		try {
			String sql="SELECT * FROM animals where category='cat'";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new allcatEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCategory(rs.getString(3));
				se.setPrice(rs.getString(4));
				se.setQuanity(rs.getString(5));
				se.setImage1(rs.getString(6));
				se.setImage2(rs.getString(7));
				se.setFood(rs.getString(8));
				se.setCategory(rs.getString(9));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
		
	}
	public List<allproductEntity>productTotalList(){
		List<allproductEntity> li=new ArrayList<>();
		allproductEntity se=null;
		try {
			String sql="SELECT * FROM products where category='toys'";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new allproductEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCategory(rs.getString(3));
				se.setPrice(rs.getString(4));
				se.setQuanity(rs.getString(5));
				se.setImage1(rs.getString(6));
				se.setImage2(rs.getString(7));
				se.setForAnimal(rs.getString(8));
				se.setPdate(rs.getString(9));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
		
	}
	public List<allproductEntity>allproductTotalList(){
		List<allproductEntity> li=new ArrayList<>();
		allproductEntity se=null;
		try {
			String sql="SELECT * FROM products where category='food' ";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new allproductEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCategory(rs.getString(3));
				se.setPrice(rs.getString(4));
				se.setQuanity(rs.getString(5));
				se.setImage1(rs.getString(6));
				se.setImage2(rs.getString(7));
				se.setForAnimal(rs.getString(8));
				se.setPdate(rs.getString(9));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
		
	}
	public List<blog>blogList(){
		List<blog> li=new ArrayList<>();
		blog se=null;
		try {
			String sql="SELECT * FROM blogs";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new blog();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setInfo(rs.getString(3));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
		
	}
	public List<allcatEntity>allPurchaseTotalList(){
		List<allcatEntity> li=new ArrayList<>();
		allcatEntity se=null;
		try {
			String sql="SELECT * FROM animals";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new allcatEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCategory(rs.getString(3));
				se.setPrice(rs.getString(4));
				se.setQuanity(rs.getString(5));
				se.setImage1(rs.getString(6));
				se.setImage2(rs.getString(7));
				se.setFood(rs.getString(8));
				se.setCategory(rs.getString(9));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
		
	}
	public List<allcatEntity>purchaseTotalListDog(){
		List<allcatEntity> li=new ArrayList<>();
		allcatEntity se=null;
		try {
			String sql="SELECT * FROM animals where category='dog'";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new allcatEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCategory(rs.getString(3));
				se.setPrice(rs.getString(4));
				se.setQuanity(rs.getString(5));
				se.setImage1(rs.getString(6));
				se.setImage2(rs.getString(7));
				se.setFood(rs.getString(8));
				se.setCategory(rs.getString(9));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
		
	}
	public boolean addNewProduct(String pName, String category, String pMRP, String pQuantity, String pimg1,
			String pimg2, String pFood, String psub, String pDate) throws SQLException {
		// TODO Auto-generated method stub
		boolean b=false;
		String sql="INSERT INTO animals (name, category, price ,quanity , image1, image2, food ,subcategory, pDate) VALUES (?, ? , ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pS=(PreparedStatement) con.prepareStatement(sql);
		pS.setString(1, pName);
		pS.setString(2, category);
		pS.setString(3, pMRP);
		pS.setString(4, pQuantity);
		pS.setString(5, pimg1);
		pS.setString(6, pimg2);
		pS.setString(7, pFood);
		pS.setString(8, psub);
		pS.setString(9, pDate);
		int i=pS.executeUpdate();
		if(i==1) {
			System.out.println("add new customer successfully");
			b=true;	
		}
		return b;
	}
	public int showNocats(){
		int id=0;
		try {
			String sql="SELECT COUNT(id) FROM animals";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs=(ResultSet) ps.executeQuery();
			while(rs.next())
			id=rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public int showNoofLogin(){
		int id=0;
		try {
			String sql="SELECT COUNT(id) FROM login";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs=(ResultSet) ps.executeQuery();
			while(rs.next())
			id=rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public int showNoSells(){
		int id=0;
		try {
			String sql="SELECT COUNT(id) FROM animals";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ResultSet rs=(ResultSet) ps.executeQuery();
			while(rs.next())
			id=rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public List<allcatEntity> checkSell(String name) {
		// TODO Auto-generated method stub
		  
		List<allcatEntity> li=new ArrayList<>();
		allcatEntity se=null;
		try {
			String sql="SELECT * FROM animals WHERE name=?";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs= (ResultSet) ps.executeQuery();
			while(rs.next()){
				se=new allcatEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCategory(rs.getString(3));
				se.setPrice(rs.getString(4));
				se.setQuanity(rs.getString(5));
				se.setImage1(rs.getString(6));
				se.setImage2(rs.getString(7));
				se.setFood(rs.getString(8));
				se.setCategory(rs.getString(9));
				li.add(se);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return li;
	}
	
}
