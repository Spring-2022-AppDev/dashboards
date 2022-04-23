class ApplicationController < ActionController::Base


  def nothing_fancy
    render({:template => "homepage/dashboard.html.erb"})
  end

  def foreign_exchange
    render({:template => "external/forex.html.erb"})
  end 

  def covid 
    render({:template => "external/covid.html.erb"})
  end 
end
