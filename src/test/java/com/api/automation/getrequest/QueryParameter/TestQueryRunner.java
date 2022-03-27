package com.api.automation.getrequest.QueryParameter;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestQueryRunner {
	
	
	// first way
	@Test
	public Karate runTest()
	{
		//return Karate.run("getRequest","responsematcher").relativeTo(getClass());
		return Karate.run("QueryParameter").relativeTo(getClass());
		
	} 
	//Second way 
	
	/*@Test
	public Karate runTestUsingClassPath()
	{
		return Karate.run("classpath:com/api/automatiom/getrequest/getRequest.feature");
	} */

}
