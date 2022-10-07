package com.smhrd.model;

//권장 영양소 
public class Nutritionfact {

	// 영양소 번호
	private Double nutri_Seq;

	// 사용자 아이디
	private String mb_Id;

	// 권장 탄수화물
	private Double r_Carbohydrate;

	// 권장 단백질
	private Double r_Protein;

	// 권장 지방
	private Double r_Fat;

	// 권장 칼로리
	private Double r_Calories;

	public Double getNutri_Seq() {
		return nutri_Seq;
	}

	public void setNutri_Seq(Double nutri_Seq) {
		this.nutri_Seq = nutri_Seq;
	}

	public String getMb_Id() {
		return mb_Id;
	}

	public void setMb_Id(String mb_Id) {
		this.mb_Id = mb_Id;
	}

	public Double getR_Carbohydrate() {
		return r_Carbohydrate;
	}

	public void setR_Carbohydrate(Double r_Carbohydrate) {
		this.r_Carbohydrate = r_Carbohydrate;
	}

	public Double getR_Protein() {
		return r_Protein;
	}

	public void setR_Protein(Double r_Protein) {
		this.r_Protein = r_Protein;
	}

	public Double getR_Fat() {
		return r_Fat;
	}

	public void setR_Fat(Double r_Fat) {
		this.r_Fat = r_Fat;
	}

	public Double getR_Calories() {
		return r_Calories;
	}

	public void setR_Calories(Double r_Calories) {
		this.r_Calories = r_Calories;
	}

	
	
}
