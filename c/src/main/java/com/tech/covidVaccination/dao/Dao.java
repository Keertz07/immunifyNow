package com.tech.covidVaccination.dao;

import java.util.List;

import com.tech.covidVaccination.bo.BookBo;
import com.tech.covidVaccination.bo.CenterBo;
import com.tech.covidVaccination.bo.Userbo;

public interface Dao {

	Userbo loginUser(Userbo userbo);

	long createUser(Userbo userbo);



	List<BookBo> bookdetails();


	long bookSlot(BookBo bookbo);

	int updateCenter(CenterBo centerBo);

	CenterBo getCenterById(CenterBo centerBo);

	long addcenterBo(CenterBo centerBobo);

	List<CenterBo> viewcenterBo();

	int deleteCenter(CenterBo centerBo);

}
