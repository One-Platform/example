package com.sinosoft.one.showcase.webservices.cxf.utils;

import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;
import com.sinosoft.one.showcase.webservices.cxf.dto.Response;

import javax.xml.bind.annotation.adapters.XmlAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-28
 * Time: 下午2:12
 * To change this template use File | Settings | File Templates.
 */
public class ResponseAdapter extends XmlAdapter<ResponsePair,Response> {


    @Override
    public Response unmarshal(ResponsePair v) throws Exception {
        Response response = new Response();
        response.setRetCode(v.getRetCode());
        response.setRetMsg(v.getRetMsg());
        response.setSuccess(v.isSuccess());
        Map<String, Employee[]> map = new HashMap<String,Employee[]>();
        for(ResponsePair.MyEntity e:v.getEntities()){
            map.put(e.getKey(),e.getValue());
        }
        return response;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public ResponsePair marshal(Response v) throws Exception {
        ResponsePair responsePair = new ResponsePair();
        responsePair.setRetCode(v.getRetCode());
        responsePair.setRetMsg(v.getRetMsg());
        responsePair.setSuccess(v.isSuccess());
        for(Map.Entry<String,Employee[]> e:v.getEmployeesMap().entrySet() ){
            ResponsePair.MyEntity entity = new ResponsePair.MyEntity();
            entity.setKey(e.getKey());
            entity.setValue(e.getValue());
            responsePair.getEntities().add(entity);
        }
        return responsePair;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
