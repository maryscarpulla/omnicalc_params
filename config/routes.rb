Rails.application.routes.draw do
  get("/flexible/square/:num",{:controller => "calculations",:action => "flex_square_5"})
  get("/flexible/square_root/:num",{:controller => "calculations",:action => "flex_square_root_5"})
  get("/flexible/payment/:int/:yr/:prp",{:controller => "calculations",:action => "flex_payment"})
  get("/flexible/random/:min/:max",{:controller => "calculations",:action => "flex_random"})

  get("/square/new",{:controller => "calculations",:action => "square_form"})
  get("/square/results",{:controller => "calculations",:action => "square_results"})
  get("/square_root/new",{:controller => "calculations",:action => "square_root_form"})
  get("/square_root/results",{:controller => "calculations",:action => "square_root_results"})
  get("/payment/new",{:controller => "calculations",:action => "payment_form"})
  get("/payment/results",{:controller => "calculations",:action => "payment_results"})
  get("/random/new",{:controller => "calculations",:action => "random_form"})
  get("/random/results",{:controller => "calculations",:action => "random_results"})

  get("/word_count/new",{:controller => "calculations",:action => "word_count_form"})
  get("/word_count/results",{:controller => "calculations",:action => "word_count_results"})
  get("/descriptive_statistics/new",{:controller => "calculations",:action => "descriptive_statisticst_form"})
  get("/descriptive_statistics/results",{:controller => "calculations",:action => "descriptive_statistics_results"})




  # get("/wine/home",{:controller => "calculations",:action => "wine_home"})
  # get("/wine/results",{:controller => "calculations",:action => "wine_results"})


end
