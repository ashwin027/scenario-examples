#!/bin/bash

repResult="$(k get deploy nginx-depl -o=jsonpath='{.status.replicas}')";
if [ "$repResult" -eq 1 ]
then
   exit 1
fi