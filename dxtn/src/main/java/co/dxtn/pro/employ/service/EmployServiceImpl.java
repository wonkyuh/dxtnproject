package co.dxtn.pro.employ.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.dxtn.pro.employ.model.EmployDAO;
import co.dxtn.pro.employ.model.EmployDTO;
import co.dxtn.pro.employ.model.PageInfo;

@Service
public class EmployServiceImpl implements EmployService {

	@Autowired
	EmployDAO employDAO;
	
	@Override
	public List<EmployDTO> employList(HttpServletRequest request) {
		int start, end, curentPg;
		if(request.getParameter("curentPg")!= null)
		curentPg = Integer.parseInt(request.getParameter("curentPg"));
		else curentPg = 1;
		
		start = (curentPg - 1) * PageInfo.PLINECNT + 1;
		end = curentPg * PageInfo.PLINECNT;
		EmployDTO article = new EmployDTO();
		article.setStart(start);
		article.setEnd(end);
		return employDAO.employList(article);
	}
	
	@Override
	public int employListCnt() {
		return 0;
	}

	@Override
	public int employWrite(EmployDTO dto) {
		return employDAO.employWrite(dto);
		
	}

	@Override
	public EmployDTO employCont(EmployDTO dto) {
		employDAO.readcount(dto);
		return employDAO.employCont(dto);
	}

	@Override
	public void employUpdate(EmployDTO dto) {
		employDAO.employUpdate(dto);
	}

	@Override
	public void employDel(int eno) {
		employDAO.employDel(eno);
	}
	
}
