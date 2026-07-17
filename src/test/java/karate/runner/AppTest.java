
package karate.runner;

import com.intuit.karate.junit5.Karate;

class AppTest {

    @Karate.Test
    Karate testApi() {
        return Karate.run("classpath:features");
    }

}


