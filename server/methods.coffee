Meteor.methods
	getOwnerEmail: (ownerId) ->
		return Meteor.users.findOne({_id: ownerId}, {fields: {emails: 1}}).emails[0].address
