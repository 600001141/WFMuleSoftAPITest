package wfSImuleSoft.expApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetExpAPIRunnerCSR3534 {
	
	
		@Test
		public Karate expApiRegTestCSR3534() {
			return Karate.run("getEmailsPageExpCSR3534", "getEmailExpCSR3534", "getSaveEmailExpCSR3534").relativeTo(getClass());

		}

}
