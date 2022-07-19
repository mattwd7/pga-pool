module Services
  class EnrollAllGolfersInGolfTournament
    include Services::Base

    def initialize(golf_tournament:)
      @golf_tournament = golf_tournament
    end

    def call
      Golfer.all.each do |golfer|
        GolferGolfTournament.create(golfer: golfer, golf_tournament: golf_tournament)
      end
    end

    private

    attr_reader :golf_tournament
  end
end
