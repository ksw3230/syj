package swdo.syj.yayoung.vo;

public class Homework_mVO {
	private int m_num;
	private String m_question;
	private int m_answer;
	private String m_exp;
	private int vid_num;
	
	public Homework_mVO() {}

	public Homework_mVO(int m_num, String m_question, int m_answer, String m_exp, int vid_num) {
		super();
		this.m_num = m_num;
		this.m_question = m_question;
		this.m_answer = m_answer;
		this.m_exp = m_exp;
		this.vid_num = vid_num;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getM_question() {
		return m_question;
	}

	public void setM_question(String m_question) {
		this.m_question = m_question;
	}

	public int getM_answer() {
		return m_answer;
	}

	public void setM_answer(int m_answer) {
		this.m_answer = m_answer;
	}

	public String getM_exp() {
		return m_exp;
	}

	public void setM_exp(String m_exp) {
		this.m_exp = m_exp;
	}

	public int getVid_num() {
		return vid_num;
	}

	public void setVid_num(int vid_num) {
		this.vid_num = vid_num;
	}

	@Override
	public String toString() {
		return "Homework_mVO [m_num=" + m_num + ", m_question=" + m_question + ", m_answer=" + m_answer + ", m_exp="
				+ m_exp + ", vid_num=" + vid_num + "]";
	}
	
	
}
