#!/bin/bash
./iter8 k delete
kubectl delete svc/httpbin
kubectl delete deploy/httpbin
rm -rf charts

