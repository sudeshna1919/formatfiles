@mediumPriority
Feature: Test course section functionality

Background:
	Given user is on login page
	When user enters sudeshnashetty2211@gmail.com and CreatorX@123
	And user clicks on login
	Then user is navigated to the home page

	
 Scenario: Verify user navigation to course page
    Given user navigates to home page
    When user clicks on course
    Then user should be navigated to his course page

 Scenario: verify user is able to configure course details
 	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration


Scenario Outline: Verify user is able to edit the Basic course information
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user erased the fields
    And user gives <title>, <description> and uploads <Image>
    And user entered <usp1>, <usp2> and <usp3>
    When clicked on save changes
    Then  user should gets a toast <message>
    
 Examples:
   	|title    |      description                                                                     | Image                                         | usp1                   | usp2                        | usp3             | message           |                     
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|   |    |    |Fill all the unique selling points!|
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Saved Successfully!|	
	
	|Testing Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Name can't exceed 50 characters!|	
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."  Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."|C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Description can't exceed 120 characters!|
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive Hands-On |Hands-On Expert |ExpertHands-On |Unique selling points can't exceed 20 characters!|
	
	||   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Name can't be empty!|
	
	|Testing  ||C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Description can't be empty!|
	

Scenario Outline: Verify if the user is able to save changes with invalid thumb nail details in the course information section
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
    And user erased the fields
    And user gives <title>, <description> and uploads <Image>
    And user entered <usp1>, <usp2> and <usp3>
    Then  user should gets a toast <message>
    	
		
Examples:	
	 | title   | description                                                                          |            Image                                     |    usp1     |  usp2   | usp3  | message|
	 |Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\Portfolio (4).pdf             |Comprehensive|Hands-On |Expert | File extension should be jpg/jpeg/png |
     |Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\pexels-zhang-kaiyv-1138369.jpg|Comprehensive|Hands-On |Expert |Image size should be less than 5MB |


Scenario Outline: Verify if user gets Error message when user leave thumb nail blank in course information section.
  	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
    And user erased the fields
    And user enters <title>,  <description>
    And user entered <usp1>, <usp2> and <usp3>
    When clicked on save changes
    Then  user should gets a toast <message>	
  
 Examples:
   
    | title             | description                               |     usp1     |  usp2   | usp3  |			message                     |
    |Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Comprehensive|Hands-On |Expert |Course Thumbnail can't be empty!|
	|          |        |         |            |            |Course Name can't be empty!|
	||||||Course Name can't be empty!|	


Scenario Outline: Verify user is able to move to the next section after filling the details
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user erased the fields
    And user gives <title>, <description> and uploads <Image>
    And user entered <usp1>, <usp2> and <usp3>
    When user clicks on next
    Then  user should gets a toast <message>
    Then user should be navigated to pricing section
    
    
 Examples:
   	|title    |      description                                                                     | Image                                         | usp1                   | usp2                        | usp3             | message           |                     
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Saved Successfully!|	


Scenario Outline: Verify user is able to move to next section when clicked on Next with blank details in course information page
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user erased the fields
    And user gives <title>, <description> and uploads <Image>
    And user entered <usp1>, <usp2> and <usp3>
    When user clicks on next
    Then  user should gets a toast <message>
    
    
 Examples:
   	|title    |      description                                                                     | Image                                         | usp1                   | usp2                        | usp3             | message           |                     
	
	| |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Name can't be empty!|
	
	|Testing  ||C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Description can't be empty!|
	
	|Testing Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Name can't exceed 50 characters!|	
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."  Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."|C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive|Hands-On |Expert |Course Description can't exceed 120 characters!|
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|Comprehensive Hands-On |Hands-On Expert |ExpertHands-On |Unique selling points can't exceed than 20 characters!|
	
	|Testing  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg|  |   |   |Fill all the unique selling points!|
	

	
