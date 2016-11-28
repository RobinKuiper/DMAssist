Template.firstTime.onRendered ->
  if Meteor.user().profile.firstTime || !Meteor.user().profile.hasOwnProperty('firstTime')
    sweetAlert.withForm
      title: 'How do we call you?'
      text: 'Let us know how you want us to call you with the form below.'
      type: 'info'
      closeOnConfirm: true
      formFields: [
        { id: 'name', placeholder: 'Display Name', value: Meteor.user().profile.name }
      ]
    , (confirm) ->
      if confirm
        if @.swalForm.name.length >= 3
          Meteor.call 'updateUserProfile', { name: @.swalForm.name }
          Meteor.call 'setFirstTimeToFalse'