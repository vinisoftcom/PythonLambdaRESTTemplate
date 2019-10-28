import json
import boto3
import random

# import requests



def list_contacts(event, context):
    dynamodb = boto3.resource('dynamodb', region_name='eu-central-1')
    table = dynamodb.Table('TableContacts')
    scanResponse = table.scan()
    return {
        "statusCode": 200,
        "body": "{0}".format(scanResponse),
    }

def save_contact(event, context):
    dynamodb = boto3.resource('dynamodb', region_name='eu-central-1')
    table = dynamodb.Table('TableContacts')
    
    print("Event recieved {0}".format(event['body']))

    response = table.put_item(
       Item={
            'contactId': "contact{0}".format(random.randint(1,999999)),
            'contact': event['body']
        }
    )

    print("PutItem succeeded with :{0}".format(response))
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "Contact saved"
        }),
    }

def delete_contacts(event, context):
    dynamodb = boto3.resource('dynamodb', region_name='eu-central-1')
    table = dynamodb.Table('TableContacts')
    
    print("Event recieved {0}".format(event))

    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "Contact deleted"
        }),
    }
