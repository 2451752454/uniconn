package com.unicon.entity;

import java.math.BigDecimal;

public class TB_USER {
    private  BigDecimal USERID;
    private  String USERNAME;
    private  String USERPASSWORD;
    private  BigDecimal ROLEID;
    private  String USERSTATE;
    private  String SEX;
    private  String INTEREST;
    private  String INTEREST1;
    private  String PHONE;
    private  String EMAIL;
    private  String PATH;
    private com.unicon.entity.TB_ROLE TB_ROLE;

    public TB_USER(String USERNAME, String USERPASSWORD, BigDecimal ROLEID, String USERSTATE, String SEX, String INTEREST, String INTEREST1, String PHONE, String EMAIL, String PATH) {
        this.USERNAME = USERNAME;
        this.USERPASSWORD = USERPASSWORD;
        this.ROLEID = ROLEID;
        this.USERSTATE = USERSTATE;
        this.SEX = SEX;
        this.INTEREST = INTEREST;
        this.INTEREST1 = INTEREST1;
        this.PHONE = PHONE;
        this.EMAIL = EMAIL;
        this.PATH = PATH;

    }

    public com.unicon.entity.TB_ROLE getTB_ROLE() {
        return TB_ROLE;
    }

    public void setTB_ROLE(com.unicon.entity.TB_ROLE TB_ROLE) {
        this.TB_ROLE = TB_ROLE;
    }

    public String getSEX() {
        return SEX;
    }

    public void setSEX(String SEX) {
        this.SEX = SEX;
    }

    public String getINTEREST() {
        return INTEREST;
    }

    public void setINTEREST(String INTEREST) {
        this.INTEREST = INTEREST;
    }

    public String getINTEREST1() {
        return INTEREST1;
    }

    public void setINTEREST1(String INTEREST1) {
        this.INTEREST1 = INTEREST1;
    }

    public String getPHONE() {
        return PHONE;
    }

    public void setPHONE(String PHONE) {
        this.PHONE = PHONE;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public TB_USER(String USERNAME, String USERPASSWORD) {
        this.USERNAME = USERNAME;
        this.USERPASSWORD = USERPASSWORD;
    }

    public TB_USER(String USERNAME) {
        this.USERNAME = USERNAME;
    }

    public TB_USER( String USERNAME, String USERPASSWORD, BigDecimal ROLEID,  String USERSTATE, String PATH) {

        this.USERNAME = USERNAME;
        this.USERPASSWORD = USERPASSWORD;
        this.ROLEID = ROLEID;

        this.USERSTATE = USERSTATE;
        this.PATH = PATH;
    }

    public TB_USER(BigDecimal USERID, String USERNAME, String USERPASSWORD, BigDecimal ROLEID,  String USERSTATE, String PATH) {
        this.USERID = USERID;
        this.USERNAME = USERNAME;
        this.USERPASSWORD = USERPASSWORD;
        this.ROLEID = ROLEID;

        this.USERSTATE = USERSTATE;
        this.PATH = PATH;
    }



    public String getPATH() {
        return PATH;
    }
    public void setPATH(String PATH) {
        this.PATH = PATH;
    }
    public BigDecimal getUSERID() {
        return USERID;
    }
    public void setUSERID(BigDecimal uSERID) {
        USERID = uSERID;
    }
    public String getUSERNAME() {
        return USERNAME;
    }
    public void setUSERNAME(String uSERNAME) {
        USERNAME = uSERNAME;
    }
    public String getUSERPASSWORD() {
        return USERPASSWORD;
    }
    public void setUSERPASSWORD(String uSERPASSWORD) {
        USERPASSWORD = uSERPASSWORD;
    }
    public BigDecimal getROLEID() {
        return ROLEID;
    }
    public void setROLEID(BigDecimal rOLEID) {
        ROLEID = rOLEID;
    }
    public String getUSERSTATE() {
        return USERSTATE;
    }
    public void setUSERSTATE(String uSERSTATE) {
        USERSTATE = uSERSTATE;
    }
    public TB_USER() {
        super();
    }
}
