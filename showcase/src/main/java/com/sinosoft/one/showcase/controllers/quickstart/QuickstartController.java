package com.sinosoft.one.showcase.controllers.quickstart;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;
@Path("")
public class QuickstartController {
	
	@Get("restful")
	public String quickRestul(){
		return "restful_start";
	}
}
