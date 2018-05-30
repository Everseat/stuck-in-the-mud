class DiceRollsController < ApplicationController

  def show
  end

  def create
    @roll = StuckInTheMudRoll.new(*5.times.map { rand(6) + 1 })
  end

end
