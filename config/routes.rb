Rails.application.routes.draw do
  get("/flexible/square/:num",{:controller => "calculations",:action => "flex_square_5"})
  get("/flexible/square_root/:num",{:controller => "calculations",:action => "flex_square_root_5"})
  get("/flexible/payment/:int/:yr/:prp",{:controller => "calculations",:action => "flex_payment"})

end
