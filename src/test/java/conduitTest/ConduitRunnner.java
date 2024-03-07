package conduitTest;
 
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ConduitRunnner {
	
	@Karate.Test
	public Karate runTest() {
		return Karate.run("conduit").relativeTo(getClass());
		
	}
	
	//@Test
	public Karate runTestUsingClassPath() {
		return Karate.run("classpath:com/api/automation/getrequest/getRequest.feature");
		
	}
	

	// @Test
	public Karate runTestTag() {
		return Karate.run("classpath:com/api/automation/getrequest/getRequest.feature").tags("@debug").relativeTo(getClass());
		
	}
	
}