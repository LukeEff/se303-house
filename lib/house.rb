class House
  
  def line(number)
    house_component = HouseComponent.new(number)
    phrase = "This is "
    (number - 1).downto(0) do |i|
      phrase << "the #{house_component.noun(i)} that #{house_component.action(i)}"
    end
    phrase << ".\n"
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end

end

class HouseComponent

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def for(number)
    if number == 0
      HouseComponent0
    else
      HouseComponent
    end.new(number)
  end

  def noun(number) 
    nouns = ["house","malt","rat","cat","dog", "cow with the crumpled horn", "maiden all forlorn", "man all tattered and torn", "priest all shaven and shorn", "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]
    nouns[number]
  end

  def action(number)
    actions = ["Jack built", "lay in ", "ate ", "killed ", "worried ", "tossed ", "milked ", "kissed ", "married ", "woke ", "kept ", "belonged to "]
    actions[number]
  end
  
end

class HouseComponent0 < HouseComponent

  def noun(number)
    "house"
  end

end