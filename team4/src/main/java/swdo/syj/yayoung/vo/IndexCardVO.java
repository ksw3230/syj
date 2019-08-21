package swdo.syj.yayoung.vo;

/*
 * 단어 세트 VO
 * 우다슬
 * 2019/08/21
 * */
public class IndexCardVO {
	
	private int card_set_num;
	private String st_id;
	
	public IndexCardVO(){}
	
	public IndexCardVO(int card_set_num, String st_id) {
		super();
		this.card_set_num = card_set_num;
		this.st_id = st_id;
	}

	public int getCard_set_num() {
		return card_set_num;
	}

	public void setCard_set_num(int card_set_num) {
		this.card_set_num = card_set_num;
	}

	public String getSt_id() {
		return st_id;
	}

	public void setSt_id(String st_id) {
		this.st_id = st_id;
	}

	@Override
	public String toString() {
		return "IndexCardVO [card_set_num=" + card_set_num + ", st_id=" + st_id + "]";
	}
}
