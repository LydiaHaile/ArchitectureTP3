#!/bin/bash

# run orientdb three times on workload a - save output in directory results/orientdb/workload_A
for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml up -d 

        cd ../ycsb-0.17.0

        bin/ycsb.sh load orientdb -P workloads/workloada -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_A/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloada -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_A/output_run${iter}
        
        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done

# run orientdb three times on workload b – save output in directory results/orientdb/workload_B
for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml up -d 

        cd ../ycsb-0.17.0

        bin/ycsb.sh load orientdb -P workloads/workloadb -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_B/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloadb -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_B/output_run${iter}

        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done

# run orientdb three times on workload c – save output in directory results/orientdb/workload_C
for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml up -d 

        cd ../ycsb-0.17.0

        bin/ycsb.sh load orientdb -P workloads/workloadc -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_C/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloadc -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_C/output_run${iter}

        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done

# run orientdb three times on workload d – save output in directory results/orientdb/workload_D
for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml up -d 

        cd ../ycsb-0.17.0

        bin/ycsb.sh load orientdb -P workloads/workloadd -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_D/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloadd -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_D/output_run${iter}

        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done

# run orientdb three times on workload e – save output in directory results/orientdb/workload_E
for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml up -d 

        cd ../ycsb-0.17.0

        bin/ycsb.sh load orientdb -P workloads/workloade -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_E/output_load${iter}
        bin/ycsb.sh run orientdb -P workloads/workloade -p orientdb.url=plocal:localhost:2480 -p orientdb.password=admin > ../results/orientdb/workload_E/output_run${iter}

        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done