package com.tiger.utils;

import java.io.File;
import java.util.Map;
import java.util.Set;

public class SimpleEmail {
	private Set<String> toSet;//收件人
	private String subject;//主题
	private String content;
	private boolean isHtml;
	private String attachementUrl;
	private boolean hasAttachment;
	public Set<String> getToSet() {
		return toSet;
	}
	public void setToSet(Set<String> toSet) {
		this.toSet = toSet;
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
	public boolean isHtml() {
		return isHtml;
	}
	public void setHtml(boolean isHtml) {
		this.isHtml = isHtml;
	}
	public String getAttachementUrl() {
		return attachementUrl;
	}
	public void setAttachementUrl(String attachementUrl) {
		this.attachementUrl = attachementUrl;
	}
	public boolean isHasAttachment() {
		return hasAttachment;
	}
	public void setHasAttachment(boolean hasAttachment) {
		this.hasAttachment = hasAttachment;
	}
	public SimpleEmail() {
		super();
	}
	
	
	
}
