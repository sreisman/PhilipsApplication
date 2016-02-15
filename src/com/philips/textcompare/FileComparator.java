package com.philips.textcompare;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


public class FileComparator {

	private ArrayList<UploadBeanModel> uploadBeans;
	private Map<Character, Integer> alphabetDict;
	char[] alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
			'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
	
	public FileComparator(UploadBeanModel bean)
	{
		//Instantiate the instance variables
		alphabetDict = new HashMap<Character, Integer>();
		uploadBeans =new ArrayList<UploadBeanModel>();
		
		uploadBeans.add(bean);
		
		for (char c: alphabet)
		{
			alphabetDict.put(new Character(c), new Integer(0));
		}
	}
	
	public ArrayList<UploadBeanModel> getUploadBeans() {
		return uploadBeans;
	}

	public void setUploadBeans(ArrayList<UploadBeanModel> uploadBeans) {
		this.uploadBeans = uploadBeans;
	}
	
	public void getCommonLetters()
	{
		
		for (UploadBeanModel upload: uploadBeans)
		{
			String temp = upload.getText();
			for (int i = 0; i < temp.length(); i ++)
			{
				try{
				alphabetDict.put(new Character(temp.charAt(i)), new Integer(alphabetDict.get(temp.charAt(i)).intValue() + 1));
				}catch (Exception e)
				{
					System.out.println(e);
				}
			}
		}
	}
	
	public Map<Character, Integer> analyze() 
	{
		getCommonLetters();
		
		Map<Character, Integer> temp =
				alphabetDict.entrySet()
				.stream()
				.filter(p->p.getValue().intValue() > 0)
				.collect(Collectors.toMap(p->p.getKey(), p->p.getValue()));
		
		//StringBuilder s = new StringBuilder();
		//alphabetDict.forEach((k,v) -> (if (v.intValue > 0) temp.put(new Character(k.charValue()), new Integer(v.intValue())));
		//s.append(k.charValue() + ": " + v.intValue() + "\n"));
		//return s.toString();
		//String json = new ObjectMapper().writeValueAsString(temp);
		
		return temp;
	}
}
