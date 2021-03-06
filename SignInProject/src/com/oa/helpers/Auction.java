package com.oa.helpers;

public class Auction {
	
	private String id;
	private String bidstarttime;
	private String bidendtime;
	private String bidpricestart;
	private String bidpricemax;
	private String description;
	private String itemsfk;
		private ProductItem productitem;

	private String userid;
		private User user;

	private String dateCreated;
	private String datemodified;
	private String bidstate;


	public Auction() {
		
		
	}
	
	public String getId() {
		return this.id;
	}
	public void setId(String id) {
		this.id = id; 
	}
	
	public String getBidstarttime() {
		return this.bidstarttime;
	}
	public void setBidstarttime(String bidstarttime) {
		this.bidstarttime = bidstarttime.replaceAll("\\.\\d+", "");
	}
	
	public String getBidendtime() {
		return this.bidendtime;
	}
		public void setBidendtime(String bidendtime) {
		this.bidendtime = bidendtime.replaceAll("\\.\\d+", "");
	}

	public String getBidpricestart() {
		return this.bidpricestart;
	}
	public void setBidpricestart(String bidpricestart) {
		this.bidpricestart = bidpricestart;
	}
	public String getBidpricemax() {
		return this.bidpricemax;
	}
	public void setBidpricemax(String bidpricemax) {
		this.bidpricemax = bidpricemax;
	}
	
	

	public String getDescription() {
		return this.description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getItemsfk() {
		return this.itemsfk;
	}
	public void setItemsfk(String itemsfk) {
		this.itemsfk = itemsfk;
	}

	

	public ProductItem getProductitem() {
		return this.productitem;
	}
	public void setProductitem(ProductItem productitem) {
		this.productitem = productitem;
	}

	
	public String getUserid() {
		return this.userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	public User getUser() {
		return this.user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public String getDateCreated() {
		return this.dateCreated;
	}
	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated.replaceAll("\\.\\d+", "");
	}
	public String getDatemodified() {
		return this.datemodified;
	}
	public void setDatemodified(String datemodified) {
		this.datemodified = datemodified.replaceAll("\\.\\d+", "");
	}
	
	
	public String getDidstate() {
		return this.bidstate;
	}
	public void setBidstate(String bidstate) {
		this.bidstate = bidstate;
	}
}
