package com.sinosoft.one.showcase.webservices.cxf;

import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;
import com.sinosoft.one.showcase.webservices.cxf.dto.Request;
import com.sinosoft.one.showcase.webservices.cxf.dto.Response;
import com.sinosoft.one.showcase.webservices.cxf.utils.MapAdapter;
import com.sinosoft.one.showcase.webservices.cxf.utils.ResponseAdapter;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午11:08
 * To change this template use File | Settings | File Templates.
 */
@WebService(targetNamespace = "http://webservice.demo.one.sinosoft.com", name = "DemoWebService")
public interface DemoWebService {

    /**
     * 对象传输
     * @param request 请求参数
     * @return 返回参数
     */
    @WebMethod(operationName = "getDepartment")
    public
    @XmlJavaTypeAdapter(ResponseAdapter.class)
    Response getDepartment(@WebParam(name = "request", targetNamespace = "http://webservice.demo.one.sinosoft.com") Request request);

    /**
     * xml文档传输
     * @param request 请求参数
     * @return 返回参数
     */
    @WebMethod(operationName = "helloWorld")
    public String helloWorld(String request);

    /**
     * map类型传递
     * @param request
     * @return
     */
    @WebMethod(operationName = "getEmployees")
    @XmlJavaTypeAdapter(MapAdapter.class)
    public Map<String,ArrayList<Employee>> getEmployees(@WebParam(name = "request", targetNamespace = "http://webservice.demo.one.sinosoft.com") Request request);

    @WebMethod(operationName = "getEmployeeList")
    public List<Employee> getEmployeeList();

    @WebMethod(operationName = "getEmployeeSet")
    public Set<Employee> getEmployeeSet();
}
