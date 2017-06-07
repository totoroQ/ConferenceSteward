package com.conference.entity;

public class Conference {
    private Integer conferenceId;
    
    private String conferenceName;
    
    private String typeName;

    
	private String conferencePicture;

    private String conferenceCity;

    private String conferenceDuration;
    
    private Integer conferenceAmount;

    private Integer conferenceNumber;

    private Float conferencePrice;

    private String conferenceIdentification;
    
    

	public Conference() {
		super();
	}

	public Integer getConferenceId() {
		return conferenceId;
	}

	public void setConferenceId(Integer conferenceId) {
		this.conferenceId = conferenceId;
	}

	public String getConferenceName() {
		return conferenceName;
	}

	public void setConferenceName(String conferenceName) {
		this.conferenceName = conferenceName;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getConferencePicture() {
		return conferencePicture;
	}

	public void setConferencePicture(String conferencePicture) {
		this.conferencePicture = conferencePicture;
	}

	public String getConferenceCity() {
		return conferenceCity;
	}

	public void setConferenceCity(String conferenceCity) {
		this.conferenceCity = conferenceCity;
	}

	public String getConferenceDuration() {
		return conferenceDuration;
	}

	public void setConferenceDuration(String conferenceDuration) {
		this.conferenceDuration = conferenceDuration;
	}

	public Integer getConferenceAmount() {
		return conferenceAmount;
	}

	public void setConferenceAmount(Integer conferenceAmount) {
		this.conferenceAmount = conferenceAmount;
	}

	public Integer getConferenceNumber() {
		return conferenceNumber;
	}

	public void setConferenceNumber(Integer conferenceNumber) {
		this.conferenceNumber = conferenceNumber;
	}

	public Float getConferencePrice() {
		return conferencePrice;
	}

	public void setConferencePrice(Float conferencePrice) {
		this.conferencePrice = conferencePrice;
	}

	public String getConferenceIdentification() {
		return conferenceIdentification;
	}

	public void setConferenceIdentification(String conferenceIdentification) {
		this.conferenceIdentification = conferenceIdentification;
	}

	@Override
	public String toString() {
		return "Conference [conferenceId=" + conferenceId + ", conferenceName="
				+ conferenceName + ", typeName=" + typeName
				+ ", conferencePicture=" + conferencePicture
				+ ", conferenceCity=" + conferenceCity
				+ ", conferenceDuration=" + conferenceDuration
				+ ", conferenceAmount=" + conferenceAmount
				+ ", conferenceNumber=" + conferenceNumber
				+ ", conferencePrice=" + conferencePrice
				+ ", conferenceIdentification=" + conferenceIdentification
				+ "]";
	}
	
	

   
}