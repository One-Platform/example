package com.sinosoft.one.showcase.webservices.cxf;

import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;
import com.sinosoft.one.showcase.webservices.cxf.dto.Request;
import com.sinosoft.one.showcase.webservices.cxf.dto.Response;
import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-12-13
 * Time: 下午3:13
 * To change this template use File | Settings | File Templates.
 */
@DirtiesContext
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/applicationContext-cxf.xml")
@Service
public class DemoWebServiceTest {


    private DemoWebService demoWebService;

    @Before
    public void before(){
        JaxWsProxyFactoryBean service = new JaxWsProxyFactoryBean();
        service.setServiceClass(DemoWebService.class);
        service.setAddress("http://localhost:9000/showcase/services/DemoWebService");
        demoWebService = (DemoWebService)service.create();
    }

    /**
     *集合传递测试
     */
    @Test
    public void listTest(){
        List<Employee> list = demoWebService.getEmployeeList();
        Assert.notEmpty(list);
        for(int i=0;i<list.size();i++){
            System.out.println(list.get(i).getAge());
        }

        Set<Employee> set = demoWebService.getEmployeeSet();
        Assert.notEmpty(set);
        for(int i=0;i<set.size();i++){
            System.out.println(list.get(i).getName());
        }
    }

    /**
     * map传递测试
     */
    @Test
    public void mapTest(){
        Request request = new Request();
        Map<String,ArrayList<Employee>> map = demoWebService.getEmployees(request);
        Assert.notEmpty(map);
        for(Map.Entry<String,ArrayList<Employee>> entry:map.entrySet()){
            System.out.println(entry.getKey()+"---"+entry.getValue());
        }
    }

    /**
     * 对象传递
     */
    public void objTest(){
        Request request = new Request();
        Response response = demoWebService.getDepartment(request);
        Assert.notNull(response);
    }
}
