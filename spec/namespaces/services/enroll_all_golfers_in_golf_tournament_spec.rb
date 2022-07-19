require "rails_helper"

RSpec.describe Services::EnrollAllGolfersInGolfTournament do
  subject(:service_response) do
    described_class.call(
      golf_tournament: golf_tournament
    )
  end

  let(:golf_tournament) { create(:golf_tournament) }

  before { create_list(:golfer, 3) }

  it "creates a golfer_golf_tournament record for every golfer" do
    expect { service_response }
      .to change { GolferGolfTournament.where(golf_tournament: golf_tournament).count }
      .by(3)
  end
end
