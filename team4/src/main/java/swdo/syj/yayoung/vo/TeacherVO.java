package swdo.syj.yayoung.vo;

/*
 * 선생님 VO
 * 우다슬
 * 2019/08/09
 * */
public class TeacherVO {
	
	private String tc_id;
	private String tc_pw;
	private String tc_name;
	private String tc_dob;
	private String tc_phone;
	private String tc_email;
	private String tc_picname;
	private String tc_savedpicid;
	private String tc_check;	//2019-08-19 변수 추가, 우다슬
	
	public TeacherVO(){}

	public TeacherVO(String tc_id, String tc_pw, String tc_name, String tc_dob, String tc_phone, String tc_email,
			String tc_picname, String tc_savedpicid, String tc_check) {
		super();
		this.tc_id = tc_id;
		this.tc_pw = tc_pw;
		this.tc_name = tc_name;
		this.tc_dob = tc_dob;
		this.tc_phone = tc_phone;
		this.tc_email = tc_email;
		this.tc_picname = tc_picname;
		this.tc_savedpicid = tc_savedpicid;
		this.tc_check = tc_check;
	}

	public String getTc_id() {
		return tc_id;
	}

	public void setTc_id(String tc_id) {
		this.tc_id = tc_id;
	}

	public String getTc_pw() {
		return tc_pw;
	}

	public void setTc_pw(String tc_pw) {
		this.tc_pw = tc_pw;
	}

	public String getTc_name() {
		return tc_name;
	}

	public void setTc_name(String tc_name) {
		this.tc_name = tc_name;
	}

	public String getTc_dob() {
		return tc_dob;
	}

	public void setTc_dob(String tc_dob) {
		this.tc_dob = tc_dob;
	}

	public String getTc_phone() {
		return tc_phone;
	}

	public void setTc_phone(String tc_phone) {
		this.tc_phone = tc_phone;
	}

	public String getTc_email() {
		return tc_email;
	}

	public void setTc_email(String tc_email) {
		this.tc_email = tc_email;
	}

	public String getTc_picname() {
		return tc_picname;
	}

	public void setTc_picname(String tc_picname) {
		this.tc_picname = tc_picname;
	}

	public String getTc_savedpicid() {
		return tc_savedpicid;
	}

	public void setTc_savedpicid(String tc_savedpicid) {
		this.tc_savedpicid = tc_savedpicid;
	}

	public String getTc_check() {
		return tc_check;
	}

	public void setTc_check(String tc_check) {
		this.tc_check = tc_check;
	}

	@Override
	public String toString() {
		return "TeacherVO [tc_id=" + tc_id + ", tc_pw=" + tc_pw + ", tc_name=" + tc_name + ", tc_dob=" + tc_dob
				+ ", tc_phone=" + tc_phone + ", tc_email=" + tc_email + ", tc_picname=" + tc_picname
				+ ", tc_savedpicid=" + tc_savedpicid + ", tc_check=" + tc_check + "]";
	}
}

