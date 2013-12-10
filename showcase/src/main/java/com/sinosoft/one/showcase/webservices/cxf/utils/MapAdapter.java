package com.sinosoft.one.showcase.webservices.cxf.utils;


import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;

import javax.xml.bind.annotation.adapters.XmlAdapter;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 下午3:48
 * To change this template use File | Settings | File Templates.
 */
public class MapAdapter extends XmlAdapter<UserMap, Map<String,ArrayList<Employee>>>{

    @Override
    public Map unmarshal(UserMap userMap) throws Exception {
        Map<String,ArrayList<Employee>> map = new HashMap<String, ArrayList<Employee>>();
        for(UserMap.MapEntity mapEntity:userMap.getEntry()){
            map.put(mapEntity.getKey(),mapEntity.getValue());
        }
        return map;
    }

    @Override
    public UserMap marshal(Map<String,ArrayList<Employee>> map) throws Exception {
        UserMap userMap = new UserMap();
        for(Map.Entry<String,ArrayList<Employee>> e:map.entrySet()){
            UserMap.MapEntity mapEntity = new UserMap.MapEntity();
            mapEntity.setKey(e.getKey());
            mapEntity.setValue(e.getValue());
            userMap.getEntry().add(mapEntity);
        }
        return userMap;
    }

}
