#half_pyramid
def half_pyramid
puts "Salut, bienvenue dans half_pyramid ! Combien d'étages veux-tu ?"
print "> "
nbr_py = gets.chomp()

  if nbr_py.to_i > 25
    puts "nombre incorrect => fin du program"
    elsif nbr_py.to_i < 1
      puts "nombre incorrect => fin du program"
  else

    for i in (1..nbr_py.to_i)

      #si  l'input de l'user est 1 (nbr_py = 1) en entre pas dans cette boucle car la condition n'est pasvérifié
      #on passe directement dans for k in (1..i)
      for j in (1..nbr_py.to_i-i)
        print " "
      end

      for k in (1..i)
        print "#"
      end
      puts ""
    end
  end
end

#full_pyramid
#traitement1
def traitement1(nbr_py)
  for i in (0..nbr_py-1)
    print ' ' * (nbr_py-i)
    puts "#" * (2 * i + 1)
  end
end

def full_pyramid
  puts "Salut, bienvenue dans full_pyramid ! Combien d'étages veux-tu ?"
  print "> "
  nbr_py = gets.chomp().to_i
  traitement1(nbr_py)
end#def

#wtf_pyramide
def wtf_pyramide
	puts "Salut, bienvenue dans wtf_pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i

	while etage.even?
		puts "Euuh met un nombre impaire !!!"
		print "> "
		etage = gets.chomp.to_i
	end

    puts "Voici la pyramide :"

for c in 1..etage

	if c > (etage/2)
	   break
	end

	j = 2*c-1

	di = '#'*j
	es = ' '*(etage-c)

    puts "#{es}#{di}"
end

d = (etage/2)+1

	while d > 0
		j = 2*d - 1

		di = '#'*j
		es = ' '*(etage-d)

		puts "#{es}#{di}"
		d -= 1
	end
end

use_input = ""
while use_input !=3

puts "MENU PRINCIPAL"
puts ""

puts "TAPEZ '1' pour half_pyramid"
puts "TAPEZ '2' pour full_pyramid"
puts "TAPEZ '3' pour wtf_pyramid"
puts ""
puts  "Entrez votre selection"
print "> "

use_input = gets.chomp().to_i

  if use_input == 1
    puts "welcome to half_pyramid"
    half_pyramid
  elsif use_input == 2
    puts "welcome to full_pyramid"
    full_pyramid
  elsif use_input == 3
    puts " welcome to wtf_pyramid"
    wtf_pyramide
  else
  puts "choix incorrect veuillez reessayer svp"
  end
end
