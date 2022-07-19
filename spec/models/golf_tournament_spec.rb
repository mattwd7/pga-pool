require "rails_helper"

RSpec.describe GolfTournament, type: :model do
  subject(:golf_tournament) { create(:golf_tournament) }

  it "has a valid factory" do
    expect(build(:golf_tournament)).to be_valid
  end

  describe "Associations >" do
    it { is_expected.to have_many(:golfer_golf_tournaments) }
    it { is_expected.to have_many(:golfers) }
  end
end
