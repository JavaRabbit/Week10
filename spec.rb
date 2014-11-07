# describe Hand do
#   it "has 5 dice" do
#     dice = 5.times.map {Die.new}
#     hand = Hand.new(dice)
#     expect(hand.face_values).to eq(%w[ Q Q Q Q Q])
#
#   end
# end


require_relative 'dice'

describe Die do
  specify "calling dice should create a new instance" do
    expect(Die.new.roll).to eq("9")
  end
end
