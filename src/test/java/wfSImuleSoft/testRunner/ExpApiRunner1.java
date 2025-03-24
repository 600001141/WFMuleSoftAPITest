package wfSImuleSoft.testRunner;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import wfSImuleSoft.TestUtil;

public class ExpApiRunner1 {
	
	
	@Test
    public void expregressionTest() {
        Results results = Runner.path("classpath:wfSImuleSoft/expApi").tags("~@ignore").outputCucumberJson(true).parallel(1);
        TestUtil.generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
