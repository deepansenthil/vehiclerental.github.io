package com.nttdata.training.domain;


public class customer
{
	private int user_id ;
	private String name;
	private String password;
	private String city;
	private String email;
	private int contact_number;
	//private String feed_back;
	
	



	//Getter Setter:
	public int getUser_id()
	{
		return user_id;
	}

	public void setUser_id(int user_id) 
	{
		this.user_id = user_id;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getCity()
	{
		return city;
	}

	public void setCity(String city)
	{
		this.city = city;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public int getContact_number()
	{
		return contact_number;
	}

	public void setContact_number(int contact_number) 
	{
		this.contact_number = contact_number;
	}
	/*public String getFeed_back() 
	{
		return feed_back;
	}

	public void setFeed_back(String feed_back) 
	{
		this.feed_back = feed_back;
	}*/


	
	// To string
	@Override
	public String toString() {
		return "customer [user_id=" + user_id + ", name=" + name + ", password=" + password + ", city=" + city
				+ ", email=" + email + ", contact_number=" + contact_number + "]";
	}

	 


	
}
