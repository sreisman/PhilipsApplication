package com.philips.textcompare;

/**
 * 
 * @author Steven Reisman
 * Bean Model Representation for
 * uploaded text files
 */

public class UploadBeanModel {

	private String text;
	private String name;
	
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
