package com.smhrd.model;

public class Comment {

	private String cmt_seq;
	private String article_seq;
	private String cmt_content;
	private String cmt_date;
	private String mb_id;

	public String getCmt_seq() {
		return cmt_seq;
	}

	public void setCmt_seq(String cmt_seq) {
		this.cmt_seq = cmt_seq;
	}

	public String getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(String article_seq) {
		this.article_seq = article_seq;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

}
