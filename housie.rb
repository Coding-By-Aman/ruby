# Run to print a housie ticket

class Housie
  def initialize()
    @ticket = Array.new(3) {Array.new(9)}
  end

  def insert_numbers
    9.times do |c|
      range_1 = c > 0 ? 0 : 1
      range_2 = c < 8 ? 9 : 10
      numbers = [*(c*10+range_1)..(c*10+range_2)].sample(3).sort
      @ticket[0][c] = numbers[0]
      @ticket[1][c] = numbers[1]
      @ticket[2][c] = numbers[2]
    end
  end

  def insert_blanks
    3.times do |r| 
      blanks = [*0..8].sample(4).sort
      blanks.each do |c|
        @ticket[r][c] = " "
      end
    end
  end

  def print_ticket
    insert_numbers
    insert_blanks
    puts "\n......................................................"
    3.times do |r|
      print ":"
      9.times do |c|
        next print c == 0 ? "    :" : "     :" if  @ticket[r][c] == " "
        print " #{@ticket[r][c]}  :"
      end        
    puts "\n......................................................"
    end 
  end
end

# Print ticket 
Housie.new.print_ticket