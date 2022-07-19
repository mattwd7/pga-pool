class CreateGolfTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :golf_tournaments do |t|
      t.string :name
      t.integer :year
      t.integer :payouts, array: true, default: []

      t.timestamps
    end
  end
end
