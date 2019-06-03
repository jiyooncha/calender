package kr.ac.bu.web2.domain;

public class Plan {

	private int planId;
	private String planName;
	private String planPurpose;
	private String sDate;
	private String eDate;
	private String userId;
	
	public int getPlanId() {
		return planId;
	}
	public void setPlanId(int planId) {
		this.planId = planId;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getPlanPurpose() {
		return planPurpose;
	}
	public void setPlanPurpose(String planPurpose) {
		this.planPurpose = planPurpose;
	}
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}