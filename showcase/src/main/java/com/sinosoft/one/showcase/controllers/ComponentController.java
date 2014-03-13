package com.sinosoft.one.showcase.controllers;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

@Path("component")
public class ComponentController {

	@Get("app")
	public String applicationComponents(){
		return "applicationComponent";
	}
	
	@Get("ui")
	public String uiComponents(){
		return "uiComponent";
	}
	
	@Get("service")
	public String serviceComponents(){
		return "serviceComponent";
	}
	
	@Get("data")
	public String dataComponents(){
		return "dataComponent";
	}
}
