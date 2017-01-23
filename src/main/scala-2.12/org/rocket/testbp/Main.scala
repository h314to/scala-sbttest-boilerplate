package org.rocket.testbp

/**
  * Created by agapito on 17/01/2017.
  */
object Main extends App {
  val hi = new Hi("world")
  println(hi.sayHello)
}

class Hi(name:String) {
  def sayHello: String = s"Hello $name!"
}