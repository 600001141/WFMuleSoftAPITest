package wfSImuleSoft.testRunner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import wfSImuleSoft.TestUtil;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;



public class ExpApiRunner2 {
	
	
	 @Test
	    public void expregression() {
	        Results results = Runner.path("classpath:wfSImuleSoft/expApi").tags("~@ignore").outputCucumberJson(true).parallel(1);
	        TestUtil.generateReport(results.getReportDir());
	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
	    }
	 
	 
	 public static void deployReportToTomcat(String reportPath, String tomcatWebappsPath) {
	        try {
	            Path sourceDir = Paths.get(reportPath);
	            Path targetDir = Paths.get(tomcatWebappsPath);
	            Files.walk(sourceDir).forEach(source -> {
	                Path destination = targetDir.resolve(sourceDir.relativize(source));
	                try {
	                    Files.copy(source, destination);
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            });
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }

}
