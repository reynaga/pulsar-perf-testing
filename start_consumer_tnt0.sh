#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the namespace identifier for tnt0"
  exit 1
fi

NS_ID=$1

java -jar nb5.jar run \
cycles=5000000 \
threads=auto \
driver=pulsar \
cyclerate=1000 \
workload=scenarios/consumer_tnt0_$NS_ID.yaml \
web_url="https://pc-f7e95308.gcp-usc1-ford-bdrck-pre.g.snio.cloud" \
service_url="pulsar+ssl://pc-f7e95308.gcp-usc1-ford-bdrck-pre.g.snio.cloud:6651" \
config="/opt/pulsar/perf/nosqlbench/nb5/conf/pulsar_config_avro.properties" \
--progress console:10s -v \
--report-csv-to metrics \
--log-histograms hdrdata/hdrdata_tnt0_$NS_ID.log
