package swdo.syj.yayoung.vo;

public class Ins_classVO {
	
	private int ins_num;
	private String ins_title;
	private String ins_des;
	private String ins_date;
	private String ins_cate;
	private String ins_vidlist;
	private int ins_price;
	private String ins_thumbnail;
	private String ins_thumbnailsave;
	private String tc_id;
	
	public Ins_classVO() {
	}

	public Ins_classVO(int ins_num, String ins_title, String ins_des, String ins_date, String ins_cate,
			String ins_vidlist, int ins_price, String ins_thumbnail, String ins_thumbnailsave, String tc_id) {
		super();
		this.ins_num = ins_num;
		this.ins_title = ins_title;
		this.ins_des = ins_des;
		this.ins_date = ins_date;
		this.ins_cate = ins_cate;
		this.ins_vidlist = ins_vidlist;
		this.ins_price = ins_price;
		this.ins_thumbnail = ins_thumbnail;
		this.ins_thumbnailsave = ins_thumbnailsave;
		this.tc_id = tc_id;
	}

	public int getIns_num() {
		return ins_num;
	}

	public void setIns_num(int ins_num) {
		this.ins_num = ins_num;
	}

	public String getIns_title() {
		return ins_title;
	}

	public void setIns_title(String ins_title) {
		this.ins_title = ins_title;
	}

	public String getIns_des() {
		return ins_des;
	}

	public void setIns_des(String ins_des) {
		this.ins_des = ins_des;
	}

	public String getIns_date() {
		return ins_date;
	}

	public void setIns_date(String ins_date) {
		this.ins_date = ins_date;
	}

	public String getIns_cate() {
		return ins_cate;
	}

	public void setIns_cate(String ins_cate) {
		this.ins_cate = ins_cate;
	}

	public String getIns_vidlist() {
		return ins_vidlist;
	}

	public void setIns_vidlist(String ins_vidlist) {
		this.ins_vidlist = ins_vidlist;
	}

	public int getIns_price() {
		return ins_price;
	}

	public void setIns_price(int ins_price) {
		this.ins_price = ins_price;
	}

	public String getIns_thumbnail() {
		return ins_thumbnail;
	}

	public void setIns_thumbnail(String ins_thumbnail) {
		this.ins_thumbnail = ins_thumbnail;
	}

	public String getIns_thumbnailsave() {
		return ins_thumbnailsave;
	}

	public void setIns_thumbnailsave(String ins_thumbnailsave) {
		this.ins_thumbnailsave = ins_thumbnailsave;
	}

	public String getTc_id() {
		return tc_id;
	}

	public void setTc_id(String tc_id) {
		this.tc_id = tc_id;
	}

	@Override
	public String toString() {
		return "Ins_classVO [ins_num=" + ins_num + ", ins_title=" + ins_title + ", ins_des=" + ins_des + ", ins_date="
				+ ins_date + ", ins_cate=" + ins_cate + ", ins_vidlist=" + ins_vidlist + ", ins_price=" + ins_price
				+ ", ins_thumbnail=" + ins_thumbnail + ", ins_thumbnailsave=" + ins_thumbnailsave + ", tc_id=" + tc_id
				+ "]";
	}
	
	
	
}
