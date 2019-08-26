package com.unicon.entity;

import java.math.BigDecimal;

public class TB_FILE {
    private BigDecimal FILEID;
    private String FILENAME;
    private String FILETYPE;
    private String FILESIZE;
    private String FILEUSER;
    private String FILEPATH;

    public TB_FILE(String FILENAME) {
        this.FILENAME = FILENAME;
    }

    public TB_FILE() {
    }
    public TB_FILE(BigDecimal FILEID, String FILENAME, String FILETYPE, String FILESIZE, String FILEUSER, String FILEPATH) {
        this.FILEID = FILEID;
        this.FILENAME = FILENAME;
        this.FILETYPE = FILETYPE;
        this.FILESIZE = FILESIZE;
        this.FILEUSER = FILEUSER;
        this.FILEPATH = FILEPATH;
    }
    public TB_FILE(String FILENAME, String FILETYPE, String FILESIZE, String FILEUSER, String FILEPATH) {
        this.FILENAME = FILENAME;
        this.FILETYPE = FILETYPE;
        this.FILESIZE = FILESIZE;
        this.FILEUSER = FILEUSER;
        this.FILEPATH = FILEPATH;
    }

    public TB_FILE(String FILENAME, String FILEUSER) {
        this.FILENAME = FILENAME;
        this.FILEUSER = FILEUSER;
    }
    public BigDecimal getFILEID() {
        return FILEID;
    }

    public void setFILEID(BigDecimal FILEID) {
        this.FILEID = FILEID;
    }

    public String getFILENAME() {
        return FILENAME;
    }

    public void setFILENAME(String FILENAME) {
        this.FILENAME = FILENAME;
    }

    public String getFILETYPE() {
        return FILETYPE;
    }

    public void setFILETYPE(String FILETYPE) {
        this.FILETYPE = FILETYPE;
    }

    public String getFILESIZE() {
        return FILESIZE;
    }

    public void setFILESIZE(String FILESIZE) {
        this.FILESIZE = FILESIZE;
    }

    public String getFILEUSER() {
        return FILEUSER;
    }

    public void setFILEUSER(String FILEUSER) {
        this.FILEUSER = FILEUSER;
    }

    public String getFILEPATH() {
        return FILEPATH;
    }

    public void setFILEPATH(String FILEPATH) {
        this.FILEPATH = FILEPATH;
    }

}
