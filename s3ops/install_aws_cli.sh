curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i /projects/allScripts/aws
echo "[default]
aws_access_key_id = $S3_ACCESS_KEY
aws_secret_access_key = $S3_SECRET_KEY 
region = $S3_REGION 
endpoint_url = $S3_ENDPOINT " > ~/.aws/credentials
./aws/aws s3 ls $S3_BUCKET