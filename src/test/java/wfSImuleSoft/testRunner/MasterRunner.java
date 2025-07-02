package wfSImuleSoft.testRunner;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import wfSImuleSoft.TestUtil;

public class MasterRunner {
	
	
	
	@Test
    public void masterRegressionTest() {
        Results results = Runner.path("classpath:wfSImuleSoft/expApi", "classpath:wfSImuleSoft/procApi", "classpath:wfSImuleSoft/sysApi").tags("~@ignore").outputCucumberJson(true).parallel(1);
        TestUtil.generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
