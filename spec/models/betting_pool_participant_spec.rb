require "rails_helper"

RSpec.describe BettingPoolParticipant, type: :model do
  subject(:betting_pool_participant) { create(:betting_pool_participant) }

  it "has a valid factory" do
    expect(build(:betting_pool_participant)).to be_valid
  end

  describe "Associtions >" do
    it { is_expected.to belong_to(:betting_pool) }
  end
end
