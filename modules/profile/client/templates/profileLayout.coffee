Template.profileLayout.events
  'click #removeAccount': ->
    code = chance.word({ length: 5 })
    sweetAlert.withForm
      title: 'Are you sure?'
      text: 'Do you really want to remove your account? If so, fill in the following code below: ' + code
      type: 'warning'
      showCancelButton: true
      closeOnConfirm: false
      formFields: [
        { id: 'code', placeholder: 'Code' }
      ]
    , (confirm) ->
      if confirm
        if @.swalForm.code == code
          Meteor.call 'removeAccount', (err, result) ->
            sweetAlert
              title: 'Goodbye!'
              text: 'Thank you for using our services, and we hope to see you again!'
        else
          sweetAlert
            title: 'Code Error'
            text: 'You filled in the wrong code. Your account is preserved.'
            type: 'error'