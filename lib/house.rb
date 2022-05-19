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
    when 2
      HouseComponent2
    when 3
      HouseComponent3
    when 4
      HouseComponent4
    when 5
      HouseComponent5
    when 6
      HouseComponent6
    when 7
      HouseComponent7
    else
      HouseComponent
    end.new(number)
  end

  def noun(number) 
    nouns = [nil, nil, nil, nil, nil, nil, nil, nil, "priest all shaven and shorn", "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]
    nouns[number]
  end

  def action(number)
    actions = [nil, nil, nil, nil, nil, nil, nil, nil, "married ", "woke ", "kept ", "belonged to "]
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

class HouseComponent2 < HouseComponent

  def noun(number)
    "rat"
  end

  def action(number)
    "ate "
  end

end

class HouseComponent3 < HouseComponent

  def noun(number)
    "cat"
  end

  def action(number)
    "killed "
  end

end

class HouseComponent4 < HouseComponent

  def noun(number)
    "dog"
  end

  def action(number)
    "worried "
  end

end

class HouseComponent5 < HouseComponent

  def noun(number)
    "cow with the crumpled horn"
  end

  def action(number)
    "tossed "
  end

end

class HouseComponent6 < HouseComponent

  def noun(number)
    "maiden all forlorn"
  end

  def action(number)
    "milked "
  end

end

class HouseComponent7 < HouseComponent

  def noun(number)
    "man all tattered and torn"
  end

  def action(number)
    "kissed "
  end

end