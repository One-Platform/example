package com.sinosoft.one.showcase.rule.test.rule.model;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="GE_PRO_DELIVERY")
public class ProDelivery
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String orderNo;
  private ProOrder proOrder;
  private String consignee;
  private String mobile;
  private String deliveryAddress;
  private Date deliveryDate;
  private String flag;
  private String description;
  private BcProvince province;
  private BcCity city;
  private BcDistrict district;

  @GenericGenerator(name="generator", strategy="foreign", parameters={@org.hibernate.annotations.Parameter(name="property", value="proOrder")})
  @Id
  @Column(name="ORDERNO", unique=true)
  @JsonIgnore
  public String getOrderNo()
  {
    return this.orderNo;
  }

  public void setOrderNo(String orderNo)
  {
    this.orderNo = orderNo;
  }

  @OneToOne(fetch=FetchType.LAZY)
  @PrimaryKeyJoinColumn
  @JsonIgnore
  public ProOrder getProOrder() {
    return this.proOrder;
  }

  public void setProOrder(ProOrder proOrder)
  {
    this.proOrder = proOrder;
  }

  @Column(name="CONSIGNEE")
  public String getConsignee()
  {
    return this.consignee;
  }

  public void setConsignee(String consignee)
  {
    this.consignee = consignee;
  }

  @Column(name="MOBILE")
  public String getMobile()
  {
    return this.mobile;
  }

  public void setMobile(String mobile)
  {
    this.mobile = mobile;
  }

  @Column(name="DELIVERYADDRESS")
  public String getDeliveryAddress()
  {
    return this.deliveryAddress;
  }

  public void setDeliveryAddress(String deliveryAddress)
  {
    this.deliveryAddress = deliveryAddress;
  }

  @Temporal(TemporalType.DATE)
  @Column(name="DELIVERYDATE")
  public Date getDeliveryDate()
  {
    return this.deliveryDate;
  }

  public void setDeliveryDate(Date deliveryDate)
  {
    this.deliveryDate = deliveryDate;
  }

  @Column(name="FLAG")
  public String getFlag()
  {
    return this.flag;
  }

  public void setFlag(String flag)
  {
    this.flag = flag;
  }

  @Column(name="DESCRIPTION")
  public String getDescription()
  {
    return this.description;
  }

  public void setDescription(String description)
  {
    this.description = description;
  }

  @ManyToOne
  @JoinColumn(name="DISTRICT")
  @JsonIgnore
  public BcDistrict getDistrict() {
    return this.district;
  }

  public void setDistrict(BcDistrict district)
  {
    this.district = district;
  }

  @ManyToOne
  @JoinColumn(name="PROVINCE")
  @JsonIgnore
  public BcProvince getProvince() {
    return this.province;
  }

  public void setProvince(BcProvince province)
  {
    this.province = province;
  }

  @ManyToOne
  @JoinColumn(name="CITY")
  @JsonIgnore
  public BcCity getCity() {
    return this.city;
  }

  public void setCity(BcCity city)
  {
    this.city = city;
  }
}

/* Location:           C:\Users\carvin\Desktop\order-0.1.0-SNAPSHOT.jar
 * Qualified Name:     com.sinosoft.ebusiness.order.model.ProDelivery
 * JD-Core Version:    0.6.0
 */