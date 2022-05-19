class House
  
  def line(number)
    phrase = "This is "
    house_component = HouseComponent.for(number)
    while (house_component = house_component.next)
      phrase << "the #{house_component.noun(nil)} that #{house_component.action(nil)}" 
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

  def noun(number)
    "house"
  end

  def action(number)
    "Jack built"
  end

  def next 
    nil
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

class HouseComponent8 < HouseComponent

  def noun(number)
    "priest all shaven and shorn"
  end

  def action(number)
    "married "
  end

end

class HouseComponent9 < HouseComponent

  def noun(number)
    "rooster that crowed in the morn"
  end

  def action(number)
    "woke "
  end

end

class HouseComponent10 < HouseComponent

  def noun(number)
    "farmer sowing his corn"
  end

  def action(number)
    "kept "
  end

end

class HouseComponent11 < HouseComponent

  def noun(number)
    "horse and the hound and the horn"
  end

  def action(number)
    "belonged to "
  end

end