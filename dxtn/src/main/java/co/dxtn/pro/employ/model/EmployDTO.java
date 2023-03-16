package co.dxtn.pro.employ.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EmployDTO {

	private int rnum;
	private int eno;
	private String esub;
	private String econ;
	private int eref;
	private int estep;
	private int elevel;
	private String ewriter;
	private String eregdate;
	private int start;
	private int end;
	private int readcount;
}
