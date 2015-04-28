Router.map ->
  @route "index",
    path: "/"
    name: "index"
    layoutTemplate: 'coreLayout'
    template: "index"
  @route "bookDetail",
    path: "/book/:_id"
    name: "bookDetail"
    layoutTemplate: 'coreLayout'
    template: "bookDetail"
    data: ->
      if Books.findOne(@params._id)
        book = Books.findOne({'_id': @params._id})
        book.ownerEmail = ReactiveMethod.call "getOwnerEmail", book.ownerId
        return book
    waitOn: ->
      @subscribe "Books"
  @route "addBook",
    path: "/addBook"
    name: "addBook"
    layoutTemplate: 'coreLayout'
    template: "addBook"