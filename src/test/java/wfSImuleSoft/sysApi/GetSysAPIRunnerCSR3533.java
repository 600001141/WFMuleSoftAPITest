package wfSImuleSoft.sysApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetSysAPIRunnerCSR3533 {

	@Test
	public Karate SysAPIforCSR3533()

	{
		return Karate
				.run("getEISAgenciesCSR3533Sys", "getEISCustomersCSR3533Sys", "getEISCaseCSR3533Sys",
						"getEISAgentsCSR3533Sys", "getEISPaymentsCSR3533Sys", "getFolderListCSR3533Sys",
						"getLookupValuesCSR3533Sys", "getMultipleLookupsCSR3533Sys", "getEISClaimCSR3533Sys",
						"getCertCSR3533Sys", "getActiveCertsCSR3533Sys", "getMPCSR3533Sys", "getMPsCSR3533Sys")
				.relativeTo(getClass());
	}

}
