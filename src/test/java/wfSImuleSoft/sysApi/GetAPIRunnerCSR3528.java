package wfSImuleSoft.sysApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetAPIRunnerCSR3528 {
	
	@Test
	public Karate SysAPIforCSR3528()

	{
		return Karate
				.run("getAppEventLogCSR3528Sys", "getAppEventLogPageCSR3528Sys", "getAppEventLogpagesizeCSR3528").relativeTo(getClass());
	}

}
