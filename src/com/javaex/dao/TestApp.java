package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo;

public class TestApp {

	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		List<PersonVo> personList = phoneDao.getPersonList();
		
		System.out.println(personList.toString());
		//.toString() 굳이 안써도 됨,
		
		/*
		PhoneDao db = new PhoneDao();
		
		PersonVo db01 = new PersonVo("이효리", "010-1111-1111", "010-1111-1111");
		PersonVo db02 = new PersonVo("정우성", "010-1111-1111", "010-1111-1111");
		PersonVo db03 = new PersonVo("이정재", "010-1111-1111", "010-1111-1111");
		PersonVo db04 = new PersonVo("유재석", "010-1111-1111", "010-1111-1111");
		
		phoneDao.personInsert(db01);
		phoneDao.personInsert(db02);
		phoneDao.personInsert(db03);
		phoneDao.personInsert(db04);
		*/
	}

}
