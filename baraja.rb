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
    @cartas.pop(1)
  end
  def repartir_mano
    @cartas[0..4]
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
shuffle_cards = baraja_cartas.barajar #Barajando cartas
print first_card = baraja_cartas.primera_carta #sacar primera carta que sería la última del arreglo usando .pop
print hand_cards = baraja_cartas.repartir_mano #mano de 5 cartas

