#!/bin/bash

for D in */; do docker compose -f ${D}docker-compose.yml up -d --build; done
