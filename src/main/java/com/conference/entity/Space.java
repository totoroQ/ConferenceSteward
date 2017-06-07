package com.conference.entity;

public class Space {
    private Integer spaceId;

    private Integer typeId;

    private String spaceName;
    
    private String spacePicture;

    private Float spaceArea;

    private Integer spaceCapacity;

    private Float spacePrice;
    
    private Type type;

    public String getSpaceName() {
		return spaceName;
	}

	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public Integer getSpaceId() {
        return spaceId;
    }

    public void setSpaceId(Integer spaceId) {
        this.spaceId = spaceId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getSpacePicture() {
        return spacePicture;
    }

    public void setSpacePicture(String spacePicture) {
        this.spacePicture = spacePicture;
    }

    public Float getSpaceArea() {
        return spaceArea;
    }

    public void setSpaceArea(Float spaceArea) {
        this.spaceArea = spaceArea;
    }

    public Integer getSpaceCapacity() {
        return spaceCapacity;
    }

    public void setSpaceCapacity(Integer spaceCapacity) {
        this.spaceCapacity = spaceCapacity;
    }

    public Float getSpacePrice() {
        return spacePrice;
    }

    public void setSpacePrice(Float spacePrice) {
        this.spacePrice = spacePrice;
    }
}