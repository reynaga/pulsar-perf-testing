# Overview

NoSQLBench is a command line tool for running workloads against NoSQL databases. 
It is designed to be simple to use, and to provide a consistent interface for 
running workloads against different databases. 
It is also designed to be extensible, so that new databases can be added easily.

Reference: https://docs.nosqlbench.io/

This configuration was set up to run on a local machine with the following specs:
* 1 tenant
* 5 namespaces per tenant
* 200 topics (5 partitions each) per namespace

They will run a total of 5000 producers and consumers (1000 per namespace).

### Prerequisites

* nb5.jar (downloaded from https://docs.nosqlbench.io/getting-started/00-get-nosqlbench/#get-the-latest-nb5-jar)
* Java 17
* The tenant was previously created with the naming convention: `tnt<tenant number>`, e.g. `tnt0`
* The namespaces were previously created with the naming convention: `-ns<namespace number>`, e.g. `ns0`
* The topics were previously created on each namespace with the naming convention: `tp<topic number>`, e.g. `topic0`

### Running the workload

1. To run the producers, run the `start_producer_tnt0.sh` script:
```
./start_producer_tnt0.sh
```
2. To run the consumers, run the `start_consumer_tnt0.sh` script by providing the namespace as an argument:
```
./start_consumer_tnt0.sh ns0
```
