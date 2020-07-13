# temperature conversion functions : ftoc

def ftoc(temperature)
  return (temperature - 32) * 5/9

end

# temperature conversion functions : ctof
def ctof(temperature)
  return temperature * (9.0/5.0) + 32
end