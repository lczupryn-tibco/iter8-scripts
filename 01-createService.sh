#!/bin/bash
kubectl create deploy httpbin --image=fb01dvmehbr01.fig.3.uk/public/httpbin --port=80
kubectl expose deploy httpbin --port=80
