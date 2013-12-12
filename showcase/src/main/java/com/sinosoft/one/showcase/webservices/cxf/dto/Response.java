package com.sinosoft.one.showcase.webservices.cxf.dto;

import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午11:13
 * To change this template use File | Settings | File Templates.
 */
public class Response {

    private String retMsg;
    private String retCode;
    private boolean success =false;
    private Set<Employee> employees = new HashSet<Employee>();
    private List<Employee> employeeArrayList = new ArrayList<Employee>();
    private Map<String,Employee[]> employeesMap = new HashMap<String,Employee[]>();


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

    public Map<String, Employee[]> getEmployeesMap() {
        return employeesMap;
    }

    public void setEmployeesMap(Map<String, Employee[]> employeesMap) {
        this.employeesMap = employeesMap;
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
}
