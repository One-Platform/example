package com.sinosoft.one.showcase.controllers.rule;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-12-24
 * Time: 下午6:14
 * To change this template use File | Settings | File Templates.
 */
@Path("")
public class RuleController {

    @Get("rule")
    public String rule(){
        return "rule";
    }
}
