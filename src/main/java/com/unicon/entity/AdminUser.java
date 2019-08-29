package com.unicon.entity;

import org.springframework.stereotype.Component;

/**
 * @Author xyp
 */
@Component
public class AdminUser {
    private int IDENTITYCARDID;
    private String AdminUserAccount;
    private String AdminUserPassword;
    private int ROLEID;
    private String AdminUser_signature;
    private int AdminUserSTRTEID;
    private int BranchID;
    private int OutletsID;
    private int agentid;
    private String AdminUserturnover;
    private String AdminUser1;
    private String AdminUser2;

    public AdminUser() {

    }

    public AdminUser(int IDENTITYCARDID, String adminUserAccount, String adminUserPassword, int ROLEID, String adminUser_signature, int adminUserSTRTEID, int branchID, int outletsID, int agentid, String adminUserturnover, String adminUser1, String adminUser2) {
        this.IDENTITYCARDID = IDENTITYCARDID;
        AdminUserAccount = adminUserAccount;
        AdminUserPassword = adminUserPassword;
        this.ROLEID = ROLEID;
        AdminUser_signature = adminUser_signature;
        AdminUserSTRTEID = adminUserSTRTEID;
        BranchID = branchID;
        OutletsID = outletsID;
        this.agentid = agentid;
        AdminUserturnover = adminUserturnover;
        AdminUser1 = adminUser1;
        AdminUser2 = adminUser2;
    }

    public int getIDENTITYCARDID() {
        return IDENTITYCARDID;
    }

    public void setIDENTITYCARDID(int IDENTITYCARDID) {
        this.IDENTITYCARDID = IDENTITYCARDID;
    }

    public String getAdminUserAccount() {
        return AdminUserAccount;
    }

    public void setAdminUserAccount(String adminUserAccount) {
        AdminUserAccount = adminUserAccount;
    }

    public String getAdminUserPassword() {
        return AdminUserPassword;
    }

    public void setAdminUserPassword(String adminUserPassword) {
        AdminUserPassword = adminUserPassword;
    }

    public int getROLEID() {
        return ROLEID;
    }

    public void setROLEID(int ROLEID) {
        this.ROLEID = ROLEID;
    }

    public String getAdminUser_signature() {
        return AdminUser_signature;
    }

    public void setAdminUser_signature(String adminUser_signature) {
        AdminUser_signature = adminUser_signature;
    }

    public int getAdminUserSTRTEID() {
        return AdminUserSTRTEID;
    }

    public void setAdminUserSTRTEID(int adminUserSTRTEID) {
        AdminUserSTRTEID = adminUserSTRTEID;
    }

    public int getBranchID() {
        return BranchID;
    }

    public void setBranchID(int branchID) {
        BranchID = branchID;
    }

    public int getOutletsID() {
        return OutletsID;
    }

    public void setOutletsID(int outletsID) {
        OutletsID = outletsID;
    }

    public int getAgentid() {
        return agentid;
    }

    public void setAgentid(int agentid) {
        this.agentid = agentid;
    }

    public String getAdminUserturnover() {
        return AdminUserturnover;
    }

    public void setAdminUserturnover(String adminUserturnover) {
        AdminUserturnover = adminUserturnover;
    }

    public String getAdminUser1() {
        return AdminUser1;
    }

    public void setAdminUser1(String adminUser1) {
        AdminUser1 = adminUser1;
    }

    public String getAdminUser2() {
        return AdminUser2;
    }

    public void setAdminUser2(String adminUser2) {
        AdminUser2 = adminUser2;
    }
}
