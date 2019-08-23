package swdo.syj.yayoung.vo;

public class Ins_class_vidVO {
	
	private int vid_num;
	private String vid_title;
	private String vid_desc;
	private String vid_vidname;
	private String vid_vidsavename;
	private String vid_thumbnail;
	private String vid_thumbsavename;
	private int ins_num;
	
	public Ins_class_vidVO() {
	
	}

	public Ins_class_vidVO(int vid_num, String vid_title, String vid_desc, String vid_vidname, String vid_vidsavename,
			String vid_thumbnail, String vid_thumbsavename, int ins_num) {
		super();
		this.vid_num = vid_num;
		this.vid_title = vid_title;
		this.vid_desc = vid_desc;
		this.vid_vidname = vid_vidname;
		this.vid_vidsavename = vid_vidsavename;
		this.vid_thumbnail = vid_thumbnail;
		this.vid_thumbsavename = vid_thumbsavename;
		this.ins_num = ins_num;
	}

	public int getVid_num() {
		return vid_num;
	}

	public void setVid_num(int vid_num) {
		this.vid_num = vid_num;
	}

	public String getVid_title() {
		return vid_title;
	}

	public void setVid_title(String vid_title) {
		this.vid_title = vid_title;
	}

	public String getVid_desc() {
		return vid_desc;
	}

	public void setVid_desc(String vid_desc) {
		this.vid_desc = vid_desc;
	}

	public String getVid_vidname() {
		return vid_vidname;
	}

	public void setVid_vidname(String vid_vidname) {
		this.vid_vidname = vid_vidname;
	}

	public String getVid_vidsavename() {
		return vid_vidsavename;
	}

	public void setVid_vidsavename(String vid_vidsavename) {
		this.vid_vidsavename = vid_vidsavename;
	}

	public String getVid_thumbnail() {
		return vid_thumbnail;
	}

	public void setVid_thumbnail(String vid_thumbnail) {
		this.vid_thumbnail = vid_thumbnail;
	}

	public String getVid_thumbsavename() {
		return vid_thumbsavename;
	}

	public void setVid_thumbsavename(String vid_thumbsavename) {
		this.vid_thumbsavename = vid_thumbsavename;
	}

	public int getIns_num() {
		return ins_num;
	}

	public void setIns_num(int ins_num) {
		this.ins_num = ins_num;
	}

	@Override
	public String toString() {
		return "Ins_class_vidVO [vid_num=" + vid_num + ", vid_title=" + vid_title + ", vid_desc=" + vid_desc
				+ ", vid_vidname=" + vid_vidname + ", vid_vidsavename=" + vid_vidsavename + ", vid_thumbnail="
				+ vid_thumbnail + ", vid_thumbsavename=" + vid_thumbsavename + ", ins_num=" + ins_num + "]";
	}
	
	
}
