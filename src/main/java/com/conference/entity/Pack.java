package com.conference.entity;

public class Pack {
    private Integer packId;

    private String packName;

    private String packCity;

    private String packAddress;

    private String packPicture;

    private Integer packNumber;

    private Float packPrice;

    private String packSuitable;

    private Integer packAmount;

    private String packFavorable;

    public Integer getPackId() {
        return packId;
    }

    public void setPackId(Integer packId) {
        this.packId = packId;
    }

    public String getPackName() {
        return packName;
    }

    public void setPackName(String packName) {
        this.packName = packName;
    }

    public String getPackCity() {
        return packCity;
    }

    public void setPackCity(String packCity) {
        this.packCity = packCity;
    }

    public String getPackAddress() {
        return packAddress;
    }

    public void setPackAddress(String packAddress) {
        this.packAddress = packAddress;
    }

    public String getPackPicture() {
        return packPicture;
    }

    public void setPackPicture(String packPicture) {
        this.packPicture = packPicture;
    }

    public Integer getPackNumber() {
        return packNumber;
    }

    public void setPackNumber(Integer packNumber) {
        this.packNumber = packNumber;
    }

    public Float getPackPrice() {
        return packPrice;
    }

    public void setPackPrice(Float packPrice) {
        this.packPrice = packPrice;
    }

    public String getPackSuitable() {
        return packSuitable;
    }

    public void setPackSuitable(String packSuitable) {
        this.packSuitable = packSuitable;
    }

    public Integer getPackAmount() {
        return packAmount;
    }

    public void setPackAmount(Integer packAmount) {
        this.packAmount = packAmount;
    }

    public String getPackFavorable() {
        return packFavorable;
    }

    public void setPackFavorable(String packFavorable) {
        this.packFavorable = packFavorable;
    }

	public Pack() {
		super();
	}
	
	

	public Pack(Integer packId, String packName, String packCity,
			String packAddress, String packPicture, Integer packNumber,
			Float packPrice, String packSuitable, Integer packAmount,
			String packFavorable) {
		super();
		this.packId = packId;
		this.packName = packName;
		this.packCity = packCity;
		this.packAddress = packAddress;
		this.packPicture = packPicture;
		this.packNumber = packNumber;
		this.packPrice = packPrice;
		this.packSuitable = packSuitable;
		this.packAmount = packAmount;
		this.packFavorable = packFavorable;
	}

	@Override
	public String toString() {
		return "Pack [packId=" + packId + ", packName=" + packName
				+ ", packCity=" + packCity + ", packAddress=" + packAddress
				+ ", packPicture=" + packPicture + ", packNumber=" + packNumber
				+ ", packPrice=" + packPrice + ", packSuitable=" + packSuitable
				+ ", packAmount=" + packAmount + ", packFavorable="
				+ packFavorable + "]";
	}

	
    
}