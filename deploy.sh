aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
aws configure set default.region ${region}
aws ecs register-task-definition --family ${taskdef} --cli-input-json file://taskdef.json --region ${region} --profile default
aws --region ${region} ecs update-service --cluster ${cluster_name} --service ${service_name} --task-definition ${task_def_arn} --profile default
