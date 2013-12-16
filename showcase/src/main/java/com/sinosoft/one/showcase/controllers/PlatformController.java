package com.sinosoft.one.showcase.controllers;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

@Path("")
public class PlatformController {

	@Get("platform")
	public String platformIndex(){
		return "platform";
	}
}
