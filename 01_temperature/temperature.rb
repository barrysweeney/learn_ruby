# frozen_string_literal: true

# converts fahrenheit to celcius or vice-versa
def ftoc(fahrenheit)
  celcius = (fahrenheit - 32) * 5 / 9.0
  celcius
end

def ctof(celcius)
  fahrenheit = celcius * 9 / 5.0 + 32
  fahrenheit
end
