```
brew install awscli

aws configure
AWS Access Key ID [None]: usernamekamu
AWS Secret Access Key [None]: passwordkamu
Default region name [None]: us-east-1
Default output format [None]: json

#bikin bucket
aws --endpoint-url http://192.168.0.x:9000 s3 mb s3://test-bucket

#upload
aws --endpoint-url http://192.168.0.x:9000 s3 cp mita.txt s3://test-bucket/mita.txt


```