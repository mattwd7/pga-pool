require "rails_helper"

RSpec.describe GolferGolfTournament, type: :model do
  subject(:golfer_golf_tournament) { create(:golfer_golf_tournament) }

  it "has a valid factory" do
    expect(build(:golfer_golf_tournament)).to be_valid
  end

  describe "Associations >" do
    subject(:golfer_golf_tournament) { build(:golfer_golf_tournament) }

    it { is_expected.to belong_to(:golf_tournament) }
    it { is_expected.to belong_to(:golfer) }
  end
end
