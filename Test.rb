require 'CoffeeCup.rb'
class Test

attr_accessor :coffee

def crearHash



          
        @coffee={"toppings"=>['fresa', 'vainilla', 'frambuesa'], 'origin'=>['Ecuador','CR','VENEZUELA']}

end

def consultaTopping(coffee1)	
 	puts @coffee['toppings'].include?(coffee1.toppings[0])
	puts @coffee['origin'].include?(coffee1.origin)
	
end


end

myTest=Test.new
myTest.crearHash


