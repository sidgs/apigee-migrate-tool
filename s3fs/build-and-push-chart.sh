#!/usr/bin/env bash


export HELM_EXPERIMENTAL_OCI=1

repo_name=sidgs-apigee-migrate-sidgs-aws-s3-mount
repoCount=`aws ecr-public describe-repositories | grep repositoryName | grep $repo_name |wc -l`

if [ $repoCount -eq 0 ] ; then
 echo "Creating Repo : $repo_name"
 aws ecr-public create-repository --repository-name $repo_name
fi
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/sidgs

docker-compose build 
docker-compose push 