package com.sinosoft.one.showcase.rule.test.rule.service.spring;

import com.sinosoft.one.rule.service.facade.DroolsRuleService;
import com.sinosoft.one.showcase.rule.test.rule.service.facade.OtherRuleService;
import org.springframework.beans.factory.annotation.Autowired;

public class OtherRuleServiceSpringImpl implements OtherRuleService {
	@Autowired
	public DroolsRuleService droolsRuleService;

	public void executeRule(Object fact) throws Exception {
		droolsRuleService.executeRules("otherChangeSet.xml", fact);
	}

}