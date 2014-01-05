module.exports = () ->
  class Foo
    @bar = (a, b, c) ->
      d = a * b * c

    constructor: (a, b, c) ->
      @init a, b, c

    init: (a, b, c) ->
      d = a + b + c