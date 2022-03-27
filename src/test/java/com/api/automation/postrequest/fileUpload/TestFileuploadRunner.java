package com.api.automation.postrequest.fileUpload;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestFileuploadRunner {
	@Test
	public Karate runTest()
	{
		//return Karate.run("getRequest","responsematcher").relativeTo(getClass());
		return Karate.run("FileUploadOperation").relativeTo(getClass());
		
	} 

}
