package com.sinosoft.one.showcase.controllers.lazyload;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;


/**
 * Created with IntelliJ IDEA.
 * User: king-bj
 * Date: 13-12-12
 * Time: 下午7:19
 * To change this template use File | Settings | File Templates.
 */
@Path("")
public class LazyloadController {

    @Get("lazyshow")
    public String lazyload() {
        return "lazyshow";
    }

}
