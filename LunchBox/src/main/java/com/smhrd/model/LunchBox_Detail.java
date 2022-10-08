package com.smhrd.model;

public class LunchBox_Detail {

	
	private int ld_seq; 	//상세 순번
	
	private int lb_seq; 	//도시락 순번
	
	private String recipe_code;	//n번 도시락에 대한 n번째칸의 레시피 코드
	
	private int lb_num;		//n번 도시락에 대한 n번째칸

	
	public int getLd_seq() {
		return ld_seq;
	}

	public void setLd_seq(int ld_seq) {
		this.ld_seq = ld_seq;
	}

	public int getLb_seq() {
		return lb_seq;
	}

	public void setLb_seq(int lb_seq) {
		this.lb_seq = lb_seq;
	}

	public String getRecipe_code() {
		return recipe_code;
	}

	public void setRecipe_code(String recipe_code) {
		this.recipe_code = recipe_code;
	}

	public int getLb_num() {
		return lb_num;
	}

	public void setLb_num(int lb_num) {
		this.lb_num = lb_num;
	}

	public LunchBox_Detail() {}
		
	public LunchBox_Detail(int ld_seq, int lb_seq, String recipe_code, int lb_num) {
		super();
		this.ld_seq = ld_seq;
		this.lb_seq = lb_seq;
		this.recipe_code = recipe_code;
		this.lb_num = lb_num;
	}

	public LunchBox_Detail(int lb_seq, String recipe_code, int lb_num) {
		super();
		this.lb_seq = lb_seq;
		this.recipe_code = recipe_code;
		this.lb_num = lb_num;
	}

	public LunchBox_Detail(int lb_seq, int lb_num) {
		super();
		this.lb_seq = lb_seq;
		this.lb_num = lb_num;
	}	
	
	
	
	
	
	
	
	
	
}
