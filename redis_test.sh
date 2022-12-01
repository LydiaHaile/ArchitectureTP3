#!/bin/sh

for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-redis.yml
        docker-compose -f docker-compose-redis.yml up -d 

        cd ../ycsb-0.17.0

        ./bin/ycsb.sh load redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.cluster=true" > ../results/redis/workload_A/output_load${iter}
        ./bin/ycsb.sh run redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.cluster=true" > ../results/redis/workload_A/output_run${iter}
        
        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done

for iter in {1..3}
    do
        cd targetDB

        # start services defined in docker-compose-redis.yml
        docker-compose -f docker-compose-redis.yml up -d 

        cd ../ycsb-0.17.0

        ./bin/ycsb.sh load redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.cluster=true" > ../results/redis/workload_B/output_load${iter}
        ./bin/ycsb.sh run redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -p "redis.cluster=true" > ../results/redis/workload_B/output_run${iter}
        
        cd ../targetDB

        # stop services defined in docker-compose-orientdb.yml
        docker-compose -f docker-compose-orientdb.yml down

        cd ..
    done