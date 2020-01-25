package selenium;

import java.io.File;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.io.FileHandler;

public class twitter {
	
public static void main(String[] args) throws Exception 
{
	System.setProperty("webdriver.chrome.driver", "/home/utkarsh/chromedriver_linux64/chromedriver");
	WebDriver driver = new ChromeDriver();
	driver.manage().window().maximize();
	Thread.sleep(200);
	driver.get("http://twitter.com/login");
	driver.findElement(By.xpath("//*[@id=\"page-container\"]/div/div[1]/form/fieldset/div[1]/input")).sendKeys("utkarshrox.jayaswal@gmail.com");
	driver.findElement(By.xpath("//*[@id=\"page-container\"]/div/div[1]/form/fieldset/div[2]/input")).sendKeys("U1karsh123");
	driver.findElement(By.xpath("//*[@id=\"page-container\"]/div/div[1]/form/div[2]/button")).click();
	Thread.sleep(3000);
	TakesScreenshot ts = (TakesScreenshot)driver;
	File source = ts.getScreenshotAs(OutputType.FILE);
	FileHandler.copy(source, new File("./screenshot/pic.png"));
	Thread.sleep(300);
	driver.findElement(By.xpath("//*[@id=\"react-root\"]/div/div/div/header/div/div/div/div/div[2]/nav/a[7]/div/div[2]/span")).click();
	if(driver.findElement(By.xpath("//*[@id=\"react-root\"]/div/div/div/header/div/div/div/div/div[2]/nav/a[7]/div/div[2]/span")) != null) {
		System.out.println("TRUE, Profile section exists");
	}
	else {
		System.out.println("FALSE");
	}
	Thread.sleep(3000);
	driver.navigate().back();
}
}


