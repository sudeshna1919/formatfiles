package page;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BaseSetUp {
	
	public static WebDriver driver;

    public static void initializeWebDriver() throws IOException {  
		
		driver = new ChromeDriver();
		//driver = new EdgeDriver();
	
	     
        // To maximize browser  
       driver.manage().window().maximize();  
      
        // Implicit wait  
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        //driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));
        driver.get("https://khambee.in/"); 
	
	}
	
	
	 public static void quitDriver() {  
        
		 driver.quit();  
    }
	

}
