#!/bin/bash

REGION="ap-northeast-2"
TARGET=$(hostname -i)
TARGET_GROUP_ARN="arn:aws:elasticloadbalancing:ap-northeast-2:239234376445:targetgroup/k8s-demo2021-syhaip-56d2955d61/353dc69db9f78a8c"

aws elbv2 deregister-targets --region $REGION \
    --target-group-arn $TARGET_GROUP_ARN \
    --targets Id=$TARGET

sleep 10