class Api::V1::GreetingsController < ApplicationController
  def index
    @random_greet = Greeting.limit(1).order('RANDOM()')
    render json: @random_greet
  end
end
