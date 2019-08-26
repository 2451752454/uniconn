package com.unicon.entity;

import java.math.BigDecimal;

public class MUEU {
	private  BigDecimal ROLEID;
	private  String ROLENAME;
	private  BigDecimal JURISDICTIONID;
	private  String JURISDICTIONNAME;
	private  BigDecimal MENUID;
	private  String MENUNAME;
	private  String URL;
	private  String ROLEMENU;
	public BigDecimal getROLEID() {
		return ROLEID;
	}
	public void setROLEID(BigDecimal rOLEID) {
		ROLEID = rOLEID;
	}
	public String getROLENAME() {
		return ROLENAME;
	}
	public void setROLENAME(String rOLENAME) {
		ROLENAME = rOLENAME;
	}
	public BigDecimal getJURISDICTIONID() {
		return JURISDICTIONID;
	}
	public void setJURISDICTIONID(BigDecimal jURISDICTIONID) {
		JURISDICTIONID = jURISDICTIONID;
	}
	public String getJURISDICTIONNAME() {
		return JURISDICTIONNAME;
	}
	public void setJURISDICTIONNAME(String jURISDICTIONNAME) {
		JURISDICTIONNAME = jURISDICTIONNAME;
	}
	public BigDecimal getMENUID() {
		return MENUID;
	}
	public void setMENUID(BigDecimal mENUID) {
		MENUID = mENUID;
	}
	public String getMENUNAME() {
		return MENUNAME;
	}
	public void setMENUNAME(String mENUNAME) {
		MENUNAME = mENUNAME;
	}
	
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		URL = uRL;
	}

	public String getROLEMENU() {
		return ROLEMENU;
	}
	public void setROLEMENU(String rOLEMENU) {
		ROLEMENU = rOLEMENU;
	}

	public MUEU(BigDecimal ROLEID, String JURISDICTIONNAME) {
		this.ROLEID = ROLEID;
		this.JURISDICTIONNAME = JURISDICTIONNAME;
	}

	public MUEU(BigDecimal rOLEID, String rOLENAME, BigDecimal jURISDICTIONID, String jURISDICTIONNAME,
				BigDecimal mENUID, String mENUNAME, String uRL, String rOLEMENU) {
		super();
		ROLEID = rOLEID;
		ROLENAME = rOLENAME;
		JURISDICTIONID = jURISDICTIONID;
		JURISDICTIONNAME = jURISDICTIONNAME;
		MENUID = mENUID;
		MENUNAME = mENUNAME;
		URL = uRL;
		ROLEMENU = rOLEMENU;
	}
	public MUEU() {
		super();
	}
	

}
