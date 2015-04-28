AutoForm.hooks 
  insertBookForm:
    before:
      insert: (doc) ->
        if Meteor.userId()
          doc.ownerId = Meteor.userId()
          return doc;
        else
          this.result(false)
    onSuccess: ->
      Router.go('index')