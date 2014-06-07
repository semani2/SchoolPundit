package com.example.list2;

public class Favourites {
	public String Institute_id = "";
	public String Device_id = "";
	public String Ins_name = "";
	public String Category = "";
	public String Street = "";
	public String City = "";
	public String State = "";
	public String logo = "";
	
	public void setInstituteId(String id)
	{
		Institute_id = id;
		
	}
	public void setDeviceId(String id)
	{
		Device_id = id;
		
	}
	public void setInsName(String name)
	{
		Ins_name = name;
	}
	public void setCategory(String cat)
	{
		Category = cat;
	}
	public void setStreet(String street )
	{
		Street = street;
	}
	public void setCity(String city)
	{
		City = city;
	}
	public void setState(String state)
	{
		State = state;
	}
	public void setLogo(String logo)
	{
		this.logo = logo;
	}
	
	public String getInstituteId()
	{
		return Institute_id;
	}
	public String getDeviceId()
	{
		return Device_id;
	}
	
	public String getInsName()
	{
		return Ins_name;
	}
	
	public String getCategory()
	{
		return Category;
	}
	
	public String getStreet()
	{
		return Street;
	}
	
	public String getCity()
	{
		return City;
	}
	
	public String getState()
	{
		return State;
	}
	
	public String getLogo()
	{
		return logo;
	}


}
