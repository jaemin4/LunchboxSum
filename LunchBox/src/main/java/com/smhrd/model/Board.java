package com.smhrd.model;

public class Board {

	private String article_seq;
	private String article_title;
	private String article_contgent;
	private String article_file;
	private String article_date;
	private String mb_id;
	private int article_cnt;
	private int article_likes;

	public String getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(String article_seq) {
		this.article_seq = article_seq;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_contgent() {
		return article_contgent;
	}

	public void setArticle_contgent(String article_contgent) {
		this.article_contgent = article_contgent;
	}

	public String getArticle_file() {
		return article_file;
	}

	public void setArticle_file(String article_file) {
		this.article_file = article_file;
	}

	public String getArticle_date() {
		return article_date;
	}

	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public int getArticle_cnt() {
		return article_cnt;
	}

	public void setArticle_cnt(int article_cnt) {
		this.article_cnt = article_cnt;
	}

	public int getArticle_likes() {
		return article_likes;
	}

	public void setArticle_likes(int article_likes) {
		this.article_likes = article_likes;
	}

}
