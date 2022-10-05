package com.smhrd.model;

public class Recipe {
	
	
	

    public Recipe(String recipe_code, String recipe_name, String recipe_method, String recipe_time,
			String recipe_difficulty, String recipe_img, String cooking_img, String recipe_detail, String ingredient,
			String carbohydrate, Double protein, Double fat, Double calories) {
		super();
		this.recipe_code = recipe_code;
		this.recipe_name = recipe_name;
		this.recipe_method = recipe_method;
		this.recipe_time = recipe_time;
		this.recipe_difficulty = recipe_difficulty;
		this.recipe_img = recipe_img;
		this.cooking_img = cooking_img;
		this.recipe_detail = recipe_detail;
		this.ingredient = ingredient;
		this.carbohydrate = carbohydrate;
		this.protein = protein;
		this.fat = fat;
		this.calories = calories;
	}




	public String getRecipe_code() {
		return recipe_code;
	}

	public void setRecipe_code(String recipe_code) {
		this.recipe_code = recipe_code;
	}


	public String getRecipe_name() {
		return recipe_name;
	}




	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}


	public String getRecipe_method() {
		return recipe_method;
	}


	public void setRecipe_method(String recipe_method) {
		this.recipe_method = recipe_method;
	}


	public String getRecipe_time() {
		return recipe_time;
	}


	public void setRecipe_time(String recipe_time) {
		this.recipe_time = recipe_time;
	}


	public String getRecipe_difficulty() {
		return recipe_difficulty;
	}


	public void setRecipe_difficulty(String recipe_difficulty) {
		this.recipe_difficulty = recipe_difficulty;
	}




	public String getRecipe_img() {
		return recipe_img;
	}


	public void setRecipe_img(String recipe_img) {
		this.recipe_img = recipe_img;
	}


	public String getCooking_img() {
		return cooking_img;
	}


	public void setCooking_img(String cooking_img) {
		this.cooking_img = cooking_img;
	}


	public String getRecipe_detail() {
		return recipe_detail;
	}




	public void setRecipe_detail(String recipe_detail) {
		this.recipe_detail = recipe_detail;
	}



	public String getIngredient() {
		return ingredient;
	}




	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}



	public String getCarbohydrate() {
		return carbohydrate;
	}




	public void setCarbohydrate(String carbohydrate) {
		this.carbohydrate = carbohydrate;
	}


	public Double getProtein() {
		return protein;
	}




	public void setProtein(Double protein) {
		this.protein = protein;
	}


	public Double getFat() {
		return fat;
	}


	public void setFat(Double fat) {
		this.fat = fat;
	}


	public Double getCalories() {
		return calories;
	}


	public void setCalories(Double calories) {
		this.calories = calories;
	}


	private String recipe_code;
    private String recipe_name;
    private String recipe_method;
    private String recipe_time;
    private String recipe_difficulty;
    
    private String recipe_img;
    private String cooking_img;
    private String recipe_detail;
    private String ingredient;
    
    private String carbohydrate;
    private Double protein;
    private Double fat;
    private Double calories;


  

    public Recipe() {
		super();
	}

	
}
