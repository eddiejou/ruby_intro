class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    my_birthday = Time.parse("December 8th, 1985")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    first = "Eddie"
    last = "Jou"

    @first_then_last = first + " " + last
    @last_then_first = last + ", " + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_number = rand(3);

    #@number_output = the_number

    if the_number == 0
      @your_output = "Rock - Play Again?"
    elsif the_number == 1
      @your_output = "Paper - You Win!"
    else
      @your_output = "Scissors - You Lose."
    end



    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]
    squared_numbers = [ ]

    our_numbers.each do |num|
      square = num * num
      squared_numbers.push(square)
    end

    @your_output = squared_numbers.sum
    #  @another_output = our_numbers


    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    numbers_divisible_by_three_or_five = [ ]

    numbers.each do |num|
      if num%3 == 0 || num%5 == 0
        numbers_divisible_by_three_or_five.push(num)
      end
    end

    @your_output = numbers_divisible_by_three_or_five.sum

    render("programs/third_program.html.erb")
  end
end
