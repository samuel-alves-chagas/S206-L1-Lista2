package breaking_bad;

import com.intuit.karate.junit5.Karate;

class BreakingBadRunner {

  @Karate.Test
  Karate testPokemon() {
      return Karate.run("breaking_bad").relativeTo(getClass());
    }

}
