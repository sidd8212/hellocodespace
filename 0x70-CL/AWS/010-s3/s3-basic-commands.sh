# s3 basic operation examples 
# 1. create bucket
# 2. upload file
# 3. download file
# 4. delete file
# 5. delete bucket


# tail s3 file 
aws s3api get-object --bucket mybucket --key mykey mylocalfile
# https://docs.aws.amazon.com/cli/latest/reference/s3api/get-object.html

aws s3 cp s3://mybucket/mykey mylocalfile
# https://docs.aws.amazon.com/cli/latest/reference/s3/cp.html
aws s3 cp mylocalfile s3://mybucket/mykey
aws s3 mv s3://mybucket/mykey s3://mybucket/mykey2
aws s3 mv s3://mybucket/mykey s3://mybucket/mykey2 --acl public-read
aws s3 sync s3://mybucket/mykey mylocalfile --no-delete --exclude "*.txt" --include "*.jpg" --dryrun    # dryrun
aws s3 sync mylocalfile s3://mybucket/mykey

aws s3 ls s3://mybucket/mykey
aws s3 ls s3://mybucket/mykey --recursive
aws s3 tail --follow s3://mybucket/mykey
aws s3 rm s3://mybucket/mykey

aws s3 rm s3://mybucket/mykey --recursive --dryrun
aws s3 rb s3://mybucket/mykey # delete bucket differe from rm file  

aws s3 