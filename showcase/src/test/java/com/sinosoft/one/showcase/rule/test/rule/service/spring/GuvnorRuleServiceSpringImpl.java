package com.sinosoft.one.showcase.rule.test.rule.service.spring;

import com.sinosoft.one.rule.service.facade.DroolsRuleService;
import com.sinosoft.one.showcase.rule.test.rule.service.facade.GuvnorRuleService;
import org.springframework.beans.factory.annotation.Autowired;

public class GuvnorRuleServiceSpringImpl implements GuvnorRuleService {
	@Autowired
	public DroolsRuleService droolsRuleService;

	public void executeRule(Object... facts) throws Exception {
		droolsRuleService
				.executeRules(
						"http://localhost:8080/drools-guvnor/org.drools.guvnor.Guvnor/package/rule/LATEST/ChangeSet.xml",
						facts);
	}

}