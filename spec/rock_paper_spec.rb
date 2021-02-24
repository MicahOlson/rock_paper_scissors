require('rspec')
require('pry')
require('rock_paper')

describe('RPS#p1_wins?') do
  it("returns true if player one plays rock and player two plays scissors") do
    game = RPS.new()
    expect(game.p1_wins?("rock", "scissors")).to(eq(true))
  end

  it("returns false if player one plays scissors and player two plays rock") do
    game = RPS.new()
    expect(game.p1_wins?("scissors", "rock")).to(eq(false))
  end

  it("returns true if player one plays paper and player two plays rock") do
    game = RPS.new()
    expect(game.p1_wins?("paper", "rock")).to(eq(true))
  end
end
