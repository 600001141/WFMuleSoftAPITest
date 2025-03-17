package wfSImuleSoft.procApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetProcAPIRunnerCSR3541 {
	
	@Test
	public Karate procApiCSR3541() {
		return Karate.run("getStartProcessCSR3541Proc").relativeTo(getClass());

	}

}
