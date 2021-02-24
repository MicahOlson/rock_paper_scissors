require('rspec')
require('pry')
require('rock_paper')

describe('RPS#p1_wins?') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.p1_wins?("rock", "scissors")).to(eq(true))
  end
end
