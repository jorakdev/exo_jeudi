require 'io/console'



def hello()
  puts "WELCOME"
  puts "Le code de lancement du missile est : 123go :p"
end


def traitement_mpd(new_mdp)
  puts "entrer le mot de passe "
  print "> "
  mdp = gets.chomp()

  if mdp != new_mdp
  puts "mot de passe incorrect"
  traitement_mpd(new_mdp)
  else  mdp == new_mdp
    hello()
  end
 end

def def_password
  puts "Salut,definit un mot de passe !!!attention ton input est ici cachez!!! tapez entrée lorsque tu a fini ton saisi"
  print "> "
  new_mdp = STDIN.noecho(&:gets).chomp

  traitement_mpd(new_mdp)

end

def perform
  def_password
end

perform
