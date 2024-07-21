package page;

import java.time.Duration;
import java.util.List;
import java.util.NoSuchElementException;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WebsitePage {

	WebDriver driver;
	
	@FindBy(xpath="//button[@role='tab']")
	WebElement websiteHomePage;
	
	@FindBy(xpath="(//h1[normalize-space()='Hero Section*']/ancestor::header[@class='TitleContainer']/child::div[@class='activeSectionContainer']//span)[1]")
	WebElement heroDropDown;
	
	@FindBy(xpath="(//h1[normalize-space()='Course Section*']/ancestor::header[@class='TitleContainer']/child::div[@class='activeSectionContainer']//span)[1]")
	WebElement courseDropDown;
	
	@FindBy(xpath="(//h1[normalize-space()='Content Section']/ancestor::header[@class='TitleContainer']/child::div[@class='activeSectionContainer']//span)[1]")
	WebElement contentDropDown;
	
	@FindBy(xpath="(//h1[normalize-space()='Closing Section']/ancestor::header[@class='TitleContainer']/child::div[@class='activeSectionContainer']//span)[1]")
	WebElement closingDropDown;
	
	@FindBy(xpath="(//h1[normalize-space()='Footer Section*']/ancestor::header[@class='TitleContainer']/child::div[@class='activeSectionContainer']//span)[1]")
	WebElement footerDropDown;

	@FindBy(xpath="//h3[normalize-space()='Hero Title*']")
	WebElement heroTitle;
	
	@FindBy(xpath="//h3[normalize-space()='Closing Title*']")
	WebElement closingTitle;
	
	@FindBy(xpath="//h3[normalize-space()='Choose Orientation of the Section*']")
	WebElement contentTitle;
	
	@FindBy(xpath="//h3[normalize-space()='Course Section Title*']")
	WebElement courseTitle;
	
	@FindBy(xpath="//h3[normalize-space()='Section Title*']")
	WebElement slotTitle;
	
	@FindBy(xpath="//h3[normalize-space()='Brand Name']")
	WebElement footerTitle;
	
	@FindBy(xpath="//div[@class='OrientationSection']//input[@type='text']")
	WebElement Title;
	
	@FindBy(xpath="//div[@class='OrientationSection']//textarea[@type='text']")
	WebElement description;
	
	@FindBy(id="company-logo")
	WebElement imageUpload;
	
	@FindBy(xpath="//span[@class='blue__text']")
	WebElement clicktoUpload;
	
	@FindBy(xpath="//input[@placeholder='Enter the YouTube link for your video here']")
	WebElement youTubeLinkForContentSection;
	
	@FindBy(xpath="//input[@placeholder='Enter the name of your Brand here']")
	WebElement brandName;
	
	@FindBy(xpath="//input[@placeholder='Enter your Instagram Profile links here']")
	WebElement insta;
	
	@FindBy(xpath="//input[@placeholder='Enter your Facebook Profile links here']")
	WebElement facebook;
	
	@FindBy(xpath="//input[@placeholder='Enter your YouTube Channel links here']")
	WebElement youTube;
	
	@FindBy(xpath="(//div[@class='imgUploadedCourse']//*[name()='svg'])[2]")
	WebElement delImage;
	
	@FindBy(xpath="//button[@class='saveBtn']")
	WebElement save;
	
	@FindBy(xpath="//div[@role='status']")
	WebElement toast;
	
	@FindBy(xpath="//section[@class='HeroSectionContainer']")
	WebElement herosection;
	
	@FindBy(xpath="//div[@class='OrientationSection']//select")
	WebElement selecOpt;
	
	@FindBy(xpath="//button[@class='deleteBtn']")
	WebElement deleteSection;
	
	@FindBy(xpath="//h3[normalize-space()='Delete this Section']")
	WebElement deletePopUp;
	
	@FindBy(xpath="//button[@class='deletebtn']")
	WebElement deleteConfirm;
	
	@FindBy(xpath="//button[@class='CancelIndelete']")
	WebElement cancelDelete;
	
	@FindBy(xpath="//button[normalize-space()='Add a new Section']")
	WebElement addNewSection;
	
	@FindBy(xpath="//button[normalize-space()='Add Section']")
	WebElement addSection;
	
	@FindBy(xpath="//span[contains(text(),'Provide the content for the ')]")
	WebElement heading;
	
	@FindBy(xpath="//section[@id='ContentSectionFormContainer']//input/ancestor::section/preceding-sibling::section/header[@class='TitleContainer']//input[@class='PrivateSwitchBase-input MuiSwitch-input css-1m9pwf3']")
	WebElement Toggle;
	
	@FindBy(xpath="//section[@class='CourseSectionFormContainer']//input/ancestor::section/preceding-sibling::section/header[@class='TitleContainer']//input[@class='PrivateSwitchBase-input MuiSwitch-input css-1m9pwf3']")
	WebElement courseToggle;
	
	@FindBy(xpath="//input[@placeholder='Enter your Brand Tagline here']")
	WebElement BrandTagline;
	
	@FindBy(xpath="//input[@placeholder='Eg. 2024 Khambee']")
	WebElement BrandCopyRight;
	
	@FindBy(xpath="//input[@placeholder='Enter your Twitter profile link here']")
	WebElement TwitterUrl;
	
	@FindBy(xpath="//input[@placeholder='Enter your LinkedIn profile link here']")
	WebElement LinkedInUrl;
	
	@FindBy(xpath="//button[text()='+ Add Terms and Conditions']")
	WebElement TermsAndConditionsButton;
	
	@FindBy(xpath="//button[text()='+ Add Delivery & Shipping Policy']")
	WebElement DeliverAndShippingPolicyButton;
	
	@FindBy(xpath="//button[text()='+ Add Refund Policy']")
	WebElement RefundPolicyButton;
	
	@FindBy(xpath="//button[text()='+ Add Privacy Policy']")
	WebElement PrivacyPolicyButton;
	
	@FindBy(xpath="//button[text()='+ Add Pricing Policy']")
	WebElement PricingPolicyButton;
	
	@FindBy(xpath="//textarea[@name='Terms and Conditions']")
	WebElement TextBoxForTermsAndConditions;
	
	@FindBy(xpath="//button[normalize-space()='Add Terms and Conditions']")
	WebElement AddTermsAndConditionsButton;
	
	@FindBy(xpath="//h4[normalize-space()='Cancel']")
	WebElement cancelButton;
	
	@FindBy(xpath="//textarea[@name='Delivery & Shipping Policy']")
	WebElement TextBoxForDeliverAndShipping;
	
	@FindBy(xpath="//button[normalize-space()='Add Delivery & Shipping Policy']")
	WebElement AddDeliverAndShippingButtonPolicyButton;
	
	@FindBy(xpath="//textarea[@name='Refund Policy']")
	WebElement TextBoxForRefundPolicy;
	
	@FindBy(xpath="//button[normalize-space()='Add Refund Policy']")
	WebElement AddRefundPolicyButton;
	
	@FindBy(xpath="//textarea[@name='Privacy Policy']")
	WebElement TextBoxForPrivacyPolicy;
	
	@FindBy(xpath="//button[normalize-space()='Add Privacy Policy']")
	WebElement AddPrivacyPolicyButton;
	
	@FindBy(xpath="//textarea[@name='Pricing Policy']")
	WebElement TextBoxForPricingPolicy;
	
	@FindBy(xpath="//button[normalize-space()='Add Pricing Policy']")
	WebElement AddPricingPolicyButton;
	

	public WebsitePage(WebDriver driver) {
		 
		 this.driver = driver;  
		 
		 PageFactory.initElements(driver, this); 
	 }
 
 	
	public String validate_website_section() {
 		
 		String website_Section_Heading = websiteHomePage.getText();
 		
 		return website_Section_Heading;
 	}
	
	
	public int  check_no_of_Section() {
		
		int no_of_section;
		
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
		
		List<WebElement> default_no_of_sections = wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath("//section[@class='HeroSectionContainer']")));
		
		no_of_section = default_no_of_sections.size();
		
		System.out.print(no_of_section);
		
		return no_of_section;
	}
	
	public void opening_hero_section() {

		heroDropDown.click();

	}
	
	public void opening_content_section() {
		
		contentDropDown.click();
	}
	
	public void opening_closing_section() {
		
		/*JavascriptExecutor js = (JavascriptExecutor) driver;
		
		js.executeScript("arguments[0].scrollIntoView(true);", closingDropDown);*/

		closingDropDown.click();

	}
	
	public void opening_course_section() {
		
		courseDropDown.click();
	}
	
	
	public void opening_footer_section() {
		
		footerDropDown.click();
	}

	public String validate_Hero_section() {
		
		String title;
		
		title = heroTitle.getText();
		
		return title;
	}
	public String validate_content_section() {
		
		/*JavascriptExecutor js = (JavascriptExecutor) driver;
		
		js.executeScript("window.scrollBy(0,500)" );*/
		
		String title;
		
		title = contentTitle.getText();
		
		return title;
	}
	
	
	public String validate_closing_section() {
		
		/*JavascriptExecutor js = (JavascriptExecutor) driver;
		
		js.executeScript("arguments[0].scrollIntoView(true);", closingTitle );*/		
		String title;
		
		title = closingTitle.getText();
		
		return title;
	}
	
	public String validate_course_section() {
		
		/*JavascriptExecutor js = (JavascriptExecutor) driver;
		
		js.executeScript("window.scrollBy(0,200)" );*/
		
		String title;
		
		title = courseTitle.getText();
		
		return title;
	}
	
	
	public String validate_footer_section() {
		
		/*JavascriptExecutor js = (JavascriptExecutor) driver;
		
		js.executeScript("window.scrollBy(0,350)" );*/
		
		String title;
		
		title = footerTitle.getText();
		
		return title;
	}
	
	public void clear_title() {
		
		Title.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
		
	}
	
	public void clear_description() {
		
		description.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
		
	}
	public boolean check_delete_image_is_displayed() {
		
		boolean intialUpload = delImage.isDisplayed();
		
		System.out.println(intialUpload);
		
		return intialUpload;
	}
	
	public void del_Image() {
		
		delImage.click();
		
	}
	
	public void clear_brand_name() {
		
		brandName.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void clear_insta_link() {
		
		insta.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}

	public void clear_face_book_link() {
	
		facebook.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}

	public void clear_you_tube_link() {
	
		youTube.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
   public void select_option(String choosedOption) throws InterruptedException {
		
		selecOpt.click();
		
		Thread.sleep(3000);
		
		Select myOption = new Select(selecOpt);
		
		myOption.selectByVisibleText(choosedOption);
		
	}
	
	public void deleting_section() {
		
		deleteSection.click();
	}
	
	public boolean check_delete_Section_display() {
		
		boolean isDeleteButtonPresent;
		
		try {
		    
		    isDeleteButtonPresent = deleteSection.isDisplayed();
		
		} catch (Exception e) {
		   
			isDeleteButtonPresent = false;
		}
		
		return isDeleteButtonPresent;
	}
	
	public boolean check_delete_popup() {
		
		boolean isdeletepoupdisplayed;
		
		try {
		    
			isdeletepoupdisplayed = deleteSection.isDisplayed();
		
		} catch (Exception e) {
		   
			isdeletepoupdisplayed = false;
		}
		
		return isdeletepoupdisplayed;
		
	}
	
	public void confirm_delete_section() {
		
		deleteConfirm.click();
	}
	
	
	public void enter_title(String giventitle) {
		
		Title.sendKeys(giventitle);
		
	}
	
	public void enter_description(String describe) {
		
		description.sendKeys(describe);
		
	}
	
	public void upload_Image(String Img) {
		
		imageUpload.sendKeys(Img);
	
	}
	
	public void enter_brand_name(String giventitle) {
		
		brandName.sendKeys(giventitle);
		
	}
	
	public void enter_insta_link(String giventitle) {
	
		insta.sendKeys(giventitle);
	
	}

	public void enter_face_book_link(String giventitle) {
	
		facebook.sendKeys(giventitle);
	
	}

	public void enter_you_tube_link(String giventitle) {
	
		youTube.sendKeys(giventitle);
	
	}
	
	public void click_add_new_section() {
		
		addNewSection.click();
	}
	
	public boolean check_add_new_section_button() throws InterruptedException {
		
		Thread.sleep(2000);
		
		boolean isAddNewSectionDisplayed ;
		
		try{
			isAddNewSectionDisplayed = addNewSection.isDisplayed();
			
			System.out.println(isAddNewSectionDisplayed);
		}
		catch (Exception e) {
			   
			isAddNewSectionDisplayed = false;
		}
		
		
		return isAddNewSectionDisplayed;
	}
	
	public void click_add_section() {
		
		addSection.click();
	}
	
	public String get_new_Section_form_heading() {
		
		String formHeading = heading.getText();
		
		return formHeading;
	
	}

	public void save_changes() {
		
		save.click();
	}
	
	public void EnterBrandTagLine(String tagLine) {
		
		BrandTagline.sendKeys(tagLine);
	}
	
	public void ClearBrandTagLine() {
		
		BrandTagline.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void EnterBrandCopyRigh(String copyRight) {
		
		BrandCopyRight.sendKeys(copyRight);
	}
	
	public void ClearBrandCopyRight() {
		
		BrandCopyRight.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void EnterTwitterUrl(String url) {
		
		TwitterUrl.sendKeys(url);
	}
	
	public void ClearTwitterUrl() {
		
		TwitterUrl.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void EnterLinkedInUrl(String url) {
		
		LinkedInUrl.sendKeys(url);
	}
	
	public void ClearLinkedInUrl() {
		
		LinkedInUrl.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	//Terms and conditions in footer
	
	public void ClickOnAddTermsAndConditions() {
		
		TermsAndConditionsButton.click();
	}
	
	public void EnterTermsAndConditions(String TermsAndConditions) {
		
		TextBoxForTermsAndConditions.sendKeys(TermsAndConditions);
	}
	
	public void ClearTermsAndConditions() {
		
		TextBoxForTermsAndConditions.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void ClickOnAddTermsAndCondtionsButton() {
		
		AddTermsAndConditionsButton.click();
	}
	
	
	//Delivery and shipping policy in footer
	
	public void ClickOnAddDeliveryAndShippingPolicy() {
		
		DeliverAndShippingPolicyButton.click();
	}
	
	public void EnterDeliveryAndShippingPolicy(String TermsAndConditions) {
		
		TextBoxForDeliverAndShipping.sendKeys(TermsAndConditions);
	}
	
	public void ClearDeliveryAndShippingPolicy() {
		
		TextBoxForDeliverAndShipping.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void ClickOnAddDeliveryAndShippingPolicyButton() {
		
		AddDeliverAndShippingButtonPolicyButton.click();
	}
	
	
	//Refund Policy in Footer
	
	public void ClickOnAddRefundPolicy() {
		
		RefundPolicyButton.click();
	}
	
	public void EnterRefundPolicy(String TermsAndConditions) {
		
		TextBoxForRefundPolicy.sendKeys(TermsAndConditions);
	}
	
	public void ClearRefundPolicy() {
		
		TextBoxForRefundPolicy.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void ClickOnAddRefundPolicyButton() {
		
		AddRefundPolicyButton.click();
	}
	
	//privacy policy in footer
	
	public void ClickOnAddPrivacyPolicy() {
		
		PrivacyPolicyButton.click();
	}
	
	public void EnterPrivacyPolicy(String TermsAndConditions) {
		
		TextBoxForPrivacyPolicy.sendKeys(TermsAndConditions);
	}
	
	public void ClearPrivacyPolicy() {
		
		TextBoxForPrivacyPolicy.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void ClickOnAddPrivacyPolicyButton() {
		
		AddPrivacyPolicyButton.click();
	}
	
	//Pricing policy in footer
	public void ClickOnAddPricingPolicy() {
		
		PricingPolicyButton.click();
	}
	
	public void EnterPricingPolicy(String TermsAndConditions) {
		
		TextBoxForPricingPolicy.sendKeys(TermsAndConditions);
	}
	
	public void ClearPricingPolicy() {
		
		TextBoxForPricingPolicy.sendKeys(Keys.CONTROL+"a", Keys.BACK_SPACE);
	}
	
	public void ClickOnAddPricingPolicyButton() {
		
		AddPricingPolicyButton.click();
	}
	
	
	public String get_Toast() {
		
		String alert;
		
		WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(60));
		
	    wait.until(ExpectedConditions.visibilityOf(toast));
		
	    alert = toast.getText();
		
		return alert;
		
	}
	
	
	
	
}
