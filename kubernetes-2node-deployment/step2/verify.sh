#!/bin/bash

if k get deploy nginx-depl -o=jsonpath='{.status.replicas}'=1
then
exit 1;
fi