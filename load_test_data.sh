#!/usr/bin/env bash

# load main test data
stardog-admin db drop -n nodeDB
stardog-admin db create -n nodeDB -o search.enabled=true -- data/api_tests.nt

# load reasoning test data
stardog-admin db drop -n nodeDBReasoning
stardog-admin db create -n nodeDBReasoning -o search.enabled=true -- data/reasoning/tbox.ttl data/reasoning/abox.ttl