Scenario Outline: Verify user is able to save the course details page with valid data
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	And user delete the fields
 	And user write <course details>, <Benefits>, and <requirements>
 	And user writes <instructor name>,  <description>, and <instructor image>
 	When clicked on save changes
 	Then user should gets a toast <message> 
 	
 Examples:
   	
   	|            course details                                                             |                               Benefits                                               |            requirements                              |  instructor name                      |           description                                        |             instructor image                              |          message               |                     
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |John Doe|Senior Software Testing Engineer with 10+ Years of Experience |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          |         Saved Successfully!  |	
	
	|                                                                                       |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |      John Doe                          |Senior Software Testing Engineer with 10+ Years of Experience |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          |Course Details can't be empty!|
	
	| The curriculum also includes advanced topics such as API testing, performance testing |                                                                                      |Basic understanding of software development processes |      John Doe                          |Senior Software Testing Engineer with 10+ Years of Experience |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          |         Saved Successfully!   |
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |                                                      |      John Doe                          |Senior Software Testing Engineer with 10+ Years of Experience |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          |Course Requirements can't be empty!|
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |                                        |Senior Software Testing Engineer with 10+ Years of Experience |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          |Instructor Name can't be empty!|
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |John Doe |                                                              |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          | Instructor Details can't be empty!|
	
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |      John Doe                          |John Doe is a seasoned software testing engineer with over a decade of experience in the industry. He has worked with various multinational companies, leading testing teams and implementing robust testing strategies. John specializes in both manual and automated testing, and has a deep understanding of tools such as Selenium, TestNG, JIRA, and Postman. His teaching approach is practical and hands-on, ensuring that participants not only learn theoretical concepts but also gain valuable practical experience. John is passionate about sharing his knowledge and helping others succeed in their software testing careers. |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          | Instructor Description can't exceed 300 characters!|
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |John Doe Senior Software Testing Engineer with 10+ Years of Experience Senior Software Testing Engineer with 10+ Years of Experience |Senior Software Testing Engineer with 10+ Years of Experience |   C:\Users\Dell\Downloads\IMG-20240506-WA0000.jpg          | Instructor Name can't exceed 100 characters!  |
		


Scenario Outline: Verify user is able to save the course details page with invalid image
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	And user delete the fields
 	And user write <course details>, <Benefits>, and <requirements>
 	And user writes <instructor name>,  <description>, and <instructor image>
 	Then user should gets a toast <message> 
 	
  Examples:
   	
   	|            course details                                                             |                               Benefits                                               |            requirements                              |  instructor name                      |           description                                        |             instructor image                              |          message               |                     
	
	| The curriculum also includes advanced topics such as API testing, performance testing |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |Basic understanding of software development processes |John Doe|Senior Software Testing Engineer with 10+ Years of Experience | C:\Users\Dell\Downloads\pexels-zhang-kaiyv-1138369.jpg | Image size should be less than 5MB |
	


Scenario Outline: Verify user is able to save the module details page with valid details
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	And user clicks on Add module
 	When input <name>, <description>
 	When user inputs <duration> and <order>
 	When press on save changes
 	When clicked on save changes
 	Then user should gets a toast <message> 
 	
 Examples:
   	
   	| name    |           description                                                                |duration|  order |          message               |                     
	
	| module |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |  1  |       Saved Successfully!  |	
 	| module1 |  |   30   |  1  |       Saved Successfully!  |
 	| module2 |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   |  1  |       Saved Successfully!  |
 	| module3 |  |    |  1  |       Saved Successfully!  |
 	
 	
 	
Scenario Outline: Verify user is able to save the module details page with invalid details
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	And user clicks on Add module
 	When input <name>, <description>
 	When user inputs <duration> and <order>
 	When press on save changes
 	Then user should gets a toast <message>   	
 	 	
Examples:
	
	| name    |           description                                                                |duration|  order |          message               |
  	|         |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |  1     |Module name can't be empty!|
 	| module  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |        | Plese specify the order of the module!|
 	|         |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |        |Module name can't be empty!|
 	| module |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."    Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."    Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."    Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |  1  | Module description can't exceed 300 characters! |
 	|         |  |     |        |Module name can't be empty!|
 	|||||Module name can't be empty!|
 	
 	
 	
 	

Scenario Outline: Verify user is able to edit the module details page with valid details
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	And user clicks on edit module
 	And clears the details
 	When input <name>, <description>
 	When user inputs <duration> and <order>
 	When press on save changes
 	When clicked on save changes
 	Then user should gets a toast <message> 
 	
 Examples:
   	
   	| name    |           description                                                                |duration|  order |          message               |                     
	
	| edited module |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |  1  |       Saved Successfully!  |	
 	| edited module1 |  |   30   |  1  |       Saved Successfully!  |
 	| edited module2 |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   |  1  |       Saved Successfully!  |
 	| edited module3 |  |    |  1  |       Saved Successfully!  |
 	
 	
	
