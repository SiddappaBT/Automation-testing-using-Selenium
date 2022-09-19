package Day2;

import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;

import io.netty.util.AsciiString;

public class test_script_demo2 {

	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver","./drivers/chromedriver.exe");
		 ChromeDriver driver = new ChromeDriver();
		 driver.get("https://opensource-demo.Orangehrmlive.com/");
		 driver.findElement(By.id("txtUsername")).sendKeys("Admin");
		 driver.findElement(By.id("txtPassword")).sendKeys("admin123");
		 driver.findElement(By.id("btnLogin")).click();
		 String title = driver.getTitle();
		 if(title.equals(title));
		 {
		 System.out.println("login test is passed");
		 }
		 else
		 {
			 System.out.println("login test is failed");
		 }
		 driver.close();

	}
}
