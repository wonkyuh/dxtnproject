package co.dxtn.pro.employ.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface EmployDAO {

	List<EmployDTO> employList(EmployDTO article);

	int employListCnt();
	
	int employWrite(EmployDTO dto);

	EmployDTO employCont(EmployDTO dto);
	
	int readcount(EmployDTO dto);

	void employDelete(EmployDTO dto);

	void employUpdate(EmployDTO dto);

	void employDel(int eno);
	


}