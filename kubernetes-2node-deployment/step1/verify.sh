#!/bin/bash

if [ ! "$(kubectl get deploy nginx-depl)" ] || [ ! "$(kubectl get deploy nginx-depl -o=jsonpath='{.status.replicas}')" -eq 2 ] || [ ! "$(kubectl get deploy nginx-depl -o=jsonpath='{.spec.template.spec.containers[0].image}')" = "nginx" ]; then exit 1; fi