module.exports = () ->
  ifelse: (a, b) ->
    rtn = if a > b
      a + b
    else if a is b
      a * b
    else
      a - b

  switchelse: (a, b, c, d) ->
    rtn = switch a
      when b
        b
      when c
        c
      when d
        d
      else
        a