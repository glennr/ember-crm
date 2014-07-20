App.LeadsNewController = Ember.Controller.extend

  actions:

    createLead: ->
      fields = @get('fields')
      if App.Lead.valid(fields)
        lead = @store.createRecord 'lead', fields
        lead.save().then ((lead) => 
          @transitionToRoute 'lead', lead
        ), (response) => 
          @set 'field_errors', response.errors
          lead.deleteRecord()
        
      else
        @set 'showError', true

    cancel: ->
      @transitionToRoute 'leads'
