package com.sinosoft.one.showcase.rule.test.rule.service.facade;

import com.sinosoft.one.rule.domain.InputBOM;

public interface ProposalRuleService {
	public void executeRule(InputBOM... fact);
}
