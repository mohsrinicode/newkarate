package com.api.automation.postrequests;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestPostDataDrivenRunner {
	
	@Test
	public Karate runTest()
	{
		return Karate.run("postDatadriven.feature").relativeTo(getClass());
		
	} 

}
