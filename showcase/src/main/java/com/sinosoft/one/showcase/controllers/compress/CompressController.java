package com.sinosoft.one.showcase.controllers.compress;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

/**
 * Created with IntelliJ IDEA.
 * User: king-bj
 * Date: 13-12-13
 * Time: 上午11:25
 * To change this template use File | Settings | File Templates.
 */

@Path("")
public class CompressController {

    @Get("showdoc")
    public String showdoc() {
        //System.out.println("#########分割线##########");
        return "showdoc";
    }

}
