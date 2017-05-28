class Die
  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat(side)
    return puts 'Try not to be obvious!' if side > 6
    @numberShowing = side
  end
end

die = Die.new.showing
Die.cheat(7)
puts die.showing
