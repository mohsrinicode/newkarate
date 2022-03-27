package com.api.automation.patchrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestpatchRunner {
	
	
	// first way
	@Test
	public Karate runTest()
	{
		//return Karate.run("getRequest","responsematcher").relativeTo(getClass());
		return Karate.run("patchrequest").relativeTo(getClass());
		
	} 
	//Second way 
	
	/*@Test
	public Karate runTestUsingClassPath()
	{
		return Karate.run("classpath:com/api/automatiom/getrequest/getRequest.feature");
	} */

}