Scenario Outline: Verify user is able to edit the module details page with invalid details
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	And user clicks on edit module
 	And clears the details
 	When input <name>, <description>
 	When user inputs <duration> and <order>
 	When press on save changes
 	Then user should gets a toast <message> 
 	
 Examples:
   	
   	| name    |           description                                                                |duration|  order |          message               |                     
	
	|         |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |  1     |Module name can't be empty!|
 	| module  |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |        | Plese specify the order of the module!|
 	|         |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |        |Module name can't be empty!|
 	| module |   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."    Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."    Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."    Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques."   Welcome to "Mastering Software Testing: From Fundamentals to Advanced Techniques." |   30   |  1  | Module description can't exceed 300 characters! |
 	|         |  |     |        |Module name can't be empty!|
 	|||||Module name can't be empty!|
 	
 	

Scenario Outline: Verify user is able to delete a module 
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	When user clicks on course details page
 	When user clicks on delete for a module
 	Then user should gets a toast <message> 
 	
 Examples:
 		|message|
 		|Module Deleted!| 
 		
 		
Scenario Outline: Toggle course payment status
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
    And the user toggles the course to <status>
    When clicked on save changes
    Then the course should be marked as <status>

    Examples:
      | status |
      | Paid   |
      | Free   |

    

Scenario Outline: Verify user is able to set course price

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user sets <price> for the course
 	When clicked on save changes
 	Then user should gets a toast <message>
 	
Examples:
			
			|price|message|
			|10|Saved Successfully!|
			|200|Saved Successfully!|
			|1000|Saved Successfully!|
			|200000|Saved Successfully!|
			|0|Full Price can't be empty or zero!|
			||Full Price can't be empty or zero!|	




Scenario Outline: Verify user is able to set course price more than 200000

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user sets <price> for the course
 	Then user should gets a toast <message>
 	
Examples:
			
			|price|message|
			|250000|You can't set course price more than 200000|
			
 	

 Scenario Outline: Verify user is able to enter discounted price and discount percentage should be updated

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user sets <price> for the course
 	When user fills <discounted price>
 	Then <discounted percentage> should be updated 
 	When clicked on save changes
 	Then user should gets a toast <message>	
 
 Examples:
 	|price|discounted price|discounted percentage| message|
 	|1000 |10 |99|Saved Successfully!|
 	|25000 |500|98|Saved Successfully!|
 	|5000 |499|90.02|Saved Successfully!|
 	|100|0|100|Saved Successfully!|

 	
 Scenario Outline: Verify user is able to enter discount percentage and discounted price should be updated
	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user sets <price> for the course
 	When user filled <discounted percentage>
 	Then <discounted price> should get updated 
 	When clicked on save changes
 	Then user should gets a toast <message>	
 
 Examples:
 	|price|discounted percentage|discounted price|            message|
 	|3500 |                   48|            1820|Saved Successfully!|
 	|348  |                   12|             306|Saved Successfully!|
 	|100  |                    0|             100|Saved Successfully!|
 	
 	
 Scenario Outline: Verify user is able to set international price for the course

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on check box for international price
 	And user set international <price> for the course
 	When clicked on save changes
 	Then user should gets a toast <message>
 	
Examples:
			
			|price|message|
			|10|Saved Successfully!|
			|200|Saved Successfully!|
			|1000|Saved Successfully!|
			|2000|Saved Successfully!|
			|0|Please enter international price!|
			||Please enter international price!|		
 	
@skip 	
Scenario Outline: Verify user is able to set international price for the course more than 2500$

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on check box for international price
 	And user set international <price> for the course
 	Then user should gets a toast <message>
 	
Examples:
		|price|message|
		|3000|You can't set course price more than 2500|
 	
@skip 
Scenario Outline: Verify user is able to enter discounted price and discount percentage should be updated in international price

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on check box for international price
 	And user set international <price> for the course
 	When user is entering <discounted price>
 	Then <discounted percentage> should is updated 
 	When clicked on save changes
 	Then user should gets a toast <message>	
 
 Examples:
 	|price|discounted price|discounted percentage| message|
 	|1000 |10 |99|Saved Successfully!|
 	|25000 |500|98|Saved Successfully!|
 	|5000 |499|90.02|Saved Successfully!|
 	|100|0|100|Saved Successfully!|
 	
 	
 
Scenario Outline: Verify user is able to create a coupon code

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on create a coupon
 	When user input <discount>, <number of uses>, <date> 
 	When press on save changes
 	When clicked on save changes
 	Then user should gets a toast <message>
 
 Examples:
 		|discount|number of uses|date|message|
 		|10|2|22-07-2024|Saved Successfully!|
 		|100|2|22-07-2024|Saved Successfully!|
		
