package com.sinosoft.one.showcase.controllers;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

@Path
public class PlatformController {

	@Get("index")
	public String platformIndex(){
		return "index";
	}
    @Get("document")
    public String document(){
        return "document";
    }
    @Get("project")
    public String project(){
        return "project";
    }
    @Get("guides")
    public String guides(){
        return "guides";
    }
    @Get("demoProject")
    public String demoProject(){
        return "demoProject";
    }
}
