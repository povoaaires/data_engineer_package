#chave_encrypt = dbutils.secrets.get(scope = "kv-area", key = "encripta_coluna")

from cryptography.fernet import Fernet


def encrypt_field_udf(field,chave_encrypt):

    msg_enc = Fernet(chave_encrypt)
    convert_byte = bytes(field, 'utf-8')
    encrypt_field = msg_enc.encrypt(convert_byte)
    decode_field = str(encrypt_field.decode('ascii'))

    return decode_field
    
    
def decrypt_field_udf(field,chave_encrypt):
    msg_enc = Fernet(chave_encrypt)
    decrypt = msg_enc.decrypt(field.encode()).decode()
    
    return decrypt