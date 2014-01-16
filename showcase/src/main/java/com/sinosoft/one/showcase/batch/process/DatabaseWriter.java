package com.sinosoft.one.showcase.batch.process;

import java.util.List;

import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sinosoft.one.showcase.batch.model.PrpInsured;
import com.sinosoft.one.showcase.batch.repository.PrpInsuredRepository;

@Component
public class DatabaseWriter implements ItemWriter<PrpInsured> {
	@Autowired
	private PrpInsuredRepository prpInsuredRepository;

	public void write(List<? extends PrpInsured> prpInsureds) {

		System.out.println("save");
		for (PrpInsured prpInsured : prpInsureds) {
			 
				System.out.println(prpInsured.getId());
		}
		prpInsuredRepository.save(prpInsureds);

	}

}
