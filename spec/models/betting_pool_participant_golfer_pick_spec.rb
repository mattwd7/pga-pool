require "rails_helper"

RSpec.describe BettingPoolParticipantGolferPick, type: :model do
  subject(:betting_pool_participant_golfer_pick) { create(:betting_pool_participant_golfer_pick) }

  it "has a valid factory" do
    expect(build(:betting_pool_participant_golfer_pick)).to be_valid
  end

  describe "Associtions >" do
    it { is_expected.to belong_to(:golfer) }
    it { is_expected.to belong_to(:betting_pool_participant) }
    it { is_expected.to belong_to(:betting_pool) }
  end

  describe "Validations >" do
    it { is_expected.to validate_uniqueness_of(:golfer_id).scoped_to([:betting_pool_id, :betting_pool_participant_id]) }
  end
end
