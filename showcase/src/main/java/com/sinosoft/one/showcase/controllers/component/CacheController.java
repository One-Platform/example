package com.sinosoft.one.showcase.controllers.component;

import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;

@Path("cache")
public class CacheController {
	
	@Get("doc")
	public String cacheDoc(){
		return "cacheDoc";
	}
}
