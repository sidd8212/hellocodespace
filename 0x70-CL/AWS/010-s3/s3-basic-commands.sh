# s3 basic operation examples 
# 1. create bucket
# 2. upload file
# 3. download file
# 4. delete file
# 5. delete bucket


# tail s3 file 
aws s3api get-object --bucket mybucket --key mykey mylocalfile
# https://docs.aws.amazon.com/cli/latest/reference/s3api/get-object.html
