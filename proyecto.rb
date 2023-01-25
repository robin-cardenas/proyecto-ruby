class Game
    
    def initialize(file)
        @file = file
    end
    
    #Función que da inicio al reto.
    def start
        definitions = @file.readlines
        i = 0
        while i < definitions.length
            puts "\nDefinición\n\n", definitions[i]
            i = reply(definitions, i)
        end
    end
    
    #Función para preguntar por consola el término correcto.
    def reply(result, i)
        print "\nAdivininar: "
        respond = gets.chomp
        
        if respond == result[i+1].chomp
            puts "\nCorrecto!"
            i += 3
        else
            puts "\nIncorrecto!, Trata de nuevo"
            reply(result, i)
        end
    end
end

#Ejecución del reto.
puts "\nBienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
juego = Game.new(open("definitions.txt"))
juego.start
puts "\nFin del reto..."