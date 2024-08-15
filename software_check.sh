#!/usr/bin/env bash
which docker && echo "Docker is intalled on this host $(hostname -s)" || echo "Docker is not installed on this host $(hostname -s) "
which python3 && { echo "Python is installed on this host $(hostname -s)" ; echo "Installed python version is $(python3 --version)" ; } || echo "Python is not installed on this host $(hostname -s)"
