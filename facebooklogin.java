//This is the easiest Facebook automation code in selenium using java where you read the password from a text file saved in any location in your computer system(In this case, it is saved in C:\\selenium)

package selenium;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
public class facebooklogin {
     public static void main(String[] args) throws InterruptedException
     {
          System.setProperty("webdriver.chrome.driver","C:\\selenium\\chromedriver.exe");
          WebDriver driver = new ChromeDriver();
          driver.manage().window().maximize();
          driver.get("https://www.facebook.com");
          driver.findElement(By.id("email")).sendKeys("yourusername@gmail.com");
          try {
      		FileInputStream fstream = new FileInputStream("C:\\selenium\\password.txt");
              // Use DataInputStream to read binary NOT text.
              BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
              String strLine;
              int count = 0;
              count++;
              while((strLine = br.readLine())!= null)
              {
              	WebElement password = driver.findElement(By.xpath("/html/body/div[1]/div[2]/div/div/div/div/div[2]/form/table/tbody/tr[2]/td[2]/input"));
                  password.clear();
                  password.sendKeys(strLine);
              }
              br.close();
      	}
      	catch(Exception e) {
      		System.err.println("Error:"+e.getMessage());
      	}
          Thread.sleep(1000);
          driver.findElement(By.xpath("/html/body/div[1]/div[2]/div/div/div/div/div[2]/form/table/tbody/tr[2]/td[3]/label/input")).click(); 
          Thread.sleep(7000);
     }
}
