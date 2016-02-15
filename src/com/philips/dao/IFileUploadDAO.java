package com.philips.dao;
import com.philips.textcompare.UploadBeanModel;

/**
 * 
 * @author Steven Reisman
 *
 */
public interface IFileUploadDAO {
	
	public void insert(UploadBeanModel upload);
	public UploadBeanModel getByFileName(String name);
}
