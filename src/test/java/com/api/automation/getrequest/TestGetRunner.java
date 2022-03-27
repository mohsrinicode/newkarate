package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {
	
	
	// first way
	@Test
	public Karate runTest()
	{
		//return Karate.run("getRequest","responsematcher").relativeTo(getClass());
		return Karate.run("ValidateXMLResposne").relativeTo(getClass());
		
	} 
	//Second way 
	
	/*@Test
	public Karate runTestUsingClassPath()
	{
		return Karate.run("classpath:com/api/automatiom/getrequest/getRequest.feature");
	} */

}
