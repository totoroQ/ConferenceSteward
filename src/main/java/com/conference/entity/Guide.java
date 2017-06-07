package com.conference.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Guide {

    private Integer guideId;  //攻略id

    private String guideTitle; //攻略标题

    private String guidePicture; //攻略图片

    private String guideAuthor; //攻略作者

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date guideTime;  //攻略时间

    private String guideContent;  //攻略内容

    private String guideType;  //攻略类型

    public Integer getGuideId() {
        return guideId;
    }

    public void setGuideId(Integer guideId) {
        this.guideId = guideId;
    }

    public String getGuideTitle() {
        return guideTitle;
    }

    public void setGuideTitle(String guideTitle) {
        this.guideTitle = guideTitle;
    }

    public String getGuidePicture() {
        return guidePicture;
    }

    public void setGuidePicture(String guidePicture) {
        this.guidePicture = guidePicture;
    }

    public String getGuideAuthor() {
        return guideAuthor;
    }

    public void setGuideAuthor(String guideAuthor) {
        this.guideAuthor = guideAuthor;
    }

    public Date getGuideTime() {
        return guideTime;
    }

    public void setGuideTime(Date guideTime) {
        this.guideTime = guideTime;
    }

    public String getGuideContent() {
        return guideContent;
    }

    public void setGuideContent(String guideContent) {
        this.guideContent = guideContent;
    }

    public String getGuideType() {
        return guideType;
    }

    public void setGuideType(String guideType) {
        this.guideType = guideType;
    }
}