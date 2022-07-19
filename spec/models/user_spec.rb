require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  describe "Associations >" do
    subject(:user) { build(:user) }

    it { is_expected.to have_many(:betting_pools) }
  end
end
