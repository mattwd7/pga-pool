class CreateGolferGolfTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :golfer_golf_tournaments do |t|
      t.integer :rank
      t.integer :payout
      t.references :golf_tournament, null: false, foreign_key: true
      t.references :golfer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
