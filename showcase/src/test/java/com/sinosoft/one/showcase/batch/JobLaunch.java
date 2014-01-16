package com.sinosoft.one.showcase.batch;

import java.util.Date;

import org.junit.Test;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.explore.JobExplorer;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.launch.JobOperator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

@DirtiesContext
@ContextConfiguration(locations = { "/spring/applicationContext-batch.xml"})
public class JobLaunch extends AbstractJUnit4SpringContextTests {

	@Autowired
	private JobLauncher launcher;
	@Autowired
	private Job exceldatabaseJob;
	@Autowired
	private JobParametersBuilder jobParameterBulider;
	@Autowired
	private JobOperator jobOperator;
 

	@Test
	public void testcsvdatabaseJob() {
		try {
			 
			jobParameterBulider.addDate("date", new Date());
			JobExecution result =launcher.run(exceldatabaseJob, jobParameterBulider.toJobParameters());
			System.out.println(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	 
}
