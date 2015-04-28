Meteor.publish "Books", ->
  return Books.find()