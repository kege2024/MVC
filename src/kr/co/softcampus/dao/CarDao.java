package kr.co.softcampus.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softcampus.beans.CarBean;
import kr.co.softcampus.beans.ContentBean;

@Repository
public class CarDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<CarBean> getCarList(){
		return sqlSessionTemplate.selectList("car.getCarList");
	}
	
	public int getOneCar(){
		return sqlSessionTemplate.selectOne("car.getOneCar");
	}
}
