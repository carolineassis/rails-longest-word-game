require 'longest_word'

class GameController < ApplicationController
  def game
    @grid = generate_grid(9)
  end

  def score
    @grid = params[:grid].split("")
    @attempt = params[:attempt]
    @start_time = Time.parse(params[:start_time])
    @end_time = Time.now
    @result = run_game(@attempt, @grid, @start_time, @end_time)
  end
end
