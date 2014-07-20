App.LeadRoute = Ember.Route.extend 
  
  model: -> @store.find 'lead', params.id