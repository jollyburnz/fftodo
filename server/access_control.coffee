Meteor.startup ->
  canModify = (userId, todos) ->
    not todos.privateTo or todos.privateTo is userId
    # _.all todos, (todo) ->
    #   console.log todo, 'todoooooooo'
    #   #console.log todo.privateTo
    #   todo.privateTo is null or todo.privateTo is userId


  Todos.allow
    insert: ->
      true

    update: canModify
    remove: canModify
    fetch: ["privateTo"]


