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


  def payment_form
    render("calculations/payment_form.html.erb")
  end
  def payment_results

    apr = params[:user_apr].to_f
    @apr = apr
    @interest_month = @apr/1200
    @yr = params[:user_years].to_f
    @year = @yr*12
    @principle = params[:user_principal].to_f
    @month = @principle*((@interest_month)/(1-(1+@interest_month)**-@year))
    @monthly=@month.round(2)
    render("calculations/payment_results.html.erb")

  end



  def random_form
    render("calculations/random_form.html.erb")
  end
  def random_results

    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @random = rand(@min..@max)
    render("calculations/random_results.html.erb")

  end


  def word_count_form
    render("calculations/word_count_form.html.erb")
  end

  def word_count_results
    @text = params[:user_text]
    @special_word = params[:user_word]

    # ================================================================================
    # Your code goes below.
    # The text the user input is in the string @text.
    # The special word the user input is in the string @special_word.
    # ================================================================================

    @character_count_with_spaces = @text.length

    text_wo_spaces = @text.gsub(" ","")
    text_wo_linefeed = text_wo_spaces.gsub("\n","")
    text_wo_cr = text_wo_linefeed.gsub("\r","")
    text_wo_tabs = text_wo_cr.gsub("\t","")
    text_wo_tabs_downcase = text_wo_tabs.downcase




    @word_count = @text.split.length

    @character_count_without_spaces = text_wo_tabs.length

    a = @text.downcase
    text_wo_punctuation = a.gsub(/[^a-z0-9\s]/i, "")
    split_a = text_wo_punctuation.split
    lower_special = @special_word.downcase
    @occurrences = split_a.count(lower_special)

    # ================================================================================
    # Your code goes above.
    # ================================================================================



    render("calculations/word_count_results.html.erb")

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
