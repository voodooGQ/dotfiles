import boto3

# --------------------------------------------------------------
# Delete all CloudWatch log streams.
# --------------------------------------------------------------
def delete_log_streams():
    next_token = None
    logs = boto3.client('logs', region_name='us-east-2')
    log_groups = logs.describe_log_groups()

    for log_group in log_groups['logGroups']:
        log_group_name = log_group['logGroupName']

        while True:
            if next_token:
                log_streams = logs.describe_log_streams(logGroupName=log_group_name,
                                                        nextToken=next_token)
            else:
                log_streams = logs.describe_log_streams(logGroupName=log_group_name)

            next_token = log_streams.get('nextToken', None)

            for stream in log_streams['logStreams']:
                log_stream_name = stream['logStreamName']
                print("Delete log stream:", log_stream_name)
                logs.delete_log_stream(logGroupName=log_group_name, logStreamName=log_stream_name)

            if not next_token or len(log_streams['logStreams']) == 0:
                break

        print("Delete log group:", log_group_name)
        logs.delete_log_group(logGroupName=log_group_name)

delete_log_streams()
