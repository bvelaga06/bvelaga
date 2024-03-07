########################
#  Name : Kit
#  Date: 28th Feb, 2024
#  Version : v1
#  This script is my first aws scrift to check instances on aws
#
#############################
#!/bin/bash
#set -x
#set -o | pipefail
echo "##############################" > myreportaws
echo "Date : $(date)" >> myreportaws
#Listing awss3 buckets
echo "" >>myreportaws
echo "List of current s3 buckets:" >> myreportaws
aws s3 ls >> myreportaws
echo "" >> myreportaws
#listing aws e2 instances
echo "List of current EC2 Instances:" >> myreportaws

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> myreportaws
echo "******************END****************" >> myreportaws
