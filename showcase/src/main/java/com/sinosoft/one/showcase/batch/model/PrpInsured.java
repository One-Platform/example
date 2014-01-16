package com.sinosoft.one.showcase.batch.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "ONE_SHOWCASE_PRPINSURED")
public class PrpInsured {

	/**
	 * id
	 */
	private String id;

	/**
	 * 被保险人编号
	 */
	private String prpInsuredCode;
	/**
	 * 被保险人生日
	 */
	private String birthday;

	/**
	 * 被保险人名称
	 */
	private String name;

	/**
	 * 被保险人性别
	 */
	private String sex;

	/**
	 * 职业代码
	 */
	private String occupationCode;

	/**
	 * 证件类别
	 */
	private String certificateType;

	/**
	 * 证件代码
	 */
	private String certificateNo;

	/**
	 * 被保险人类别
	 */
	private String insuredType;

	/**
	 * 职业名称
	 */
	private String occupationName;

	/**
	 * 是否重复
	 */
	private String isRepeat;

	@Id
	@Column(name = "ID", unique = true, length = 32)
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid.hex")
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "PRPINSUREDCODE", length = 32)
	public String getPrpInsuredCode() {
		return prpInsuredCode;
	}

	public void setPrpInsuredCode(String prpInsuredCode) {
		this.prpInsuredCode = prpInsuredCode;
	}

	@Column(name = "BIRTHDAY", length = 20)
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@Column(name = "NAME", length = 20)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "SEX", length = 5)
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column(name = "OCCUPATIONCODE", length = 20)
	public String getOccupationCode() {
		return occupationCode;
	}

	public void setOccupationCode(String occupationCode) {
		this.occupationCode = occupationCode;
	}

	@Column(name = "CERTIFICATETYPE", length = 20)
	public String getCertificateType() {
		return certificateType;
	}

	public void setCertificateType(String certificateType) {
		this.certificateType = certificateType;
	}

	@Column(name = "CERTIFICATENO", length = 20)
	public String getCertificateNo() {
		return certificateNo;
	}

	public void setCertificateNo(String certificateNo) {
		this.certificateNo = certificateNo;
	}

	@Column(name = "INSUREDTYPE", length = 20)
	public String getInsuredType() {
		return insuredType;
	}

	public void setInsuredType(String insuredType) {
		this.insuredType = insuredType;
	}

	@Column(name = "OCCUPATIONNAME", length = 20)
	public String getOccupationName() {
		return occupationName;
	}

	public void setOccupationName(String occupationName) {
		this.occupationName = occupationName;
	}

	@Column(name = "ISREPEAT", length = 5)
	public String getIsRepeat() {
		return isRepeat;
	}

	public void setIsRepeat(String isRepeat) {
		this.isRepeat = isRepeat;
	}
}
