name := "testbp"

version := "1.0"

scalaVersion := "2.12.1"

// https://mvnrepository.com/artifact/org.scalatest/scalatest_2.12
libraryDependencies += "org.scalatest" % "scalatest_2.12" % "3.0.1"

Project.inConfig(Test)(baseAssemblySettings)
assemblyJarName in (Test, assembly) := s"${name.value}-assemblytest-${version.value}.jar"

test in (Test, assembly) := {} // disable tests in assembly
