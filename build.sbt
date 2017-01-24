name := "testbp"

version := "1.0"

scalaVersion := "2.11.8"

// https://mvnrepository.com/artifact/org.scalatest/scalatest_2.11
libraryDependencies += "org.scalatest" % "scalatest_2.11" % "3.0.1"

// Create assembly jar containing test classes
//Project.inConfig(Test)(baseAssemblySettings)
//assemblyJarName in (Test, assembly) := s"${name.value}-assemblytest-${version.value}.jar"
//
//test in (Test, assembly) := {} // disable tests in assembly
