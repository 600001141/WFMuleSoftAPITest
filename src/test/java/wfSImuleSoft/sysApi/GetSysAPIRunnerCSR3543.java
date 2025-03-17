package wfSImuleSoft.sysApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetSysAPIRunnerCSR3543 {

	@Test
	public Karate SysAPIforCSR3543()

	{
		return Karate
				.run("getAccountsNameCSR3543Sys", "getAccountsDetailsCSR3543Sys", "getAccountIDCSR3543Sys",
						"getContactsNameCSR3543Sys", "getContactsDetailsCSR3543Sys", "getContactsIDCSR3543Sys",
						"getOpportunitiesCSR3543Sys", "getOpportunitiesSmokeCSR3543Sys", "getOpportunitiesIDCSR3543Sys")
				.relativeTo(getClass());
	}

}
