package swdo.syj.yayoung.vo;

/*
 * 단어  VO
 * 우다슬
 * 2019/08/21
 * */
public class WordCardVO {

	public int word_num;	// 단어번호
	public int card_set_num;	// 단어 세트 번호
	public String english;	// 영어
	public String korean;	// 한글
	public int percent;		// 진도율
	
	public WordCardVO(){}
	
	public WordCardVO(int word_num, int card_set_num, String english, String korean, int percent) {
		super();
		this.word_num = word_num;
		this.card_set_num = card_set_num;
		this.english = english;
		this.korean = korean;
		this.percent = percent;
	}

	public int getWord_num() {
		return word_num;
	}

	public void setWord_num(int word_num) {
		this.word_num = word_num;
	}

	public int getCard_set_num() {
		return card_set_num;
	}

	public void setCard_set_num(int card_set_num) {
		this.card_set_num = card_set_num;
	}

	public String getEnglish() {
		return english;
	}

	public void setEnglish(String english) {
		this.english = english;
	}

	public String getKorean() {
		return korean;
	}

	public void setKorean(String korean) {
		this.korean = korean;
	}

	public int getPercent() {
		return percent;
	}

	public void setPercent(int percent) {
		this.percent = percent;
	}

	@Override
	public String toString() {
		return "WordCardVO [word_num=" + word_num + ", card_set_num=" + card_set_num + ", english=" + english
				+ ", korean=" + korean + ", percent=" + percent + "]";
	}
}
