package swdo.syj.yayoung.vo;

public class CouponVO {

	private int c_num;
	private int c_discount;
	private String st_id;
	
	public CouponVO(){}
	
	public CouponVO(int c_num, int c_discount, String st_id) {
		super();
		this.c_num = c_num;
		this.c_discount = c_discount;
		this.st_id = st_id;
	}

	public int getC_num() {
		return c_num;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public int getC_discount() {
		return c_discount;
	}

	public void setC_discount(int c_discount) {
		this.c_discount = c_discount;
	}

	public String getSt_id() {
		return st_id;
	}

	public void setSt_id(String st_id) {
		this.st_id = st_id;
	}

	@Override
	public String toString() {
		return "CouponVO [c_num=" + c_num + ", c_discount=" + c_discount + ", st_id=" + st_id + "]";
	}
}
