package com.unicon.entity;

public class IDENTITYCARD_TABLE {
    private int IDENTITYCARDID;
    private String IDNUMBER;
    private String USERNAME;
    private String USERSEX;
    private String USERBIRTHDAY;
    private int PROVINCEID;
    private int CITYID;
    private String ELECTRONICSMEAL2;
    private String ELECTRONICSMEAL1;

    public IDENTITYCARD_TABLE(int IDENTITYCARDID) {
        this.IDENTITYCARDID = IDENTITYCARDID;
    }

    public IDENTITYCARD_TABLE(int IDENTITYCARDID, String IDNUMBER, String USERNAME, String USERSEX, String USERBIRTHDAY, int PROVINCEID, int CITYID, String ELECTRONICSMEAL2, String ELECTRONICSMEAL1) {
        this.IDENTITYCARDID = IDENTITYCARDID;
        this.IDNUMBER = IDNUMBER;
        this.USERNAME = USERNAME;
        this.USERSEX = USERSEX;
        this.USERBIRTHDAY = USERBIRTHDAY;
        this.PROVINCEID = PROVINCEID;
        this.CITYID = CITYID;
        this.ELECTRONICSMEAL2 = ELECTRONICSMEAL2;
        this.ELECTRONICSMEAL1 = ELECTRONICSMEAL1;
    }

    public int getIDENTITYCARDID() {
        return IDENTITYCARDID;
    }

    public void setIDENTITYCARDID(int IDENTITYCARDID) {
        this.IDENTITYCARDID = IDENTITYCARDID;
    }

    public String getIDNUMBER() {
        return IDNUMBER;
    }

    public void setIDNUMBER(String IDNUMBER) {
        this.IDNUMBER = IDNUMBER;
    }

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME;
    }

    public String getUSERSEX() {
        return USERSEX;
    }

    public void setUSERSEX(String USERSEX) {
        this.USERSEX = USERSEX;
    }

    public String getUSERBIRTHDAY() {
        return USERBIRTHDAY;
    }

    public void setUSERBIRTHDAY(String USERBIRTHDAY) {
        this.USERBIRTHDAY = USERBIRTHDAY;
    }

    public int getPROVINCEID() {
        return PROVINCEID;
    }

    public void setPROVINCEID(int PROVINCEID) {
        this.PROVINCEID = PROVINCEID;
    }

    public int getCITYID() {
        return CITYID;
    }

    public void setCITYID(int CITYID) {
        this.CITYID = CITYID;
    }

    public String getELECTRONICSMEAL2() {
        return ELECTRONICSMEAL2;
    }

    public void setELECTRONICSMEAL2(String ELECTRONICSMEAL2) {
        this.ELECTRONICSMEAL2 = ELECTRONICSMEAL2;
    }

    public String getELECTRONICSMEAL1() {
        return ELECTRONICSMEAL1;
    }

    public void setELECTRONICSMEAL1(String ELECTRONICSMEAL1) {
        this.ELECTRONICSMEAL1 = ELECTRONICSMEAL1;
    }

    public IDENTITYCARD_TABLE() {
    }
}
