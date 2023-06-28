#!/bin/bash
./iter8 k launch \
--set iter8Image=fb01dvmehbr01.fig.3.uk/public/iter8:0.11 \
--set "tasks={ready,http,assess}" \
--set ready.deploy=httpbin \
--set ready.service=httpbin \
--set ready.timeout=60s \
--set http.url=http://httpbin.jx/get \
--set http.qps=100 \
--set http.connections=50 \
--set assess.SLOs.upper.http/latency-mean=50 \
--set assess.SLOs.upper.http/error-count=0 \
--set runner=job

