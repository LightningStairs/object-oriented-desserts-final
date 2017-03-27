class Pie < BakedGood
  include Printing

  attr_reader :name, :recipe, :crust, :filling
  attr_accessor :amount

  def initialize(name, crust, filling)
    @name= name
    @crust= crust
    @filling= filling
    @amount=0
  end

  def print_pie_recipe
    @pie= [@crust, @filling]

    output= "#{@name.upcase}\n\n"
    @pie.each do |pie_part|
      output += "#{pie_part.print_recipe}\n"
    end
    output
  end

end
