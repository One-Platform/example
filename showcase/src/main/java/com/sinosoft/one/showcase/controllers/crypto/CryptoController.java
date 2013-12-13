package com.sinosoft.one.showcase.controllers.crypto;

import org.springframework.data.repository.query.Param;

import com.alibaba.fastjson.JSONObject;
import com.sinosoft.one.mvc.web.Invocation;
import com.sinosoft.one.mvc.web.annotation.Path;
import com.sinosoft.one.mvc.web.annotation.rest.Get;
import com.sinosoft.one.mvc.web.annotation.rest.Post;
import com.sinosoft.one.mvc.web.instruction.reply.Reply;
import com.sinosoft.one.mvc.web.instruction.reply.Replys;
import com.sinosoft.one.mvc.web.instruction.reply.transport.Json;
import com.sinosoft.one.showcase.crypto.User;

/**
 * 前端加密，后端解密的Controller
 * 
 * @author ZFB
 *
 */

@Path("")
public class CryptoController {

	@Get("doc")
	public String cryptoDoc() {
		return "cryptoDoc";
	}

	@Get("frontCrypto")
	public String frontCrypto() {
		return "frontCrypto";
	}

	@Post("bgUncrypto")
	public String backgroundUncrypto(@Param("user") User user,
			Invocation invocation) {
		invocation.addModel("loginName", invocation.getParameter("loginName"));
		invocation.addModel("password", invocation.getParameter("password"));
		invocation.addModel("description",
				invocation.getParameter("description"));
		return "bgUncrypto";
	}

	@Post("ajaxBgUncrypto")
	public Reply ajaxBackgroundUncrypto(Invocation invocation) {
		String name = invocation.getParameter("name");
		String gender = invocation.getParameter("gender");
		String sport = invocation.getParameter("sport");
		String address = invocation.getParameter("address");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("name", name);
		jsonObject.put("gender", gender);
		jsonObject.put("sport", sport);
		jsonObject.put("address", address);
		return Replys.with(jsonObject).as(Json.class);
	}
}