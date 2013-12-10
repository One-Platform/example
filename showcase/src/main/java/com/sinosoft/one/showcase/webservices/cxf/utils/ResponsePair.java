package com.sinosoft.one.showcase.webservices.cxf.utils;


import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-28
 * Time: 下午2:13
 * To change this template use File | Settings | File Templates.
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class ResponsePair {

    private String retMsg;
    private String retCode;
    @XmlElement(nillable = false, name = "entry")
    private List<MyEntity> entities = new ArrayList<MyEntity>();
    private boolean success =false;
    private Set<Employee> employees = new HashSet<Employee>();
    private List<Employee> employeeArrayList = new ArrayList<Employee>();

    public String getRetMsg() {
        return retMsg;
    }

    public void setRetMsg(String retMsg) {
        this.retMsg = retMsg;
    }

    public String getRetCode() {
        return retCode;
    }

    public void setRetCode(String retCode) {
        this.retCode = retCode;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public Set<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(Set<Employee> employees) {
        this.employees = employees;
    }

    public List<Employee> getEmployeeArrayList() {
        return employeeArrayList;
    }

    public void setEmployeeArrayList(List<Employee> employeeArrayList) {
        this.employeeArrayList = employeeArrayList;
    }

    public List<MyEntity> getEntities() {
        return entities;
    }

    @XmlAccessorType(XmlAccessType.FIELD)
    static class MyEntity{
        //Map keys cannot be null
        @XmlElement(required = true, nillable = false)
        private String key;
        private Employee[] value;

        String getKey() {
            return key;
        }

        void setKey(String key) {
            this.key = key;
        }

        Employee[] getValue() {
            return value;
        }

        void setValue(Employee[] value) {
            this.value = value;
        }
    }


}
