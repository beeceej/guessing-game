#!/bin/bash

main() {
  ccl64 --load compile.cl --eval '(ccl:quit)'
  mv guessing-game bin
}

main