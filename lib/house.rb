class House
  
  def line(number)
    phrase = "This is "
    (number - 1).downto(0) do |i|
      house_component = HouseComponent.for(i)
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

  def self.for(number)
    case number
    when 0
      HouseComponent0
    when 1
      HouseComponent1
    else
      HouseComponent
    end.new(number)
  end

  def noun(number) 
    nouns = [nil, nil,"rat","cat","dog", "cow with the crumpled horn", "maiden all forlorn", "man all tattered and torn", "priest all shaven and shorn", "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]
    nouns[number]
  end

  def action(number)
    actions = [nil, nil, "ate ", "killed ", "worried ", "tossed ", "milked ", "kissed ", "married ", "woke ", "kept ", "belonged to "]
    actions[number]
  end
  
end

class HouseComponent0 < HouseComponent

  def noun(number)
    "house"
  end

  def action(number)
    "Jack built"
  end

end

class HouseComponent1 < HouseComponent

  def noun(number)
    "malt"
  end

  def action(number)
    "lay in "
  end

end