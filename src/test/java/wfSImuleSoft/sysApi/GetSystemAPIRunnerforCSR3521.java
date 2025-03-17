package wfSImuleSoft.sysApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetSystemAPIRunnerforCSR3521 {

	@Test
	public Karate SysAPIforCSR3521()

	{
		return Karate.run("get-mule-s3-system-api-to getPdf", "get-mule-s3-system-api-to get404errorCode")
				.relativeTo(getClass());
	}
}
