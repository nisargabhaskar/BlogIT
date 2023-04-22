from pymongo import MongoClient
user = 'admin'
password = 'admin'
host = 'mongodb-service'
port = '27017'
conn_string = f'mongodb://{user}:{password}@{host}:{port}'
client = MongoClient(conn_string)

# switch to the 'blog' database
db = client['blog']

# get a reference to the 'posts' collection
collection = db['posts']

# create a document to be inserted into the collection
post = {
    'title': 'My First Blog Post',
    'content': 'This is the content of my first blog post.',
    'author': 'John Doe',
    'date': '2023-04-22'
}

# insert the document into the collection
result = collection.insert_one(post)

# print the ID of the inserted document
print(result.inserted_id)