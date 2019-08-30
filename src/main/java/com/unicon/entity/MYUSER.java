package com.unicon.entity;

public class MYUSER {
    private int USERID; //自增id
    private int IDENTITYCARDID; //身份证id
    private int USERROLEID; //角色id
    private int USERSTATUSID;    //状态id
    private String USER1;   //备用字段
    private String USER2;

    public MYUSER(int USERID, int IDENTITYCARDID, int USERROLEID, int USERSTATUSID, String USER1, String USER2) {
        this.USERID = USERID;
        this.IDENTITYCARDID = IDENTITYCARDID;
        this.USERROLEID = USERROLEID;
        this.USERSTATUSID = USERSTATUSID;
        this.USER1 = USER1;
        this.USER2 = USER2;
    }

    public MYUSER() {
    }

    public int getUSERID() {
        return USERID;
    }

    public void setUSERID(int USERID) {
        this.USERID = USERID;
    }

    public int getIDENTITYCARDID() {
        return IDENTITYCARDID;
    }

    public void setIDENTITYCARDID(int IDENTITYCARDID) {
        this.IDENTITYCARDID = IDENTITYCARDID;
    }

    public int getUSERROLEID() {
        return USERROLEID;
    }

    public void setUSERROLEID(int USERROLEID) {
        this.USERROLEID = USERROLEID;
    }

    public int getUSERSTATUSID() {
        return USERSTATUSID;
    }

    public void setUSERSTATUSID(int USERSTATUSID) {
        this.USERSTATUSID = USERSTATUSID;
    }

    public String getUSER1() {
        return USER1;
    }

    public void setUSER1(String USER1) {
        this.USER1 = USER1;
    }

    public String getUSER2() {
        return USER2;
    }

    public void setUSER2(String USER2) {
        this.USER2 = USER2;
    }

    public MYUSER(int IDENTITYCARDID, int USERROLEID) {
        this.IDENTITYCARDID = IDENTITYCARDID;
        this.USERROLEID = USERROLEID;
    }
}