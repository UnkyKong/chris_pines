# My orange tree class
class OrangeTree
  def initialize
    @mature = rand(3..6)
    @height = 0
    @max_height = rand(20..30)
    @max_age = rand(10..20)
    @age = 0
    @oranges = 0
  end

  def height
    puts "your tree is #{@height} feet tall."
  end

  def one_year_passes
    if @oranges > 0
      puts "#{@oranges} oranges fall to the ground and die.\nWhat a waste"
    end
    grow
  end

  def count_the_oranges
    puts "There are #{@oranges} oranges on the tree"
  end

  def pick_an_orange
    if @oranges.zero?
      puts 'There are no more oranges.'
    else
      @oranges -= 1
      puts 'You pick an orange and eat it.  Wow, that was a delicious Orange.'
    end
  end

  private

  def grow
    @age += 1
    grow_orange
    @height += 2 if @height <= @max_height
    die if @age == @max_age
end

  def grow_orange
    @oranges = rand(100..300) if @age >= @mature
  end

  def die
    puts 'The orange tree has died.'
    exit
  end
end

def dispatch
  my_tree = OrangeTree.new
  loop do
    puts 'what do you do?'
    print '> '
    action = $stdin.gets.chomp
    if action =~ /height/
      my_tree.height
    elsif action =~ /year/
      my_tree.one_year_passes
    elsif action =~ /count/
      my_tree.count_the_oranges
    elsif action =~ /pick|eat/
      my_tree.pick_an_orange
    else
      puts 'Please try something else.'
    end
  end
end

dispatch
