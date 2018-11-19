package com.finalProject.enjoin.searchMap.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;
import com.finalProject.enjoin.searchMap.model.vo.Facility;

@Repository
public class FacilityDaoImpl implements FacilityDao{

	@Override
	public List<Map<String, Object>> facilityList(SqlSessionTemplate sqlSession,String address,int no) {
		
		Facility f = new Facility();
		List<Map<String,Object>>list = null;
		f.setTotalAddress(address);
		f.setFacilityNo(no);
		list = sqlSession.selectList("Facility.facilityList",f);
		System.out.println("dao:"+list);
		
		
		
		return list;
	}

	@Override
	public List<Map<String, Object>> facility(SqlSessionTemplate sqlSession, String search) throws SearchListResultException {
		
		Facility f= new Facility();
		
		List<Map<String,Object>> list = null;
		f.setTotalAddress(search);
		f.setFacilityEvent(search);
		f.setFacilityName(search);
		System.out.println("facilitaddress"+f.getTotalAddress());
	
		list = sqlSession.selectList("Facility.searchFacility",f);
		System.out.println("facilityDao"+list);
		if(list!=null) {
			String area= null;
			String section=null;
			String address=null;
			for(int i=0; i<list.size(); i++) {
				area=(String) list.get(i).get("FACILITY_AREA");
				section=(String) list.get(i).get("FACILITY_SECTION");
				address=(String) list.get(i).get("FACILITY_ADDRESS");
				f.setTotalAddress(area+" "+section+" "+address);
				list.get(i).remove("TOTAL_ADDRESS");
				list.get(i).put("TOTAL_ADDRESS",f.getTotalAddress());
				
			}
		
			return list;
			
		}else {
		 throw new SearchListResultException("검색결과가 없습니다.");
			
		 
		}
		
	}

	@Override
	public Map<String, Object> selectOneDetail(SqlSessionTemplate sqlSession, int facilityNo) {
		
		Map<String,Object> list = null;
		String area;
		String section;
		String address;
		String totalAddress;
		list=sqlSession.selectOne("Facility.selectOneDetail",facilityNo);
		
		area=(String) list.get("FACILITY_AREA");
		section=(String) list.get("FACILITY_SECTION");
		address=(String) list.get("FACILITY_ADDRESS");
		totalAddress = area+" "+section+" "+address;
		list.remove("TOTAL_ADDRESS");
		list.put("TOTAL_ADDRESS", totalAddress);
		
		
		return list;
	}

	@Override
	public List<Map<String, Object>> detailResult(SqlSessionTemplate sqlSession, int facilityNo) {
		
		List<Map<String,Object>> list = null;
		list = sqlSession.selectList("Facility.detailResult", facilityNo);
	
		return list;
	}

	
	
}
