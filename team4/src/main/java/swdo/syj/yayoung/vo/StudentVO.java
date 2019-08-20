/**
 * 학생 VO
 * 김지수
 * 2019.08.09
 */

package swdo.syj.yayoung.vo;

public class StudentVO {
	
	private String st_id;				//학생 아이디
	private String st_pw;				//비밀번호
	private String st_name;				//이름
	private String st_dob;				//생년월일
	private String st_phone;			//연락처		2019.08.20 변수 추가, 김지수
	private String st_email;			//이메일
	private String st_level;			//레벨		2019.08.20 스펠링 수정, 김지수
	private String st_picname;			//사진이름
	private String st_savedpicname;		//저장되는 사진의 이름
	
	public StudentVO() {
		super();
	}

	public StudentVO(String st_id, String st_pw, String st_name, String st_dob, String st_phone, String st_email,
			String st_level, String st_picname, String st_savedpicname) {
		super();
		this.st_id = st_id;
		this.st_pw = st_pw;
		this.st_name = st_name;
		this.st_dob = st_dob;
		this.st_phone = st_phone;
		this.st_email = st_email;
		this.st_level = st_level;
		this.st_picname = st_picname;
		this.st_savedpicname = st_savedpicname;
	}

	public String getSt_id() {
		return st_id;
	}

	public void setSt_id(String st_id) {
		this.st_id = st_id;
	}

	public String getSt_pw() {
		return st_pw;
	}

	public void setSt_pw(String st_pw) {
		this.st_pw = st_pw;
	}

	public String getSt_name() {
		return st_name;
	}

	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}

	public String getSt_dob() {
		return st_dob;
	}

	public void setSt_dob(String st_dob) {
		this.st_dob = st_dob;
	}

	public String getSt_phone() {
		return st_phone;
	}

	public void setSt_phone(String st_phone) {
		this.st_phone = st_phone;
	}

	public String getSt_email() {
		return st_email;
	}

	public void setSt_email(String st_email) {
		this.st_email = st_email;
	}

	public String getSt_level() {
		return st_level;
	}

	public void setSt_level(String st_level) {
		this.st_level = st_level;
	}

	public String getSt_picname() {
		return st_picname;
	}

	public void setSt_picname(String st_picname) {
		this.st_picname = st_picname;
	}

	public String getSt_savedpicname() {
		return st_savedpicname;
	}

	public void setSt_savedpicname(String st_savedpicname) {
		this.st_savedpicname = st_savedpicname;
	}

	@Override
	public String toString() {
		return "StudentVO [st_id=" + st_id + ", st_pw=" + st_pw + ", st_name=" + st_name + ", st_dob=" + st_dob
				+ ", st_phone=" + st_phone + ", st_email=" + st_email + ", st_level=" + st_level + ", st_picname="
				+ st_picname + ", st_savedpicname=" + st_savedpicname + "]";
	}
	
	
}
