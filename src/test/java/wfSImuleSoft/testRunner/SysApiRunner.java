package wfSImuleSoft.testRunner;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import wfSImuleSoft.TestUtil;


public class SysApiRunner {
	
	
	 @Test
	    public void sysregression() {
	        Results results = Runner.path("classpath:wfSImuleSoft/sysApi").tags("~@ignore").outputCucumberJson(true).parallel(1);
	        TestUtil.generateReport(results.getReportDir());
	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
	        
	    }

}
