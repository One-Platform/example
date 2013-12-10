package com.sinosoft.one.showcase.webservices.cxf.dto;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午10:57
 * To change this template use File | Settings | File Templates.
 */
public class Company {
    /*
    名字
     */
    private String name;
    /*
    部门
     */
    private ArrayList<Department> departments = new ArrayList<Department>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<Department> getDepartments() {
        return departments;
    }

    public void setDepartments(ArrayList<Department> departments) {
        this.departments = departments;
    }
}
