package stepDefinations;

import org.openqa.selenium.WebDriver;
import page.*;
import io.cucumber.java.After;
import io.cucumber.java.en.*;
import junit.framework.Assert;
import page.HomePage;
import page.WebsitePage;

public class WebsiteStepDefinitions {
	
	WebDriver driver;
	
	HomePage hP;
	
	WebsitePage wP;

	@After
	public void tearDown() throws InterruptedException {
		
		Thread.sleep(2000);
		
        BaseSetUp.quitDriver();
    }

	@Given("user clicks on Web site")
	public void user_clicks_on_web_site() throws InterruptedException {
		
		this.driver = BaseSetUp.driver;
		
		hP = new HomePage(driver);
		
		wP = new WebsitePage(driver);
		
		hP.click_On_Website();
	}
	
	@Given("user is on the web site page")
	public void user_is_on_the_web_site_page() throws InterruptedException {
		
		this.driver = BaseSetUp.driver;
		
		hP = new HomePage(driver);
		
		wP = new WebsitePage(driver);
		
		hP.click_On_Website();
		
	}

	@When("user is navigated to web site section")
	public void user_is_navigated_to_web_site_section() {
		
		String expected = "Homepage";
		
		String actual = wP.validate_website_section();
		
		Assert.assertEquals(expected, actual);
	}
	
	@When("there are six sections")
	public void there_are_six_sections() {
		
		int expected = 6;
		
		int actual = wP.check_no_of_Section();
		
		Assert.assertEquals(expected, actual);
		
	}
	

	@When("user clicks on the Hero section")
	public void user_clicks_on_the_Hero_section() {
		
		 wP.opening_hero_section();
		
	}
	
	@When("user clicks on the Content section")
	public void user_clicks_on_the_Content_section() {
		
		 wP.opening_content_section();
		
	}
	
	@When("user clicks on the closing section")
	public void user_clicks_on_the_closing_section() {
		
		 wP.opening_closing_section();
		
	}
	
	@When("user clicks on the course section")
	public void user_clicks_on_the_course_section() {
		
		wP.opening_course_section();
	}
	
	@When("user clicks on the footer section")
	public void user_clicks_on_the_footer_section() {
		
		wP.opening_footer_section();
	}
	
	@When("^user typed (.*), (.*) and uploads (.*)$")
	public void user_typed_title_description_and_uploads_Image(String title, String descri, String image) throws InterruptedException {
		
		Thread.sleep(1000);
		
		wP.enter_title(title);

		wP.enter_description(descri);
		
		wP.upload_Image(image);
		
		Thread.sleep(2000);
		
	}
	
	@When("^user types (.*),  (.*)$")
	public void user_types_title_description(String title, String descri) {
		
		wP.enter_title(title);

		wP.enter_description(descri);
		
	}
	
	@When("^user fills (.*),  (.*),  (.*) and (.*)$")
	public void user_fills_Brand_name_gram_Face_book_and_you_tube(String brand, String gram, String facebook, String youtube) {
		
		wP.enter_brand_name(brand);
		
		wP.enter_insta_link(gram);
		
		wP.enter_face_book_link(facebook);
		
		wP.enter_you_tube_link(youtube);
	}
	
	@When("^there are (.*) sections$")
	public void there_are_section_count_sections(int n) {
		
		int actual = wP.check_no_of_Section();
		
		Assert.assertEquals(n, actual);
		
	}
	
	@When("User clicks on save changes")
	public void User_clicks_on_save_changes() {
		
		wP.save_changes();
		
	}
	
	@When("the user selects the delete option")
	public void the_user_selects_the_delete_option() {
		
		wP.deleting_section();
	}
	
	@When("the user confirms the deletion")
	public void the_user_confirms_the_deletion() {
		
		wP.confirm_delete_section();

	}
	
	@When("user presses on add new section")
	public void user_presses_on_add_new_section() throws InterruptedException {
		
		Thread.sleep(2000);
		
		wP.click_add_new_section();
	}
	
	@When("user hits add section")
	public void user_hits_add_section(){
		
		wP.click_add_section();
	}
	
	
	@And("user opens hero section")
	public void user_opens_hero_section() throws InterruptedException {
		
		wP.opening_hero_section();	
	}
	
	@And("user opens closing section")
	public void user_opens_closing_section() {
		
		wP.opening_closing_section();
	}
	
	@And("user clears the fields")
	public void user_clears_the_fields() throws InterruptedException {
		
		wP.clear_title();
		
		Thread.sleep(2000);
		
		wP.clear_description();
		
		Thread.sleep(1000);
		
		wP.del_Image();
				
		Thread.sleep(1000);
		
	}
	
