package com.douding.user.entity;

import com.gj.entity.SanJI;
import com.gj.entity.UserInfo;

/**
 * 企业
 * @author Administrator
 *
 */
public class Enterprise extends User {
	
	 private String enterpriseId;
     private String fromId;                      //用户Id
     private String enterpriseName;       //企业名称
     private String registerAddress;     //注册地址
     private String businessLicensePicture;   //营业执照照片
     private String unifiedSocialCreditCode;  //统一社会信用代码
     private String legalPersonName;    //法人姓名
     private String createTime;               //创建时间
     private String legalPersonPicture;  //法人身份证照片（正反两张）
     private String enterpriseWeb;    //企业官网（选填）
     private String serviceRating;   //服务等级
     private String sphereOfBusiness;//经验范围
     private String licenceIssuingAuthority;//发证机关
     private Double registeredCapital; //注册资本
     private String registeredTime;    //
     private String companyProfile; //公司简介
     private SanJI  region;    //所在区域
     
     
	public SanJI getRegion() {
		return region;
	}
	public void setRegion(SanJI region) {
		this.region = region;
	}
	public String getEnterpriseId() {
		return enterpriseId;
	}
	public void setEnterpriseId(String enterpriseId) {
		this.enterpriseId = enterpriseId;
	}
	public String getFromId() {
		return fromId;
	}
	public void setFromId(String fromId) {
		this.fromId = fromId;
	}
	public String getEnterpriseName() {
		return enterpriseName;
	}
	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}
	public String getRegisterAddress() {
		return registerAddress;
	}
	public void setRegisterAddress(String registerAddress) {
		this.registerAddress = registerAddress;
	}
	public String getBusinessLicensePicture() {
		return businessLicensePicture;
	}
	public void setBusinessLicensePicture(String businessLicensePicture) {
		this.businessLicensePicture = businessLicensePicture;
	}
	public String getUnifiedSocialCreditCode() {
		return unifiedSocialCreditCode;
	}
	public void setUnifiedSocialCreditCode(String unifiedSocialCreditCode) {
		this.unifiedSocialCreditCode = unifiedSocialCreditCode;
	}
	public String getLegalPersonName() {
		return legalPersonName;
	}
	public void setLegalPersonName(String legalPersonName) {
		this.legalPersonName = legalPersonName;
	}
	public String getLegalPersonPicture() {
		return legalPersonPicture;
	}
	public void setLegalPersonPicture(String legalPersonPicture) {
		this.legalPersonPicture = legalPersonPicture;
	}
	public String getEnterpriseWeb() {
		return enterpriseWeb;
	}
	public void setEnterpriseWeb(String enterpriseWeb) {
		this.enterpriseWeb = enterpriseWeb;
	}
	public String getServiceRating() {
		return serviceRating;
	}
	public void setServiceRating(String serviceRating) {
		this.serviceRating = serviceRating;
	}
	public String getCompanyProfile() {
		return companyProfile;
	}
	public void setCompanyProfile(String companyProfile) {
		this.companyProfile = companyProfile;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getSphereOfBusiness() {
		return sphereOfBusiness;
	}
	public void setSphereOfBusiness(String sphereOfBusiness) {
		this.sphereOfBusiness = sphereOfBusiness;
	}
	public String getLicenceIssuingAuthority() {
		return licenceIssuingAuthority;
	}
	public void setLicenceIssuingAuthority(String licenceIssuingAuthority) {
		this.licenceIssuingAuthority = licenceIssuingAuthority;
	}
	public Double getRegisteredCapital() {
		return registeredCapital;
	}
	public void setRegisteredCapital(Double registeredCapital) {
		this.registeredCapital = registeredCapital;
	}
	public String getRegisteredTime() {
		return registeredTime;
	}
	public void setRegisteredTime(String registeredTime) {
		this.registeredTime = registeredTime;
	}
	@Override
	public String toString() {
		return "Enterprise [enterpriseId=" + enterpriseId + ", fromId="
				+ fromId + ", enterpriseName=" + enterpriseName
				+ ", registerAddress=" + registerAddress
				+ ", businessLicensePicture=" + businessLicensePicture
				+ ", unifiedSocialCreditCode=" + unifiedSocialCreditCode
				+ ", legalPersonName=" + legalPersonName
				+ ", legalPersonPicture=" + legalPersonPicture
				+ ", enterpriseWeb=" + enterpriseWeb + ", serviceRating="
				+ serviceRating + ", companyProfile=" + companyProfile + "]";
	}

	
}
