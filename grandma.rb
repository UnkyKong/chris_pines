# grandma is hard of hearing
bye = 0

while bye < 3

    say = $stdin.gets.chomp
    if say == "BYE"
        if bye == 2
           puts "BYE!"
           bye +=1
        else 
            bye += 1
        end      
    elsif say == say.upcase
        puts "NOT SINCE #{rand(1930..1950)}"
    else
        puts "WHAT DID YOU SAY?!"
    end
end
# if you talk to grandma "WHAT DID YOU SAY?!"
# if you YELL at grandma "NOT SINCE (year:1930-195)"
# to stop talking to grandma YELL "BYE" three times