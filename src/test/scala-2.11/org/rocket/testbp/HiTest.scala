package org.rocket.testbp

import org.scalatest.FunSuite

/**
  * Created by agapito on 18/01/2017.
  */
class HiTest extends FunSuite {
  test("Well behaved programs should know how to greet people.") {
    val hi = new Hi("tester")
    assert(hi.sayHello == "Hello tester!")
  }
}
