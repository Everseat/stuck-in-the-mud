class StuckInTheMudRoll

  attr_reader :d1, :d2, :d3, :d4, :d5

  def initialize(d1, d2, d3, d4, d5)
    @d1, @d2, @d3, @d4, @d5 = d1, d2, d3, d4, d5
  end

  def score
    score = 0
    score += @d1 unless @d1 == 2 || @d1 == 5
    score += @d2 unless @d2 == 2 || @d2 == 5
    score += @d3 unless @d3 == 2 || @d3 == 5
    score += @d4 unless @d4 == 2 || @d4 == 5
    score += @d5 unless @d5 == 2 || @d5 == 5
    return score
  end

  def end_of_turn?
    return false if @d1 != 2 and @d1 != 5
    return false if @d2 != 2 and @d2 != 5
    return false if @d3 != 2 and @d3 != 5
    return false if @d4 != 2 and @d4 != 5
    return false if @d5 != 2 and @d5 != 5
    return true
  end

  def self.dice_available_next_roll(d1, d2, d3, d4, d5)
    dice = [d1, d2, d3, d4, d5]
    total_dice = 5
    dice.each do |d|
      total_dice -= 1 if (d == 2 or d == 5)
    end
    return total_dice
  end

end
