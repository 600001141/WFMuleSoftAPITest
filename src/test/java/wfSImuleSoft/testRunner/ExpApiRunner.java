package wfSImuleSoft.testRunner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import wfSImuleSoft.TestUtil;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;


public class ExpApiRunner {
	
	
	 @Test
	    public void expregression() {
	        Results results = Runner.path("classpath:wfSImuleSoft/expApi").tags("~@ignore").outputCucumberJson(true).parallel(1);
	        TestUtil.generateReport(results.getReportDir());
	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
	    }

}
