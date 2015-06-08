# Write your code here
def normalize_phone_number(phone_number)

  # pretty_number = phone_number.scan(/\d/).join

  pretty_number = phone_number.scan(/\d/).join

  if pretty_number.length == 10
    pretty_number.insert(6, "-").insert(3,") ").insert(0, "(")
  else
    phone_number
  end

end