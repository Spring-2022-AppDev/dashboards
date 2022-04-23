Rails.application.routes.draw do



  get("/", :controller => "application", :action => "nothing_fancy")

  get("/forex", :controller => "application", :action => "foreign_exchange")
  
  get("/covid", :controller => "application", :action => "covid")

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
