#!/bin/sh

mvn clean package
mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)