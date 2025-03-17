package wfSImuleSoft.expApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class GetExpAPIRunnerCSR3536 {

	@Test
	public Karate expApiRegTestCSR3536() {
		return Karate.run("getEntlookupsLuCategoryCSR3536", "getEntlookupsLuCategoryIdCSR3536",
				"getEntlookupsCategoryCSR3536", "getEntlookupsLuItemsCSR3536", "getEntlookupsOneLuItemCSR3536",
				"getEntlookupsLuItemCSR3536", "getEntEISLookupCSR3536", "getEntEISLUItemsCSR3536",
				"getEISLUItemCSR3536").relativeTo(getClass());

	}

}
