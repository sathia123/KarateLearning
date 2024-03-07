package examples.users;

import com.intuit.karate.junit5.Karate;

public class getJobRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("hooks").relativeTo(getClass());
    }    

}
