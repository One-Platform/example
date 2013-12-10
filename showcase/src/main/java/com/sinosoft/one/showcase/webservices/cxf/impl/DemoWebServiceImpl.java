package com.sinosoft.one.showcase.webservices.cxf.impl;


import com.sinosoft.one.showcase.webservices.cxf.DemoWebService;
import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;
import com.sinosoft.one.showcase.webservices.cxf.dto.Position;
import com.sinosoft.one.showcase.webservices.cxf.dto.Request;
import com.sinosoft.one.showcase.webservices.cxf.dto.Response;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午11:19
 * To change this template use File | Settings | File Templates.
 */
@WebService(serviceName="DemoWebService",endpointInterface = "com.sinosoft.one.showcase.webservices.cxf.DemoWebservice",targetNamespace = "http://webservice.demo.one.sinosoft.com")
public class DemoWebServiceImpl implements DemoWebService {


    @Override
    public Response getDepartment(@WebParam(name = "request", targetNamespace = "http://webservice.demo.one.sinosoft.com") Request request) {
        Response response  = new Response();
        byte[] b1 = {127};
        Employee e1 = new Employee(23,"aaa",'m',b1,5678.7d);
        Employee e2 = new Employee(24,"bbb",'w',b1,5552.6d);
        Employee e3 = new Employee(25,"ccc",'m',b1,7784.4d);

        ArrayList<Employee> employees = new ArrayList<Employee>();
        employees.add(e1);
        employees.add(e2);
        Employee[] employees1 = new Employee[employees.size()];

        for(int i=0;i<employees1.length;i++){
            employees1[i] = employees.get(i);
        }

        ArrayList<Employee> employeeList = new ArrayList<Employee>();
        employeeList.add(e3);
        Employee[] employees2 = new Employee[employeeList.size()];
        for(int i=0;i<employees2.length;i++){
            employees2[i] = employeeList.get(i);
        }
        response.getEmployeesMap().put(Position.common.toString(),employees1);
        response.getEmployeesMap().put(Position.manager.toString(),employees2);
        response.setRetCode("0");
        response.setRetMsg("success");
        response.setSuccess(true);
        response.getEmployeeArrayList().add(e1);
        response.getEmployeeArrayList().add(e2);
        response.getEmployees().add(e3);
        return response;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public String helloWorld(String request) {
        StringBuffer sb = new StringBuffer("<?xml version='1.0' encoding='utf-8' ?>");
        sb.append("<Employee>");
        sb.append("<age>23</age>");
        sb.append("<name>john</name>");
        sb.append("<salary>10000.45</salary>");
        sb.append("</Employee>");
        return sb.toString();

    }

    @Override
    public Map<String,ArrayList<Employee>> getEmployees(@WebParam(name = "request", targetNamespace = "http://webservice.demo.one.sinosoft.com") Request request) {
        byte[] b1 = {127};
        Employee e1 = new Employee(23,"aaa",'m',b1,5678.7d);
        Employee e2 = new Employee(24,"bbb",'w',b1,5552.6d);
        Employee e3 = new Employee(25,"ccc",'m',b1,7784.4d);
        ArrayList<Employee> employees = new ArrayList<Employee>();
        HashMap<String, ArrayList<Employee>> map = new HashMap<String, ArrayList<Employee>>();
        employees.add(e1);
        employees.add(e2);
        employees.add(e3);
        map.put("employees",employees);
        return map;
    }

    @Override
    public List<Employee> getEmployeeList() {
        byte[] b1 = {127};
        Employee e1 = new Employee(23,"aaa",'m',b1,5678.7d);
        Employee e2 = new Employee(24,"bbb",'w',b1,5552.6d);
        Employee e3 = new Employee(25,"ccc",'m',b1,7784.4d);
        ArrayList<Employee> employees = new ArrayList<Employee>();
        employees.add(e1);
        employees.add(e2);
        employees.add(e3);
        return employees;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Set<Employee> getEmployeeSet() {
        byte[] b1 = {127};
        Employee e1 = new Employee(23,"aaa",'m',b1,5678.7d);
        Employee e2 = new Employee(24,"bbb",'w',b1,5552.6d);
        HashSet<Employee> employeeSet = new HashSet<Employee>();
        employeeSet.add(e1);
        employeeSet.add(e2);
        return employeeSet;
    }


}
