#!/bin/bash

result=$(make test | tail -1 | grep "All tests passed.")
if [ "x$result" != "x" ] ; then
  echo - OK
else
  echo - KO
fi
