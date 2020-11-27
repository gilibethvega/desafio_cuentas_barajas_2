require_relative 'cartas'

class Baraja
  attr_accessor :cartas
  def initialize(cartas)
    @cartas = cartas
  end
  def barajar
    @cartas.shuffle
  end
  def primera_carta
    @cartas.pop
  end
  def repartir_mano
    @cartas.pop(5)
  end
end

#Instanciando cartas
n = 13
array_card = []
pint1 = ['C', 'D', 'E', 'T']

n.times do |i|
  4.times do |j|
    array_card.push (new_Card = Carta.new(i+1, pint1[j]))
  end
end

baraja_cartas = Baraja.new(array_card) #Instanciando barajas
print shuffle_cards = baraja_cartas.barajar #Barajando cartas
print first_card = baraja_cartas.primera_carta #sacar primera carta
print hand_cards = baraja_cartas.repartir_mano #mano de 5 cartas

