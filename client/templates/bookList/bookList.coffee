Template.bookList.helpers
  books: ->
    console.log(Books.find({}).fetch())
    return Books.find({})