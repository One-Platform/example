package com.sinosoft.one.showcase.webservices.cxf.dto;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-21
 * Time: 上午11:22
 * To change this template use File | Settings | File Templates.
 */
public class Authentication {

    private String security;

    public String getSecurity() {
        return security;
    }

    public void setSecurity(String security) {
        this.security = security;
    }
}
