class EnforceUniquenessOfGolferPerGolfTournament < ActiveRecord::Migration[7.0]
  def change
    add_index :golfer_golf_tournaments,
      [:golfer_id, :golf_tournament_id],
      unique: true,
      name: "one_golfer_instance_per_tournament_index"
  end
end
