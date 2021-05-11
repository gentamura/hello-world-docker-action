#!/bin/sh -l

echo "Hello $1"
echo "Updated scripts"
time=$(date)
echo "::set-output name=time::$time"
