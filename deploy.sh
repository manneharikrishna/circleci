/usr/local/bin/aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
/usr/local/bin/aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
/usr/local/bin/aws configure set default.region ${region}

/usr/local/bin/aws ecr get-login-password --region ${region} | docker login --username AWS --password-stdin 556789283657.dkr.ecr.ap-southeast-1.amazonaws.com

docker push 556789283657.dkr.ecr.ap-southeast-1.amazonaws.com/hari:latest

/usr/local/bin/aws ecs register-task-definition --family ${taskdef} --cli-input-json file://taskdef.json --region ${region} --profile default

/usr/local/bin/aws --region ${region} ecs update-service --cluster ${cluster_name} --service ${service_name} --task-definition ${task_def_arn} --profile default --desired-count 1
