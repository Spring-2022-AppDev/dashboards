Rails.application.routes.draw do



  get("/", :controller => "application", :action => "nothing_fancy")

  get("/forex", :controller => "application", :action => "first_currency")
  
  get("/forex/:symbol", :controller => "application", :action => "second_currency")
  
  get("/forex/:symbol/:symbol2", :controller => "application", :action => "conversion_currency")
  
  get("/covid", :controller => "application", :action => "covid")

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
