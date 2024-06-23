import json
import requests
from json import dumps
from httplib2 import Http


#secret in keyvault to connect in space meet 
#chave = dbutils.secrets.get(scope = "kv-area", key = "key_connection_googlemeet")
chave = 'key'

# def to send message to hangouts
def envio_msg_hangouts(chave,msg_erro):

    url = f'https://chat.googleapis.com/v1/spaces/{chave}'
    bot_message = {'text': 'Error in Databricks pipeline -> ' + str(msg_erro)}
    message_headers = {'Content-Type': 'application/json; charset=UTF-8'}
    http_obj = Http()
    try:
        response = http_obj.request(
            uri=url,
            method='POST',
            headers=message_headers,
            body=dumps(bot_message),
        )
    except Exception as ex:
        return str(ex)
    
    return print("sucess")