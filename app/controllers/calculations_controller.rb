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
    @interest = int/100
    @interest_month = @interest/1200
    yr = params["yr"].to_f
    @year = yr*12
    @principle = params["prp"].to_f
    @month = @principle*((@interest_month)/(1-(1+@interest_month)**-@year))
    @monthly=@month.round(0)

    render("calculations/flex_payment.html.erb")
  end
  def flex_random

    @min = params[:min].to_f
    @max = params[:max].to_f
    @random = rand(@min..@max)
    render("calculations/flex_random.html.erb")
  end




  def square_form
    render("calculations/square_form.html.erb")
  end
  def square_results
    # <!-- Parameters: {"user_number"=>"55"} -->
    @user_number = params[:user_number].to_f #can use strings or symbols (:user_number) in the params hash
    @square = @user_number**2

    render("calculations/square_results.html.erb")

  end
  def square_root_form
    render("calculations/square_root_form.html.erb")
  end
  def square_root_results
    # <!-- Parameters: {"user_number"=>"55"} -->
    @user_number = params[:user_number].to_f #can use strings or symbols (:user_number) in the params hash
    @square_root = Math.sqrt(@user_number)

    render("calculations/square_root_results.html.erb")

  end


  # def wine_home
  #   render("calculations/wine_home.html.erb")
  # end
  #
  # def wine_results
  #   @wine_search = params[:wine_name]
  #   render("calculations/wine_results.html.erb")
  # end

end
