package com.sinosoft.one.showcase.webservices.cxf.utils;


import com.sinosoft.one.showcase.webservices.cxf.dto.Employee;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-27
 * Time: 下午4:39
 * To change this template use File | Settings | File Templates.
 */
@XmlType(name="MapConvertor")
@XmlAccessorType(XmlAccessType.FIELD)
public class UserMap {

    @XmlElement(nillable = false, name = "entry")
    List<MapEntity> entry = new ArrayList<MapEntity>();

    public List<MapEntity> getEntry() {
        return entry;
    }

    @XmlAccessorType(XmlAccessType.FIELD)
    static class MapEntity{
        //Map keys cannot be null
        @XmlElement(required = true, nillable = false)
        String key;
        ArrayList<Employee> value;

        ArrayList<Employee> getValue() {
            return value;
        }

        void setValue(ArrayList<Employee> value) {
            this.value = value;
        }

        String getKey() {
            return key;
        }

        void setKey(String key) {
            this.key = key;
        }
    }

}
