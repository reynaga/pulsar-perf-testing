#!/bin/bash

java -jar nb5.jar run \
cycles=5000000 \
threads=auto \
cyclerate=1000 \
driver=pulsar \
workload=scenarios/producer_tnt0.yaml \
web_url="https://pc-f7e95308.gcp-usc1-ford-bdrck-pre.g.snio.cloud" \
service_url="pulsar+ssl://pc-f7e95308.gcp-usc1-ford-bdrck-pre.g.snio.cloud:6651" \
config="/opt/pulsar/perf/nosqlbench/nb5/conf/pulsar_config_avro.properties" \
--progress console:10s -v \
--report-csv-to metrics \
--log-histograms hdrdata/hdrdata_tnt0.log
