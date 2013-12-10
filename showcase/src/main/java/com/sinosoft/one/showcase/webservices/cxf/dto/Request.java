package com.sinosoft.one.showcase.webservices.cxf.dto;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午11:12
 * To change this template use File | Settings | File Templates.
 */
public class Request {

    private Authentication authentication;

    public Authentication getAuthentication() {
        return authentication;
    }

    public void setAuthentication(Authentication authentication) {
        this.authentication = authentication;
    }
}
