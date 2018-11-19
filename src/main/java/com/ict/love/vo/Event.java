package com.ict.love.vo;

import org.apache.ibatis.type.Alias;

@Alias("ei")
public class Event {
	
	private Integer eno;
	private String etitle;
	private String edate;
	private String econtent;
	private String epicture;
	
	public Event() {}
	
	public Event(Integer eno, String etitle, String edate, String econtent, String epicture) {
		super();
		this.eno = eno;
		this.etitle = etitle;
		this.edate = edate;
		this.econtent = econtent;
		this.epicture = epicture;
	}
	/**
	 * @return the eno
	 */
	public Integer getEno() {
		return eno;
	}
	/**
	 * @param eno the eno to set
	 */
	public void setEno(Integer eno) {
		this.eno = eno;
	}
	/**
	 * @return the etitle
	 */
	public String getEtitle() {
		return etitle;
	}
	/**
	 * @param etitle the etitle to set
	 */
	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}
	/**
	 * @return the edate
	 */
	public String getEdate() {
		return edate;
	}
	/**
	 * @param edate the edate to set
	 */
	public void setEdate(String edate) {
		this.edate = edate;
	}
	/**
	 * @return the econtent
	 */
	public String getEcontent() {
		return econtent;
	}
	/**
	 * @param econtent the econtent to set
	 */
	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}
	/**
	 * @return the epicture
	 */
	public String getEpicture() {
		return epicture;
	}
	/**
	 * @param epicture the epicture to set
	 */
	public void setEpicture(String epicture) {
		this.epicture = epicture;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Event [eno=" + eno + ", etitle=" + etitle + ", edate=" + edate + ", econtent=" + econtent
				+ ", epicture=" + epicture + "]";
	}
	
	

}
