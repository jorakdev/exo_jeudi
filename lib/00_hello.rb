def ask_first_name
  puts "c'est quoi ton prenom"
  print "> "
  first_name = gets.chomp
  return first_name
end

def bonjourno(first_name)
  puts "Bonjour #{first_name}!"
end


def say_hello
  first_name = ask_first_name
  bonjourno(first_name)
end

say_hello
