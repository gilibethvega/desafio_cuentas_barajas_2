class Carta
  attr_accessor :numero,:pinta
  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
  end
end

n = 13
array_card = []
pint1 = ['C', 'D', 'E', 'T']

n.times do |i|
  4.times do |j|
    array_card.push (new_Card = Carta.new(i+1, pint1[j]))
  end
end

print array_card
