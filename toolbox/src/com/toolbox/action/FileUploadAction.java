package com.toolbox.action;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {

	private File userImage;
	private String userImageContentType;
	private String userImageFileName;

	public String execute() {
		String filePath = ServletActionContext.getServletContext().getRealPath("/").concat("img");

		System.out.println("Image Location:" + filePath);
		File fileToCreate = new File(filePath, userImageFileName);
		try {
			FileUtils.copyFile(userImage, fileToCreate);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

}
