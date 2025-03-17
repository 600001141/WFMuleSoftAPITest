package wfSImuleSoft.sysApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetSysAPIRunnerCSR3539 {
	
	
	@Test
	public Karate SysAPIforCSR3539()

	{
		return Karate
				.run("getUserOktaSysCSR3539", "getUserGroupOktaSysCSR3539", "clearUserSessionOktaSysCSR3539").relativeTo(getClass());
	}

}
