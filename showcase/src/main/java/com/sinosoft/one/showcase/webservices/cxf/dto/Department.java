package com.sinosoft.one.showcase.webservices.cxf.dto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午10:55
 * To change this template use File | Settings | File Templates.
 */
public class Department {

    /*
    名字
     */
    private String name;
    /*
    员工
     */
    private Map<String,ArrayList<Employee>> employeeMap = new HashMap<String, ArrayList<Employee>>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<String, ArrayList<Employee>> getEmployeeMap() {
        return employeeMap;
    }

    public void setEmployeeMap(Map<String, ArrayList<Employee>> employeeMap) {
        this.employeeMap = employeeMap;
    }

}
