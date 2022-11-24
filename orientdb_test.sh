#!/bin/bash

cd targetDB

# start services defined in docker-compose-orientdb.yml
docker-compose -f docker-compose-orientdb.yml up -d 

cd ../ycsb-0.17.0

# run orientdb three times on workload a - save output in directory results/orientdb/workload_A
for iter in {1..3}
    do
        bin/ycsb.sh load orientdb -P workloads/workloada -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_A/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloada -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_A/output_run${iter}
    done

# run orientdb three times on workload b – save output in directory results/orientdb/workload_B
for iter in {1..3}
    do
        bin/ycsb.sh load orientdb -P workloads/workloadb -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_B/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloadb -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_B/output_run${iter}
    done

cd ../targetDB

# stop services defined in docker-compose-orientdb.yml
docker-compose -f docker-compose-orientdb.yml down