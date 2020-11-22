package kr.co.softcampus.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softcampus.beans.CarBean;
import kr.co.softcampus.beans.ContentBean;
import kr.co.softcampus.dao.BoardDao;
import kr.co.softcampus.dao.CarDao;

@Service
public class CarService {

	@Autowired
	private CarDao carDao;
	
public List<CarBean> getCarList(){
		
		return carDao.getCarList();
	}

public int getOneCar(){
	
	return carDao.getOneCar();
}
	
}
