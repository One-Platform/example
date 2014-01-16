package com.sinosoft.one.showcase.batch.mapping;

import org.springframework.batch.item.excel.RowMapper;
import org.springframework.batch.item.excel.Sheet;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.LineTokenizer;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.Assert;

public class ExcelRowMapper<T> implements RowMapper<T>, InitializingBean  {

	private LineTokenizer tokenizer;

	private FieldSetMapper<T> fieldSetMapper;

	public void setLineTokenizer(LineTokenizer tokenizer) {
		this.tokenizer = tokenizer;
	}

	public void setFieldSetMapper(FieldSetMapper<T> fieldSetMapper) {
		this.fieldSetMapper = fieldSetMapper;
	}

    @Override
	public void afterPropertiesSet() {
		Assert.notNull(tokenizer, "The LineTokenizer must be set");
		Assert.notNull(fieldSetMapper, "The FieldSetMapper must be set");
	}

	@Override
	 public T mapRow(final Sheet sheet, final String  row, final int rowNum) throws Exception {
//        return this.fieldSetMapper.mapFieldSet(this.tokenizer.tokenize(sheet, row));
		return fieldSetMapper.mapFieldSet(tokenizer.tokenize(row));
    }

	@Override
	public T mapRow(Sheet sheet, String[] row, int rowNum) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
