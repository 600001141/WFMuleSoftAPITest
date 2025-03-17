package wfSImuleSoft.testRunner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import wfSImuleSoft.TestUtil;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class ProcApiRunner {	
	
	    @Test
	    public void procregression() {
	        Results results = Runner.path("classpath:wfSImuleSoft/procApi").tags("~@ignore").outputCucumberJson(true).parallel(1);
	        TestUtil.generateReport(results.getReportDir());
	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
	    }
	
	

}
