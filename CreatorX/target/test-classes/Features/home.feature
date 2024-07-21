Feature: Test home page functionality

Background:
	Given user is on login page
	When user enters sudeshnashetty2211@gmail.com and CreatorX@123
	And user clicks on login
	Then user is navigated to the home page

@skip
Scenario: 

	Given user is on home page
	When user clicks on Visit your Web site
	Then user should be navigated to his web site

@skip	
Scenario: 
	
	Given user is on home page
	When user clicks on View My Enrollments
	Then user should be navigated to Course section

	
@skip	
Scenario: Check the default number of sections
	Given user clicks on Web site
	When user is navigated to web site section
	Then by default six sections for the web site

@skip
 Scenario: Verify if the user is able to open footer section
    Given user is on the web site page
    When user clicks on the footer section
    Then the footer section should be displayed  

@skip     
 Scenario: Verify delete option for the footer section
 	Given user is on the web site page
    When user clicks on the footer section
    Then delete section should not present
    
@skip    
 Scenario: Verify if the user is able to save changes for footer section
    Given user is on the web site page
    When user clicks on the footer section
    Then the footer section should be displayed
    And user erases the fields 
    When user fills <Brand name>,  <gram>,  <Face book> and <you tube>
    And clicks on save changes 
    Then  user should get a toast <message>	 

 Examples:  
    |Brand name| gram|Face book|you tube|message|
    
    |CreatorX|https://www.instagram.com/testuser123/|https://www.facebook.com/testuser1|https://www.youtube.com/@adityamusic|Saved Successfully!|
    
    |CreatorX||https://www.facebook.com/testuser1|https://www.youtube.com/@adityamusic|Saved Successfully!|
    
    |CreatorX|https://www.instagram.com/testuser123/||https://www.youtube.com/@adityamusic|Saved Successfully!|
    
    |CreatorX|https://www.instagram.com/testuser123/|https://www.facebook.com/testuser1||Saved Successfully!|
    
    |CreatorX||||Saved Successfully!|
    
    ||https://www.instagram.com/testuser123/|https://www.facebook.com/testuser1|https://www.youtube.com/@adityamusic|Brand name can't be empty!|
    
    |CreatorX|https://www.instagram.com|https://www.facebook.com/testuser1|https://www.youtube.com/@adityamusic|Enter correct Insta gram Profile link|
    
    |CreatorX|ajfhjkdsf9874+96854asidfjiaskjdfm97a653|https://www.facebook.com/testuser1|https://www.youtube.com/@adityamusic|Enter correct Insta gram Profile link|
    
    |CreatorX|       |https://www.facebook.com/testuser1|https://www.youtube.com/@adityamusic|Enter correct Insta gram Profile link|
    
    |CreatorX|https://www.instagram.com/testuser123/|https://www.facebook.com/|https://www.youtube.com/@adityamusic|Enter correct Facebook Profile link|
    
    |CreatorX|https://www.instagram.com/testuser123/|ajfhjkdsf9874+96854asidfjiaskjdfm97a653 |https://www.youtube.com/@adityamusic|Enter correct Facebook Profile link|
    
    |CreatorX|https://www.instagram.com/testuser123/|              |https://www.youtube.com/@adityamusic|Enter correct Facebook Profile link|
    
    |CreatorX|https://www.instagram.com/testuser123/|https://www.facebook.com/testuser1|https://www.youtube.com|Enter correct YouTube Channel link |
    
    |CreatorX|https://www.instagram.com/testuser123/|https://www.facebook.com/testuser1|ajfhjkdsf9874+96854asidfjiaskjdfm97a653 |Enter correct YouTube Channel link |
    
    |CreatorX|https://www.instagram.com/testuser123/|https://www.facebook.com/testuser1|             |Enter correct YouTube Channel link |
    
    |||||Brand name can't be empty!|
    
    |      |          |          |          |Brand name can't be empty!|
    
    

























   



 		




    































 		

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	