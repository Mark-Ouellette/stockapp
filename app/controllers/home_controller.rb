class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Hey bitch you forgot to enter a symbol"
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "that stock quote does not exist"
        end
      end
    end
  end
  
  def about
  end
end
