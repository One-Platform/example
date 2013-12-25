package com.sinosoft.one.showcase.rule.test.rule.service.spring;

import com.sinosoft.one.rule.domain.InputBOM;
import com.sinosoft.one.rule.service.facade.DroolsRuleService;
import com.sinosoft.one.showcase.rule.test.rule.service.facade.ProposalRuleService;
import org.springframework.beans.factory.annotation.Autowired;

public class ProposalRuleServiceSpringImpl implements ProposalRuleService {
	@Autowired
	public DroolsRuleService droolsRuleService;

	public void executeRule(InputBOM... fact) {
		droolsRuleService.executeRules(null, null, "proposalChangeSet.xml",
				fact);
	}

}