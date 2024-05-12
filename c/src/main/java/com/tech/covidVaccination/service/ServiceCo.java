package com.tech.covidVaccination.service;



import java.util.List;

import com.tech.covidVaccination.bo.BookBo;
import com.tech.covidVaccination.bo.CenterBo;
import com.tech.covidVaccination.bo.Userbo;

public interface ServiceCo {

	Userbo loginUser(Userbo userbo);

	long updateUser(Userbo userbo);

	long createUser(Userbo userbo);

	long addCenter(CenterBo centerbo);


	List<CenterBo> viewCenter();
	
	List<BookBo> bookdetails();

	long bookSlot(BookBo bookbo);



	int updateCenter(CenterBo centerBo);

	CenterBo getCenterById(CenterBo centerBo);

	int deleteCenter(CenterBo centerBo);


}
