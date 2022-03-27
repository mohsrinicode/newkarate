package com.api.automation;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

public class ParallelBuilder {

	
	@Test
	public void executeKarateTest()
	{
		Builder pRunner = new Builder();
		pRunner.path("classpath:com/api/automation");
		Results result= pRunner.parallel(5);
		System.out.println("Total Feature ---->" + result.getFeaturesTotal());
		System.out.println("Total Scenario ---->" + result.getScenariosTotal());
		System.out.println("Total Scenario passed ---->" + result.getScenariosPassed());
		System.out.println("Total Scenario passed ---->" + result.getScenariosFailed());
		
		Assertions.assertEquals(0, result.getFailCount(),"There are some failed Scenarios");
		
		}
}
