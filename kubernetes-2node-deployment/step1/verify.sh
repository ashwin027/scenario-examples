#!/bin/bash

repResult="$(k get deploy nginx-depl -o=jsonpath='{.status.replicas}')";
image="$(k get deploy nginx-depl -o=jsonpath='{.spec.template.spec.containers[0].image}')";
if [ "$repResult" -eq 2 ] && [ "$image" = "nginx" ]
then
   exit 1
fi