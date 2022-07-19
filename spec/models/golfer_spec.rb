require "rails_helper"

RSpec.describe Golfer, type: :model do
  subject(:golfer) { create(:golfer) }

  it "has a valid factory" do
    expect(build(:golfer)).to be_valid
  end

  describe "Associations >" do
    subject(:golfer) { build(:golfer) }

    it { is_expected.to have_many(:golfer_golf_tournaments) }
    it { is_expected.to have_many(:golf_tournaments) }
  end
end
