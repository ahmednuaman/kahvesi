module.exports = () ->
  countdown: () ->
    num for num in [10..1]

  comprehend1: () ->
    c = ['greens', 'caviar', 'truffles', 'roast', 'cake']
    a = (b) ->
      b * 2

    a i + 1, d for d, i in c

  comprehend2: () ->
    yrs = max: 10, ida: 9, tim: 11

    ages = for child, age of yrs
      "#{child} is #{age}"

  while: () ->
    a = 10
    b = (i) ->
      i * 2

    b i while i--