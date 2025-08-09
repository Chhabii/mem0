#!/bin/bash


cd docker/neo4j && docker compose up -d

cd ../milvus && docker compose up -d
cd ../redis && docker compose up -d
