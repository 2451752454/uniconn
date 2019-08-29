package com.unicon.biz;

/**
 * @author zhengzhujungeng
 * @date 2019/8/27 - 22:33
 */
public class TestCodeInfor {
    private String phone;
    private int i;
    private String ReceiveDate;
    private String SendStatus;
    private int Code;
    private String SendDate;

    public String getSendDate() {
        return SendDate;
    }

    public void setSendDate(String sendDate) {
        SendDate = sendDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getI() {
        return i;
    }

    public void setI(int i) {
        this.i = i;
    }

    public String getReceiveDate() {
        return ReceiveDate;
    }

    public void setReceiveDate(String receiveDate) {
        ReceiveDate = receiveDate;
    }

    public String getSendStatus() {
        return SendStatus;
    }

    public void setSendStatus(String sendStatus) {
        SendStatus = sendStatus;
    }

    public int getCode() {
        return Code;
    }

    public void setCode(int code) {
        Code = code;
    }

    public TestCodeInfor() {
    }

    public TestCodeInfor(String phone, int i, String receiveDate, String sendStatus, int code, String sendDate) {
        this.phone = phone;
        this.i = i;
        ReceiveDate = receiveDate;
        SendStatus = sendStatus;
        Code = code;
        SendDate = sendDate;
    }
}
