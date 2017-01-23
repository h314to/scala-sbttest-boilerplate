SBT=sbt
SCALA=scala
TESTSUITE=org.rocket.testbp.HiTest
RUNNER=org.scalatest.tools.Runner
TARGET_PATH=target/scala-2.12
TESTJAR=testbp-assemblytest-1.0.jar

test: $(TARGET_PATH)/$(TESTJAR)
	$(SCALA) -cp $(TARGET_PATH)/$(TESTJAR) $(RUNNER) -o -s $(TESTSUITE)

$(TARGET_PATH)/$(TESTJAR):
	$(SBT) test:assembly

docker: Dockerfile
	docker build -t rocket/testbp .
