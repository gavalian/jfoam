#!/bin/sh
#*********************************************************
#---------------------------------------------------------
# JHEP math CLI interface.
#---------------------------------------------------------
java -cp "target/jfoam-1.0-SNAPSHOT-jar-with-dependencies.jar" org.jlab.jnp.foam.MCFoam $*
