from pymongo import MongoClient
import certifi

MONGO_URI = 'mongodb+srv://jdjimeneze:123456789UD@cluster0.m4fssab.mongodb.net/test'
ca = certifi.where()

def dbConnection():
    try:
        client = MongoClient(MONGO_URI, tlsCAFile=ca)
        db = client["dbb_products_app"]
    except ConnectionError:
        print('Error de conexión con la bdd')
    return db