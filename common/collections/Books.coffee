Schemas = {}
Schemas.Books = new SimpleSchema
  name:
    type: String
  description:
    type: String
    optional: true
  ownerId:
    type: String
@Books = new Mongo.Collection "Books"
Books.attachSchema Schemas.Books