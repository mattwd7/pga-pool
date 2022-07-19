require "rails_helper"

RSpec.describe BettingPool, type: :model do
  subject(:betting_pool) { create(:betting_pool) }

  it "has a valid factory" do
    expect(build(:betting_pool)).to be_valid
  end

  describe "Associations >" do
    subject(:betting_pool) { build(:betting_pool) }

    it { is_expected.to belong_to(:golf_tournament) }
    it { is_expected.to belong_to(:commissioner) }
  end
end
