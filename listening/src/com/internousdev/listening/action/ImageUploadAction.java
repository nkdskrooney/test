package com.internousdev.listening.action;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class ImageUploadAction extends ActionSupport {
    private static final long serialVersionUID = 1L;

    private File myfile;
    public String execute() {
        System.out.println(myfile);
        return SUCCESS;
    }
    public File getMyfile() {
        return myfile;
    }
    public void setMyfile(File myfile) {
        this.myfile = myfile;
    }
}
