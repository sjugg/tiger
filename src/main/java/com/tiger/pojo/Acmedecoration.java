package com.tiger.pojo;

import java.util.Date;
import java.util.List;

public class Acmedecoration {
    private Integer acmedecorationId;

    private String acmedecorationName;

    private String acmedecorationMaxpic;

    private String acmedecorationPic;

    private String acmedecorationMinpic;

    private String acmedecorationInfo;

    private String acmedecorationPageview;

    private Date acmedecorationTime;
    
    private List<Acmedecorationpic> acmedecorationpic;

    public Integer getAcmedecorationId() {
        return acmedecorationId;
    }

    public void setAcmedecorationId(Integer acmedecorationId) {
        this.acmedecorationId = acmedecorationId;
    }

    public String getAcmedecorationName() {
        return acmedecorationName;
    }

    public void setAcmedecorationName(String acmedecorationName) {
        this.acmedecorationName = acmedecorationName == null ? null : acmedecorationName.trim();
    }

    public String getAcmedecorationMaxpic() {
        return acmedecorationMaxpic;
    }

    public void setAcmedecorationMaxpic(String acmedecorationMaxpic) {
        this.acmedecorationMaxpic = acmedecorationMaxpic == null ? null : acmedecorationMaxpic.trim();
    }

    public String getAcmedecorationPic() {
        return acmedecorationPic;
    }

    public void setAcmedecorationPic(String acmedecorationPic) {
        this.acmedecorationPic = acmedecorationPic == null ? null : acmedecorationPic.trim();
    }

    public String getAcmedecorationMinpic() {
        return acmedecorationMinpic;
    }

    public void setAcmedecorationMinpic(String acmedecorationMinpic) {
        this.acmedecorationMinpic = acmedecorationMinpic == null ? null : acmedecorationMinpic.trim();
    }

    public String getAcmedecorationInfo() {
        return acmedecorationInfo;
    }

    public void setAcmedecorationInfo(String acmedecorationInfo) {
        this.acmedecorationInfo = acmedecorationInfo == null ? null : acmedecorationInfo.trim();
    }

    public String getAcmedecorationPageview() {
        return acmedecorationPageview;
    }

    public void setAcmedecorationPageview(String acmedecorationPageview) {
        this.acmedecorationPageview = acmedecorationPageview == null ? null : acmedecorationPageview.trim();
    }

    public Date getAcmedecorationTime() {
        return acmedecorationTime;
    }

    public void setAcmedecorationTime(Date acmedecorationTime) {
        this.acmedecorationTime = acmedecorationTime;
    }

	public List<Acmedecorationpic> getAcmedecorationpic() {
		return acmedecorationpic;
	}

	public void setAcmedecorationpic(List<Acmedecorationpic> acmedecorationpic) {
		this.acmedecorationpic = acmedecorationpic;
	}
}