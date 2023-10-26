echo "[default]
aws_access_key_id = $s3_access_key
aws_secret_access_key = $s3_secret_key 
region = $s3_region 
endpoint_url = $s3_endpoint " > /projects/allScripts/aws/credentials
export AWS_CONFIG_FILE=/projects/allScripts/aws/credentials
/projects/allScripts/aws/v2/current/bin/aws s3 ls $s3_bucket