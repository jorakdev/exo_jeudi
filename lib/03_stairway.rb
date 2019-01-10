#random
def random(nbr_partie)
  puts "le nombre de partie est de : #{nbr_partie}"
  @etage_debut = 0
  for i in (1..nbr_partie)

x=rand (1..6)
num_de = x


    if num_de == 5 || num_de == 6
      @etage_debut +=1
      puts "Vous avez avancez  et votre etage actuel est : #{@etage_debut} et vous venez de l'etage : #{@etage_debut - 1}"
    end
    if num_de == 1
      @etage_debut -=1
      if @etage_debut < 0
          @etage_debut = 0
      end
      puts "vous avez descendu et votre nouveau etage est : #{@etage_debut} "
    end
    if num_de == 2 || num_de == 3 || num_de == 4
      puts "vous restez où vous etes et votre etage actuel est : #{@etage_debut}"
    end
    if @etage_debut == 10
      puts "HOURRA VOUS AVEZ GAGNER"
      break
    end
  end
  puts "fin de la partie"
end

#manuellement
def manuel(nbr_partie)
  puts "le nombre de partie est de : #{nbr_partie}"
  @etage_debut = 0
  for i in (1..nbr_partie)
    puts "entrez manuellemet le numéros affichez sur le dé"
    print "> "

    num_de = gets.to_i

    if num_de == 5 || num_de == 6
      @etage_debut +=1
      puts "Vous avez avancez  et votre etage actuel est : #{@etage_debut} et vous venez de l'etage : #{@etage_debut - 1}"
    end
    if num_de == 1
      @etage_debut -=1
      if @etage_debut < 0
          @etage_debut = 0
      end
      puts "vous avez descendu et votre nouveau etage est : #{@etage_debut} "
    end
    if num_de == 2 || num_de == 3 || num_de == 4
      puts "vous restez où vous etes et votre etage actuel est : #{@etage_debut}"
    end
    if @etage_debut == 10
      puts "HOURRA VOUS AVEZ GAGNER"
      break
    end
  end
  puts "fin de la partie"
end

#menu 1
def partie(nbr_partie)
  user_input = ""
  while user_input !=3

    puts "tapez '1' pour generer un nombre aléatoirement"
    puts "tapez '2' pour jouer manuellemet"
    puts ""

    puts  "Entrez votre selection"
    print "> "
    user_input = gets.to_i

    if user_input == 1
      puts "PARTIE Automatique"
      random(nbr_partie)
    elsif user_input == 2
      puts "PARTIE où on entre un nombre manuellement"
      manuel(nbr_partie)
    else
      puts "out"
    end
  end
end

#première partie
nbr_partie = "".to_i

while nbr_partie != 100 && nbr_partie <=100

puts "combien de partie voulez vous faire !!! Attention 100 minimum !!!"
print "> "
  nbr_partie = gets.chomp().to_i

  if nbr_partie == 100 || nbr_partie >= 100
    puts "la partie peut commencez"
    partie(nbr_partie)
  else
    puts "nombre incorrect mettre un nombre sup ou egal à 10"
  end

end
