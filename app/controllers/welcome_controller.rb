class WelcomeController < ApplicationController
  layout 'landing', :only => [ :index]

  def index
  end

  def coinmarketcap
  	aidos_kuneen_response = Net::HTTP.get_response(URI("https://api.coinmarketcap.com/v1/ticker/Aidos-Kuneen/?convert=eur"))
    bitcoin_response = Net::HTTP.get_response(URI("https://api.coinmarketcap.com/v1/ticker/Bitcoin/?convert=eur"))

    @aidos_kuneen_data = ActiveSupport::JSON.decode(aidos_kuneen_response.body)
    @bitcoin_data = ActiveSupport::JSON.decode(bitcoin_response.body)
  end
end
