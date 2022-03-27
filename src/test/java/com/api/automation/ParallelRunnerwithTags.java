package com.api.automation;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;

public class ParallelRunnerwithTags {

	
	@Test
	public void executeKarateTest()
	{
		//Runner.parallel(getClass(), 5);
	//	Builder pRunner = new Builder();
		//pRunner.path("classpath:com/api/automation");
	//	pRunner.parallel(5);
		//pRunner.tags("@Regression");
		
		
		/*Results results = Runner.path("classpath:com/api/automation").tags("@Regression").parallel(5);
		Assertions.assertEquals(0, results.getFailCount(),"There are some failed Scenarios");
		System.out.println("Total feature count "+results.getFeaturesTotal()); */
		
		Results results = Runner.path("classpath:com/api/automation").parallel(5);
		Assertions.assertEquals(0, results.getFailCount(),"There are some failed Scenarios");
		System.out.println("Total feature count "+results.getFeaturesTotal());
		
		
	}
}
