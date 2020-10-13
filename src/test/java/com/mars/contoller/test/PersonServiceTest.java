package com.mars.contoller.test;

import static org.junit.Assert.assertEquals;

import java.io.IOException;

import org.junit.Test;

import com.mars.testclient.HTTPClient;


public class PersonServiceTest {
	
	/**Test Service for Add Peson Details. Insert Test Data 1**/
	@Test
    public void testAddPersonService() throws IOException {
		
		String PATH = "addperson";
		String POST_PARAMS = "firstName=Jadumani&lastName=Meher";		
		
		String response = HTTPClient.sendPOST(PATH, POST_PARAMS);
		System.out.println("RESPONSE : " + response);
		
        assertEquals("SERVICE FAILED","Congratulation, Person Added Successfull!<br> <a href='index' >Go To Home</a>", response);
    }
	
	/**Test Service for Add Peson Details. Insert Test Data 2**/	
	@Test
    public void testAddSecond() throws IOException {
		
		String PATH = "addperson";
		String POST_PARAMS = "firstName=Charan&lastName=G";		
		
		String response = HTTPClient.sendPOST(PATH, POST_PARAMS);
		System.out.println("RESPONSE : " + response);
		
        assertEquals("SERVICE FAILED","Congratulation, Person Added Successfull!<br> <a href='index' >Go To Home</a>", response);
    }
	
	/**Test Service for Edit Person Details. Edit with ID 2**/
	@Test
    public void testEditPersonService() throws IOException {
		
		String PATH = "editPersonForm/editperson";
		String POST_PARAMS = "id=2&firstName=Arun&lastName=Kumar";		
		
		String response = HTTPClient.sendPOST(PATH, POST_PARAMS);
		System.out.println("RESPONSE : " + response);
		
        assertEquals("SERVICE FAILED","Congratulation, Person Edit Successfull!<br> <a href='mars/index' >Go To Home</a>", response);
    }
	

	
	/**Test Service for Edit Person Details. Edit with ID 2**/
	@Test
    public void testDeletPersonService() throws IOException {
		
		String GET_URL = "deletePersonDetails/3";
	
		
		String response = HTTPClient.sendGET(GET_URL);
		System.out.println("RESPONSE : " + response);
		
        assertEquals("SERVICE FAILED","Congratulation, Person Deleted Successfull!<br> <a href='mars/index' >Go To Home</a>", response);
    }
		
}
