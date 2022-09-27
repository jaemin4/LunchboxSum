package com.smhrd.model;

public class Recipe {
	
	// 레시피 코드 
    private String recipeCode;

    // 레시피 명 
    private String recipeName;

    // 조리 방식 
    private String recipeMethod;

    // 조리 시간 
    private String recipeTime;

    // 난이도 
    private String recipeDifficulty;

    // 대표 이미지 
    private String recipeImg;
    
    // 조리 이미지
    private String cookingImg;

    // 상세 레시피 
    private String recipeDetail;
    
    // 식재료
    private String ingredient;

	// 탄수화물 
    private Double carbohydrate;

    // 단백질 
    private Double protein;

    // 지방 
    private Double fat;

    // 칼로리 
    private Double calories;

    public String getRecipeCode() {
        return recipeCode;
    }

    public void setRecipeCode(String recipeCode) {
        this.recipeCode = recipeCode;
    }

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }

    public String getRecipeMethod() {
        return recipeMethod;
    }

    public void setRecipeMethod(String recipeMethod) {
        this.recipeMethod = recipeMethod;
    }

    public String getRecipeTime() {
        return recipeTime;
    }

    public void setRecipeTime(String recipeTime) {
        this.recipeTime = recipeTime;
    }

    public String getRecipeDifficulty() {
        return recipeDifficulty;
    }

    public void setRecipeDifficulty(String recipeDifficulty) {
        this.recipeDifficulty = recipeDifficulty;
    }

    public String getRecipeImg() {
        return recipeImg;
    }

    public void setRecipeImg(String recipeImg) {
        this.recipeImg = recipeImg;
    }

    public String getRecipeDetail() {
        return recipeDetail;
    }

    public void setRecipeDetail(String recipeDetail) {
        this.recipeDetail = recipeDetail;
    }

    public Double getCarbohydrate() {
        return carbohydrate;
    }

    public void setCarbohydrate(Double carbohydrate) {
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
	
    public String getCookingImg() {
		return cookingImg;
	}

	public void setCookingImg(String cookingImg) {
		this.cookingImg = cookingImg;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
}
