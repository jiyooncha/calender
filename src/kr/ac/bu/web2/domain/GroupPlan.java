package kr.ac.bu.web2.domain;

public class GroupPlan {
   
   private int gPlanId;
   private String gPlanName;
   private String gPlanStime;
   private String gPlanEtime;
   private String gPlanInfo;
   private String GroupId;
   
   public int getgPlanId() {
      return gPlanId;
   }
   public void setgPlanId(int gPlanId) {
      this.gPlanId = gPlanId;
   }
   public String getgPlanName() {
      return gPlanName;
   }
   public void setgPlanName(String gPlanName) {
      this.gPlanName = gPlanName;
   }
   public String getGroupId() {
      return GroupId;
   }
   public void setGroupId(String groupId) {
      GroupId = groupId;
   }
   public String getgPlanEtime() {
      return gPlanEtime;
   }
   public void setgPlanEtime(String gPlanEtime) {
      this.gPlanEtime = gPlanEtime;
   }
   public String getgPlanStime() {
      return gPlanStime;
   }
   public void setgPlanStime(String gPlanStime) {
      this.gPlanStime = gPlanStime;
   }
   public String getgPlanInfo() {
      return gPlanInfo;
   }
   public void setgPlanInfo(String gPlanInfo) {
      this.gPlanInfo = gPlanInfo;
   }
   
}