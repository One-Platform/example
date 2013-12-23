package com.sinosoft.one.showcase.controllers.quickkey;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

/**
 * Created with IntelliJ IDEA.
 * User: king-bj
 * Date: 13-12-13
 * Time: 上午11:15
 * To change this template use File | Settings | File Templates.
 */
@Path("")
public class QuickkeyController {

    @Get("showdoc")
    public String showdoc() {
        return "quickkey";
    }

}
