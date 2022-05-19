class House
  
  def line(number)
    house_component = HouseComponent.for(number)

    phrase = "This is "
    while (house_component = house_component.next)
      phrase << "the #{house_component.noun} that #{house_component.action}" 
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
    when 8
      HouseComponent8
    when 9
      HouseComponent9
    when 10
      HouseComponent10
    when 11
      HouseComponent11
    else
      HouseComponent
    end.new(number)
  end

  def next 
    HouseComponent.for(number - 1)
  end

end

class HouseComponent0 < HouseComponent

  def noun
    "house"
  end

  def action
    "Jack built"
  end

  def next 
    nil
  end

end

class HouseComponent1 < HouseComponent

  def noun
    "malt"
  end

  def action
    "lay in "
  end

end

class HouseComponent2 < HouseComponent

  def noun
    "rat"
  end

  def action
    "ate "
  end

end

class HouseComponent3 < HouseComponent

  def noun
    "cat"
  end

  def action
    "killed "
  end

end

class HouseComponent4 < HouseComponent

  def noun
    "dog"
  end

  def action
    "worried "
  end

end

class HouseComponent5 < HouseComponent

  def noun
    "cow with the crumpled horn"
  end

  def action
    "tossed "
  end

end

class HouseComponent6 < HouseComponent

  def noun
    "maiden all forlorn"
  end

  def action
    "milked "
  end

end

class HouseComponent7 < HouseComponent

  def noun
    "man all tattered and torn"
  end

  def action
    "kissed "
  end

end

class HouseComponent8 < HouseComponent

  def noun
    "priest all shaven and shorn"
  end

  def action
    "married "
  end

end

class HouseComponent9 < HouseComponent

  def noun
    "rooster that crowed in the morn"
  end

  def action
    "woke "
  end

end

class HouseComponent10 < HouseComponent

  def noun
    "farmer sowing his corn"
  end

  def action
    "kept "
  end

end

class HouseComponent11 < HouseComponent

  def noun
    "horse and the hound and the horn"
  end

  def action
    "belonged to "
  end

end