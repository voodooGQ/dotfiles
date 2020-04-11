import boto3
import re

def delete_buckets():
    next_token = None
    s3 = boto3.client('s3', region_name='us-east-1')
    buckets = s3.list_buckets().get('Buckets', [])

    for bucket in buckets:
        bucket_name = bucket.get('Name')
        if not re.match(r'.+msp.+', bucket_name): continue
        print('Deleting bucket %s' % bucket_name)
        res = boto3.resource('s3')
        buck = res.Bucket(bucket_name)

        buck.objects.delete()
        buck.object_versions.delete()

        s3.delete_bucket(Bucket=bucket_name)


delete_buckets()
