package swdo.syj.yayoung.vo;

public class BasketVO {
	
	private int bas_num;
	private int ins_num;
	
	public BasketVO(){}
	
	public BasketVO(int bas_num, int ins_num) {
		super();
		this.bas_num = bas_num;
		this.ins_num = ins_num;
	}

	public int getBas_num() {
		return bas_num;
	}

	public void setBas_num(int bas_num) {
		this.bas_num = bas_num;
	}

	public int getIns_num() {
		return ins_num;
	}

	public void setIns_num(int ins_num) {
		this.ins_num = ins_num;
	}

	@Override
	public String toString() {
		return "BasketVO [bas_num=" + bas_num + ", ins_num=" + ins_num + "]";
	}	
}
