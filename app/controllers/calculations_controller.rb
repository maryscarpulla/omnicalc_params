class CalculationsController < ApplicationController
  def flex_square_5
    # Parameters: {"num"=>"howdy"}
    @user_number = params["num"].to_f
    @square = @user_number**2
    render("calculations/flex_square_5.html.erb")
  end
  def flex_square_root_5
    # Parameters: {"num"=>"howdy"}
    @user_number = params["num"].to_f
    @squareroot = Math.sqrt(@user_number)
    render("calculations/flex_square_root_5.html.erb")
  end
  def flex_payment
    # Parameters: {"num"=>"howdy"}
    int = params["int"].to_f
    @interest = int/100.to_f
    @year = params["yr"].to_f
    @principle = params["prp"].to_f
    @monthly = (@intrest*((1+@interest)**@year))/@principle*(((1+@interest)**@year)-1)

    render("calculations/flex_payment.html.erb")
  end
end
