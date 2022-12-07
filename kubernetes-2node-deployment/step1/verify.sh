#!/bin/bash

if k get deploy nginx-depl -o=jsonpath='{.status.replicas}'=2 && k get deploy nginx-depl -o=jsonpath='{.spec.template.spec.containers[0].image}'='nginx'
then
exit 1;
fi