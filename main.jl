val = rand(0:100)
jeu = Bool(1)
nbr_coups = 0

println("Binvenue dans le jeu du plus ou moins\n")

println("Veuillez entrer un chiffre entre 0 et 100 : ")

function game(val, nbr_coups)
    while jeu
        demande = readline(stdin)

        choix = parse(Float64, demande)

        if choix == val
            println("Bravo vous avez gagner en ", nbr_coups, " coups")
            break
        elseif choix < val
            println("Plus grand\n")
            nbr_coups = nbr_coups + 1
        else
            println("Plus petit\n")
            nbr_coups = nbr_coups + 1
        end
    end
end

game(val, nbr_coups)
