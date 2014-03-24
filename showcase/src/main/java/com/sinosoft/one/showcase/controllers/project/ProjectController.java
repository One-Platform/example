package com.sinosoft.one.showcase.controllers.project;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

/**
 * Created by bin on 14-3-4.
 */
@Path("")
public class ProjectController {

    @Get("web")
    public String web(){
        return "web";
    }
}
