class ApplicationController < ActionController::Base


  def nothing_fancy
    render({:template => "homepage/dashboard.html.erb"})
  end

  def first_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @keys = @symbols_hash.keys
    @array_of_symbols = @keys
    
    render({:template => "external/forex.html.erb"})
  end 

  def second_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @keys = @symbols_hash.keys
    @array_of_symbols = @keys
    @symbol = params.fetch("symbol")

    render({:template => "external/conversion_selection.html.erb"})
  end

  def conversion_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @keys = @symbols_hash.keys
    @array_of_symbols = @keys
    @symbol = params.fetch("symbol")
    @symbol2 = params.fetch("symbol2")

    @rate_data = open("https://api.exchangerate.host/convert?from="+@symbol+"&to="+@symbol2).read
    @parsed_rate = JSON.parse(@rate_data)
    @rate_hash = @parsed_rate.fetch("info")
    @true_rate = @rate_hash.fetch("rate")
    
    
    render({:template => "external/conversion.html.erb"})
  end

  def covid 
    render({:template => "external/covid.html.erb"})
  end 
end