	@And("user cleared the fields")
	public void user_cleard_the_fields() throws InterruptedException {
		
		wP.clear_title();
		
		Thread.sleep(2000);
		
		wP.clear_description();
		
	}
	
	
	@And("user erases the fields")
	public void user_erases_the_fields() {
		
		wP.clear_brand_name();
		
		wP.clear_insta_link();
		
		wP.clear_face_book_link();
		
		wP.clear_you_tube_link();
	}
	
	@And("^user selects the orientation of the section (.*)$")
	public void user_selects_the_orientation_of_the_section_orientation(String orientation) throws InterruptedException{
		
		System.out.println(orientation);
		
		wP.select_option(orientation);
		
	}
	
	@And("user is navigates to web site section")
	public void user_is_navigates_to_web_site_section() {
		
		String expected = "Homepage";
		
		String actual = wP.validate_website_section();
		
		Assert.assertEquals(expected, actual);
		
	}
	
	
	

	@And("user triggers add section")
	public void user_triggers_add_section() {
		
		wP.click_add_section();
	}
	
	
	@And("clicks on save changes")
	public void clicks_on_save_changes() {
		
		wP.save_changes();
	}
	
	
	
	@And("^selects from the drop down the (.*)$")
	public void selects_from_the_drop_down_the_section(String sectionName) throws InterruptedException {
		
		wP.select_option(sectionName);
	}
	
	
	@Then("section form should be displayed")
	public void section_form_should_be_displayed() {
		
		String expected ="Provide the content for the ";
		
		String actual=wP.get_new_Section_form_heading();
		
		Assert.assertTrue(actual.contains(expected));
		
	}
	
	@Then("by default six sections for the web site")
	public void by_default_six_sections_for_the_web_site() {
		
		int expected = 6;
		
		int actual = wP.check_no_of_Section();
		
		Assert.assertEquals(expected, actual);
	}
	
	@Then("the Hero section should be displayed")
	public void the_Hero_section_should_be_displayed() {
		
		String expected ="Hero Title*";
		
		String actual = wP.validate_Hero_section();
		
		Assert.assertEquals(expected, actual);
	
	}
	@Then("the Content section should be displayed")
	public void the_Content_section_should_be_displayed() {
		
		String expected ="Choose Orientation of the Section*";
		
		String actual = wP.validate_content_section();
		
		Assert.assertEquals(expected, actual);
	
	}
	@Then("the closing section should be displayed")
	public void the_closing_section_should_be_displayed() {
		
		String expected ="Closing Title*";
		
		String actual = wP.validate_closing_section();
		
		Assert.assertEquals(expected, actual);
	}
	
	@Then("the course section should be displayed")
	public void the_course_section_should_be_displayed() {
		
		String expected ="Course Section Title*";
		
		String actual = wP.validate_course_section();
		
		Assert.assertEquals(expected, actual);
	}
	
	@Then("the footer section should be displayed")
	public void the_footer_section_should_be_displayed() {
		
		String expected ="Footer Section*";
		
		String actual = wP.validate_footer_section();
		
		Assert.assertEquals(expected, actual);
	}
	
	@Then("a confirmation pop up should be displayed")
	public void a_confirmation_pop_up_should_be_displayed() {
		
		Assert.assertTrue(wP.check_delete_popup());
	}
	

	@Then("^user should get a toast (.*)$ for deleted section")
	public void user_should_get_a_toast_message_for_deleted_section(String message) {
		
		String expected =message;
		
		String actual=wP.get_Toast();
		
		Assert.assertEquals(expected, actual);
	}
	
	@Then("^user should get a toast (.*)$")
	public void user_should_get_a_toast(String message) {
		
		String expected =message;
		
		String actual=wP.get_Toast();
		
		Assert.assertEquals(expected, actual);
	}
	
	@Then("delete section should not present")
	public void delete_section_should_not_present() {
		
		Assert.assertFalse(wP.check_delete_Section_display());
	}
	
	@Then("delete section should be present")
	public void delete_section_should_be_present() {
		
		Assert.assertTrue(wP.check_delete_Section_display());
	}
	
	@Then("Add new section should not be displayed")
	public void Add_new_section_should_not_be_displayed() throws InterruptedException {
		
		Assert.assertFalse(wP.check_add_new_section_button());
	}
	
	@Then("Add new section should be displayed")
	public void Add_new_section_should_be_displayed() throws InterruptedException {
		
		Assert.assertTrue(wP.check_add_new_section_button());
	}
	
	@Then("Add new section should {string} be displayed")
    public void add_new_section_should_be_displayed(String displayStatus) throws InterruptedException {
        // Check if the "Add new section" button is displayed or not
        boolean isDisplayed = wP.check_add_new_section_button();

        if (displayStatus.equals("not")) {
            Assert.assertFalse(isDisplayed);
        } else {
        	Assert.assertTrue(isDisplayed);
        }

        // Clean up
        driver.quit();
    }
	
	


}
