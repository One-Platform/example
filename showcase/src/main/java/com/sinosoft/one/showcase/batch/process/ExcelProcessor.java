package com.sinosoft.one.showcase.batch.process;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.stereotype.Component;

import com.sinosoft.one.showcase.batch.model.PrpInsured;

@Component("excelItemProcessor")
public class ExcelProcessor implements ItemProcessor<PrpInsured, PrpInsured> {
	public PrpInsured process(PrpInsured prpInsured) {
		System.out.println(prpInsured.getId());
 
		return prpInsured;
	}
}
