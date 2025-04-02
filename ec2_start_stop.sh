#!/bin/bash

#####################################

# AWS EC2 Start/Stop Script
# Author: Pasindu Waidyarathna
# Version: v0.0.1
# Description: Start or stop an AWS EC2 instance.

# Check if the required number of arguments are passed
if [ $# -ne 3 ]; then
    echo "Usage: ./aws_ec2_control.sh <aws_region> <instance_id> <start|stop>"
    echo "Example: ./aws_ec2_control.sh us-east-1 i-1234567890abcdef start"
    exit 1
fi

# Assign arguments to variables
aws_region=$1
instance_id=$2
action=$3

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install AWS CLI and try again."
    exit 1
fi

# Validate action argument
if [[ "$action" != "start" && "$action" != "stop" ]]; then
    echo "Invalid action. Use 'start' or 'stop'."
    exit 1
fi

# Execute the requested action
if [ "$action" == "start" ]; then
    echo "Starting EC2 instance: $instance_id in region: $aws_region..."
    aws ec2 start-instances --instance-ids $instance_id --region $aws_region
elif [ "$action" == "stop" ]; then
    echo "Stopping EC2 instance: $instance_id in region: $aws_region..."
    aws ec2 stop-instances --instance-ids $instance_id --region $aws_region
fi

# Wait for the instance to reach the desired state
echo "Waiting for instance to reach '$action' state..."
aws ec2 wait instance-$actioned --instance-ids $instance_id --region $aws_region

echo "Instance $instance_id is now in '$action' state."

