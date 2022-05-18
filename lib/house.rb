class House
  def line(number)
    case number
    when 1  
      "This is the house that Jack built.\n"
    when 2
      "This is the malt that lay in the house that Jack built.\n"
    else 
      "This is #{horse(number)}#{farmer(number)}#{rooster(number)}#{priest(number)}#{man(number)}#{maiden(number)}#{cow(number)}#{dog(number)}#{cat(number)}#{rat(number)}the malt that lay in the house that Jack built.\n"
    end
  end

  def rat(number)
    if number <= 2
      ""
    else
      "the rat that ate "
    end
  end
  
  def cat(number)
    if number <= 3
      ""
    else
      "the cat that killed "
    end
  end

  def dog(number)
    if number <= 4
      ""
    else
      "the dog that worried "
    end
  end

  def cow(number)
    if number <= 5
      ""
    else
      "the cow with the crumpled horn that tossed "
    end
  end

  def maiden(number)
    if number <= 6
      ""
    else
      "the maiden all forlorn that milked "
    end
  end

  def man(number)
    if number <= 7
      ""
    else
      "the man all tattered and torn that kissed "
    end
  end

  def priest(number)
    if number <= 8
      ""
    else
      "the priest all shaven and shorn that married " 
    end
  end

  def rooster(number)
    if number <= 9
      ""
    else
      "the rooster that crowed in the morn that woke "
    end
  end

  def farmer(number)
    if number <= 10
      ""
    else
      "the farmer sowing his corn that kept "
    end
  end

  def horse(number)
    if number <= 11
      ""
    else
      "the horse and the hound and the horn that belonged to "
    end
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end