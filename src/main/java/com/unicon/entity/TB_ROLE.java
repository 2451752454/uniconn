package com.unicon.entity;

import java.math.BigDecimal;

public class TB_ROLE {
    private BigDecimal ROLEID;
    private String ROLENAME;

    public BigDecimal getROLEID() {
        return ROLEID;
    }

    public void setROLEID(BigDecimal ROLEID) {
        this.ROLEID = ROLEID;
    }

    public String getROLENAME() {
        return ROLENAME;
    }

    public void setROLENAME(String ROLENAME) {
        this.ROLENAME = ROLENAME;
    }

    public TB_ROLE(BigDecimal ROLEID, String ROLENAME) {
        this.ROLEID = ROLEID;
        this.ROLENAME = ROLENAME;
    }

    public TB_ROLE() {
    }
}
