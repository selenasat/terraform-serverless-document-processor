import json
import boto3

def lambda_handler(event, context):
    # Grab the S3 bucket name and file name from the event trigger
    try:
        bucket_name = event['Records'][0]['s3']['bucket']['name']
        file_key = event['Records'][0]['s3']['object']['key']
        
        print(f"Success! New document detected. Processing: {file_key} from bucket: {bucket_name}")
        
        # This is where the document parsing/processing logic will live later!
        
        return {
            'statusCode': 200,
            'body': json.dumps(f'Successfully processed {file_key}!')
        }
    except Exception as e:
        print(f"Error processing event: {str(e)}")
        raise e