package co.dxtn.pro.employ.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import co.dxtn.pro.employ.model.EmployDTO;

public interface EmployService {

	/* 채용공고 List */
	List<EmployDTO> employList(HttpServletRequest request);

	int employListCnt();

	int employWrite(EmployDTO dto);

	EmployDTO employCont(EmployDTO dto);

	void employUpdate(EmployDTO dto);

	void employDel(int eno);
	
	

}
