package wfSImuleSoft.expApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetExpAPIRunnerCSR3522 {

	@Test
	public Karate expApiTestCSR_3522() {

		return Karate.run("getCaseCustomerNumberExp", "getCaseNumberExp").relativeTo(getClass());
	}

}
