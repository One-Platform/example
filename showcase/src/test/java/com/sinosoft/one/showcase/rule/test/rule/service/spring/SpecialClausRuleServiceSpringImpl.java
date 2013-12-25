package com.sinosoft.one.showcase.rule.test.rule.service.spring;

import com.sinosoft.one.rule.service.facade.DroolsRuleService;
import com.sinosoft.one.showcase.rule.test.rule.service.facade.SpecialClausRuleService;
import org.springframework.beans.factory.annotation.Autowired;

public class SpecialClausRuleServiceSpringImpl implements
        SpecialClausRuleService {
	@Autowired
	public DroolsRuleService droolsRuleService;

	public void executeRule(Object global, Object... facts) throws Exception {
		droolsRuleService.executeRulesWithGlobal(global,
				"specialClausChangeSet.xml", facts);
	}
}