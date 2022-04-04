#!/bin/bash

# Authorize TCP, SSH & ICMP for default Security Group
#ec2-authorize default -P icmp -t -1:-1 -s 0.0.0.0/0
#ec2-authorize default -P tcp -p 22 -s 0.0.0.0/0

# The Static IP Address for this instance:
# IP_ADDRESS=$(cat ~/.ec2/ip_address)

# Create new t2.micro instance using ami-cef405a7 (64 bit Ubuntu Server 10.10 Maverick Meerkat)
# using the default security group and a 16GB EBS datastore as /dev/sda1.
# EC2_INSTANCE_KEY is an environment variable containing the name of the instance key.
# --block-device-mapping ...:false to leave the disk image around after terminating instance
EC2_RUN_RESULT=$(aws ec2 run-instances --image-id ami-0bb6af715826253bf --security-group-ids sg-008147de9733254d3 --instance-type t2.micro)

