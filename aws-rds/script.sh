export AWS_PROFILE=sandbox
export Environment=dev
sed -i "s|EnvironmentUpdateHere|${Environment}|g" file://parameters/${Environment}.json

if ! aws cloudformation list-stacks  

aws cloudformation   create-stack --stack-name test-$Environment --template-body file://rds.yaml --parameters file://parameters/dev.json  --profile sandbox




## 
#aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE
