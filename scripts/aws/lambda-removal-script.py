from __future__ import absolute_import, print_function, unicode_literals
import boto3


def clean_old_lambda_versions():
    client = boto3.client('lambda', region_name='us-east-1')
    functions = client.list_functions()['Functions']
    for function in functions:
        try:
            print('delete_function(FunctionName={})'.format(function['FunctionArn']))
            client.delete_function(FunctionName=function['FunctionArn'])
        except:
            continue

clean_old_lambda_versions()
