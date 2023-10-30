echo "AWS CLI has been installed here -> $AWS_CLI"
echo "[default]
aws_access_key_id = $s3_access_key
aws_secret_access_key = $s3_secret_key 
region = $s3_region 
endpoint_url = $s3_endpoint " > aws/credentials
export AWS_CONFIG_FILE=/aws/credentials
aws s3 ls $s3_bucket --recursive