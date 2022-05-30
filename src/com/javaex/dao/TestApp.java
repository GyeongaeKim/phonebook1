package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo;

public class TestApp {

	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		//List<PersonVo> personList = phoneDao.getPersonList();
		
		//System.out.println(personList.toString());
		//.toString() 굳이 안써도 됨,
		
		PersonVo personVo = phoneDao.getPerson(7);
		System.out.println(personVo);
		
	}

}
