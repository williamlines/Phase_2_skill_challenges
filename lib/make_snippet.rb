def make_snippet(name)
  words = name.split(" ")
  if words.length >= 6
    return words.first(5).join(" ") + "..."
  else 
    return name
  end
end