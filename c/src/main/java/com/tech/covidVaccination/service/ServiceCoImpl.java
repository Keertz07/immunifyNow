package com.tech.covidVaccination.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tech.covidVaccination.bo.BookBo;
import com.tech.covidVaccination.bo.CenterBo;
import com.tech.covidVaccination.bo.Userbo;
import com.tech.covidVaccination.dao.Dao;

@Service
public class ServiceCoImpl implements ServiceCo{
	
	@Autowired
	Dao dao;
	
	@Override
	public Userbo loginUser(Userbo userbo) {
		return dao.loginUser(userbo);
	}

	@Override
	public long updateUser(Userbo userbo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public long createUser(Userbo userbo) {
		long status=dao.createUser(userbo);
		return status;
	}

	@Override
	public long addCenter(CenterBo centerbo) {
		long status=dao.addcenterBo(centerbo);
		return status;
	}

	@Override
	public int updateCenter(CenterBo centerBo) {
		return dao.updateCenter(centerBo);
	}

	@Override
	public List<CenterBo> viewCenter() {
		return dao.viewcenterBo();
	}

	@Override
	public List<BookBo> bookdetails() {
		return dao.bookdetails();
	}

	@Override
	public long bookSlot(BookBo bookbo) {
		long status=dao.bookSlot(bookbo);
		
		return status;
	}

	@Override
	public CenterBo getCenterById(CenterBo centerBo) {
		return dao.getCenterById(centerBo);
	}

	@Override
	public int deleteCenter(CenterBo centerBo) {
		// TODO Auto-generated method stub
		return dao.deleteCenter(centerBo);
	}

	
}
