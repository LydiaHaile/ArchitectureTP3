#!/bin/bash

#running tests on mongodb
chmod +x mongodb_test.sh
./mongodb_test.sh

#running tests on orientdb
chmod +x orientdb_test.sh
./orientdb_test.sh

#running tests on redis
chmod +x redis_test.sh
./redis_test.sh 