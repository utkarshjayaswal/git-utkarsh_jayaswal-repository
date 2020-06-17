package selenium;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.io.FileHandler;

public class twitter {
	
public static void main(String[] args) throws Exception 
{
	System.setProperty("webdriver.chrome.driver", "C:\\selenium\\chromedriver.exe");
	WebDriver driver = new ChromeDriver();
	driver.manage().window().maximize();
	Thread.sleep(200);
	String url="http://twitter.com/login";
	driver.get(url);
	WebElement email_phone = driver.findElement(By.xpath("//*[@id=\"react-root\"]/div/div/div[2]/main/div/div/form/div/div[1]/label/div/div[2]/div/input"));
	email_phone.sendKeys("utkarsh.jayaswal@outlook.com");
	try {
		FileInputStream fstream = new FileInputStream("C:\\selenium\\password.txt");
        // Use DataInputStream to read binary NOT text.
        BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
        String strLine;
        int count = 0;
        count++;
        while((strLine = br.readLine())!= null)
        {
        	WebElement password = driver.findElement(By.xpath("//*[@id=\"react-root\"]/div/div/div[2]/main/div/div/form/div/div[2]/label/div/div[2]/div/input"));
            password.clear();
            password.sendKeys(strLine);
        }
        br.close();
	}
	catch(Exception e) {
		System.err.println("Error:"+e.getMessage());
	}
	WebElement LoginForm_LoginButton = driver.findElement(By.xpath("//*[@id=\"react-root\"]/div/div/div[2]/main/div/div/form/div/div[3]/div"));
	LoginForm_LoginButton.click();
	Thread.sleep(3000);
	TakesScreenshot ts = (TakesScreenshot)driver;
	File source = ts.getScreenshotAs(OutputType.FILE);
	FileHandler.copy(source, new File("C://Users//Utkarsh Jayaswal//Pictures//Screenshots//pic.jpeg"));
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

