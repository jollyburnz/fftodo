# Publish visible items.
Meteor.publish "todos", ->
  Todos.find privateTo:
    $in: [null, @userId]


