package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface mallDAO {
	int signup(String id, String passcode1,  String name,
					String mobile, String email, String address);
	
	mallDTO login(String id, String passcode1);
	
	void insert(String p1, String p2, String p3, String p4);
	
	ArrayList<mallDTO> getList(int start, int psize);
	
	mallDTO product(String name);
	void cart(String p1, String p2, String p3, String p4, String p5);
	
	
	mallDTO view(int num);
	
	void hitUp(int num);
	
	void delPost(int num);
	
	void insPost(String title, String content, String writer, String created, String updated);
	
	void udPost(int num, String title, String content, String updated);
	
	int getTotal();
}
