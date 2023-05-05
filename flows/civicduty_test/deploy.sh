#!/bin/bash
prefect deployment build --name=civicduty_test1 -q default -sb=remote-file-system/minio civicduty_test1.py:civi_flow
prefect deployment apply civicduty_test1-deployment.yaml
