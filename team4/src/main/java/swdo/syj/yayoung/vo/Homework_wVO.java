package swdo.syj.yayoung.vo;

public class Homework_wVO {

	private int w_num;
	private String w_question;
	private String w_pointexp;
	private String w_answer;
	private int vid_num;
	
	public Homework_wVO() {
	}

	public Homework_wVO(int w_num, String w_question, String w_pointexp, String w_answer, int vid_num) {
		super();
		this.w_num = w_num;
		this.w_question = w_question;
		this.w_pointexp = w_pointexp;
		this.w_answer = w_answer;
		this.vid_num = vid_num;
	}

	public int getW_num() {
		return w_num;
	}

	public void setW_num(int w_num) {
		this.w_num = w_num;
	}

	public String getW_question() {
		return w_question;
	}

	public void setW_question(String w_question) {
		this.w_question = w_question;
	}

	public String getW_pointexp() {
		return w_pointexp;
	}

	public void setW_pointexp(String w_pointexp) {
		this.w_pointexp = w_pointexp;
	}

	public String getW_answer() {
		return w_answer;
	}

	public void setW_answer(String w_answer) {
		this.w_answer = w_answer;
	}

	public int getVid_num() {
		return vid_num;
	}

	public void setVid_num(int vid_num) {
		this.vid_num = vid_num;
	}

	@Override
	public String toString() {
		return "Homework_wVO [w_num=" + w_num + ", w_question=" + w_question + ", w_pointexp=" + w_pointexp
				+ ", w_answer=" + w_answer + ", vid_num=" + vid_num + "]";
	}
	
	
	
}
