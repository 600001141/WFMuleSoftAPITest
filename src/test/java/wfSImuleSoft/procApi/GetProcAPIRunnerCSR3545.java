/**
 * 
 */
package wfSImuleSoft.procApi;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

/**
 * @author 600001141
 *
 */

public class GetProcAPIRunnerCSR3545 {

	@Test
	public Karate procApiTestCSR_3545() {

		return Karate.run("getStartSOCProc").relativeTo(getClass());
	}

}
