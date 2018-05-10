package com.tiger.pojo;

import java.io.Serializable;

public class NoteInfo implements Serializable {
	private String title;
	private String content;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public NoteInfo() {
		super();
	}
	@Override
	public String toString() {
		return "NoteInfo [title=" + title + ", content=" + content + "]";
	}
	
}
