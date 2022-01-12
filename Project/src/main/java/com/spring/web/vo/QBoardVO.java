package com.spring.web.vo;

public class QBoardVO {
	private int seq;
	private String id;
	private String nickname;
	private String subject;
	private String content;
	private String date;
	
	public QBoardVO() {
		// TODO Auto-generated constructor stub
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public QBoardVO(int seq, String id, String nickname, String subject, String content, String date) {
		super();
		this.seq = seq;
		this.id = id;
		this.nickname = nickname;
		this.subject = subject;
		this.content = content;
		this.date = date;
	}

	@Override
	public String toString() {
		return "QBoardVO [seq=" + seq + ", id=" + id + ", nickname=" + nickname + ", subject=" + subject + ", content="
				+ content + ", date=" + date + "]";
	}
	
	
	
	
}