Scenario Outline: Verify user is able to create a coupon code with invalid details

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on create a coupon
 	When user inputs fields for <name>, <discount>, <number of uses>, <date> 
 	When press on save changes
 	Then user should gets a toast <message>
 
 Examples:
 		|name|discount|number of uses|date|message|
 		|new1|10|2|22-07-2024|Coupon Name already exists!|
 		|new2|0|2|22-07-2024|Discount % can't be empty or zero|
 		|    |   |   |       |Coupon code can't be empty|
 		|New2|78|3|15-05-1996|The expiration date cannot be earlier than the current date|
 		|New2|110|2|03-11-2024|Discount % can't exceed 100|
 		||20|2|17-07-2024|Coupon code can't be empty|
 		|New2||2|07-08-2024|Discount % can't be empty or zero|
 		|New2|25||06-10-2024|Number of uses can't be empty or zero|
 		|new2|10|0|22-07-2024|Number of uses can't be empty or zero|
 		|New2|50|2||Expires date can't be empty|
 		|this is new coupon code for testing the length of the coupon code name|10|2|22-07-2024|Coupon code can't exceed 15 characters!|
 		|||||Coupon code can't be empty|
 		
 		

Scenario Outline: Verify user is able to edit a coupon code

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on edit option
 	And user removes the details
 	When user input <discount>, <number of uses>, <date> 
 	When press on save changes
 	When clicked on save changes
 	Then user should gets a toast <message>
 
 Examples:
 		|discount|number of uses|date|message|
 		|10|2|22-07-2024|Saved Successfully!|
 		|100|2|22-07-2024|Saved Successfully!|
		
Scenario Outline: Verify user is able to edit a coupon code with invalid details

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle and makes it paid if it is free
 	And user clicks on edit option
 	And user removes the details
 	When user inputs fields for <name>, <discount>, <number of uses>, <date> 
 	When press on save changes
 	Then user should gets a toast <message>
 
 Examples:
 		|name|discount|number of uses|date|message|
 		|new1|10|2|22-07-2024|Coupon Name already exists!|
 		|new2|0|2|22-07-2024|Discount % can't be empty or zero|
 		|    |   |   |       |Coupon code can't be empty|
 		|New4|78|3|15-05-1996|The expiration date cannot be earlier than the current date|
 		|New2|110|2|03-11-2024|Discount % can't exceed 100|
 		||20|2|17-07-2024|Coupon code can't be empty|
 		|New2||2|07-08-2024|Discount % can't be empty or zero|
 		|New2|25||06-10-2024|Number of uses can't be empty or zero|
 		|new2|10|0|22-07-2024|Number of uses can't be empty or zero|
 		|New2|50|2| |Expires date can't be empty|
 		|this is new coupon code for testing the length of the coupon code name|10|2|22-07-2024|Coupon code can't exceed 15 characters!|
 		|||||Coupon code can't be empty|


Scenario Outline: Verify user is able to create a referral code

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user clicks configure referral code
 	And user removed the details
 	When user provides <discount>, <number of uses>, <cash back>
 	When press on save changes
 	Then user should gets a toast <message>
 	And user checks the toggle for referral and makes it active if it is inactive
 	When clicked on save changes
 	Then user should gets a toast <message1>
 
 Examples:
 		|discount|number of uses|cash back|message                |message1|
 		|      20|             2|       10|Referral Coupon Created|Saved Successfully!|
 		|      50|             3|       35|Referral Coupon Created|Saved Successfully!|
		|50|3|0|Referral Coupon Created|Saved Successfully!|
		|100|3|50|Referral Coupon Created|Saved Successfully!|	
 		
 		
 Scenario Outline: Verify user is able to edit a referral code

	Given user is on course page
 	When user clicks on configure course
 	Then user should be navigated to course configuration
 	And user clicks on pricing
 	And user checks the toggle for referral and makes it active if it is inactive
 	And user clicks configure referral code
 	And user removed the details
 	When user provides <discount>, <number of uses>, <cash back>
 	When press on save changes
 	Then user should gets a toast <message>
 	
 
 Examples:
 		|discount|number of uses|cash back|message|
 		|     200|             2|       10|Referrals discount can't exceed 100|
 		|        |             2|       10|Referrals discount code can't be empty or zero|
 		|       0|             2|       10|Referrals discount code can't be empty or zero|
 		|      50|              |       35|Number of uses can't be empty or zero|
 		|      50|             0|       35|Number of uses can't be empty or zero|
		|      35|             3|         |Cashback given can't be empty|
		|        |              |         |Referrals discount code can't be empty or zero|
		
 	