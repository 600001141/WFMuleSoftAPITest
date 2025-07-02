package wfSImuleSoft.sysApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetAPIRunnerCSR3531 {
	
	@Test
	public Karate SysAPIforCSR3531()

	{
		return Karate
				.run("getEASPaymentCSR3531Sys").relativeTo(getClass());
	}

}
