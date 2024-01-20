#!/bin/bash
touch test.txt
find . -name "*.txt" -exec cp {} test.txt \;