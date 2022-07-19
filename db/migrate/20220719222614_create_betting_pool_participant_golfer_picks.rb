class CreateBettingPoolParticipantGolferPicks < ActiveRecord::Migration[7.0]
  def change
    create_table :betting_pool_participant_golfer_picks do |t|
      t.references :golfer,
        null: false,
        foreign_key: true,
        index: {name: "index_golfer_id_on_participant_picks"}
      t.references :betting_pool_participant,
        null: false,
        foreign_key: true,
        index: {name: "index_participant_id_on_participant_picks"}
      t.references :betting_pool,
        null: false,
        foreign_key: true,
        index: {name: "index_better_pool_id_on_participant_picks"}
      t.index [:golfer_id, :betting_pool_id, :betting_pool_participant_id], unique: true, name: "no_duplicate_golfer_picks_per_participant_per_pool"

      t.timestamps
    end
  end
end
