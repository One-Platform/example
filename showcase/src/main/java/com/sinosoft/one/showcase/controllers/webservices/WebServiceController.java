package com.sinosoft.one.showcase.controllers.webservices;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;
import org.springframework.stereotype.Controller;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-12-17
 * Time: 上午11:27
 * To change this template use File | Settings | File Templates.
 */
@Path("")
public class WebServiceController {

    @Get("webservice")
    public String webservice(){
        return "showcase_webservice";
    }
}
