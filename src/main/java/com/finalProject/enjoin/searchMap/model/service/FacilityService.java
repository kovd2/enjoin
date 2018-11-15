package com.finalProject.enjoin.searchMap.model.service;

import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;

public interface FacilityService {

	List<Map<String, Object>> facilityList();

	List<Map<String, Object>> searchFacility(String search)throws SearchListResultException ;

	Map<String, Object> selectOneDetail(int facilityNo);

	Map<String, Object> detailResult(int facilityNo);

}
