require 'bowling'

RSpec.describe Bowling, "#score" do
  context "with no strikes or spares" do
    it "sums the pin count for each roll" do
      bowling = Bowling.new
      20.times { bowling.hit(4) }
      expect(bowling.score).to eq 80
    end

    it "sums the pin count again" do
      bowling_two = Bowling.new
      10.times { bowling_two.hit(2) }
      expect(bowling_two.score).to eq 20
    end
  end
end
