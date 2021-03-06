package com.sinosoft.one.showcase.rule.test.rule.model;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name="GE_PRO_ITEMHOUSE")
public class ProItemHouse
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String serialNo;
  private ProOrder proOrder;
  private BcProvince province;
  private BcCity city;
  private BcDistrict district;
  private String addressName;
  private String structure;
  private BigDecimal buildArea;
  private String flag;

  @Id
  @GeneratedValue(generator="system-uuid")
  @GenericGenerator(name="system-uuid", strategy="uuid.hex")
  @Column(name="SERIALNO")
  public String getSerialNo()
  {
    return this.serialNo;
  }

  public void setSerialNo(String serialNo)
  {
    this.serialNo = serialNo;
  }

  @ManyToOne(fetch=FetchType.LAZY)
  @JoinColumn(name="ORDERNO")
  @JsonIgnore
  public ProOrder getProOrder() {
    return this.proOrder;
  }

  public void setProOrder(ProOrder proOrder)
  {
    this.proOrder = proOrder;
  }

  @Column(name="ADDRESSNAME")
  public String getAddressName()
  {
    return this.addressName;
  }

  public void setAddressName(String addressName)
  {
    this.addressName = addressName;
  }

  @Column(name="STRUCTURE")
  public String getStructure()
  {
    return this.structure;
  }

  public void setStructure(String structure)
  {
    this.structure = structure;
  }

  @Column(name="BUILDAREA")
  public BigDecimal getBuildArea()
  {
    return this.buildArea;
  }

  public void setBuildArea(BigDecimal buildArea)
  {
    this.buildArea = buildArea;
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
 * Qualified Name:     com.sinosoft.ebusiness.order.model.ProItemHouse
 * JD-Core Version:    0.6.0
 */