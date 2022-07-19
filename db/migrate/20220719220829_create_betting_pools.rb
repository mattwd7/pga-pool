class CreateBettingPools < ActiveRecord::Migration[7.0]
  def change
    create_table :betting_pools do |t|
      t.references :golf_tournament, null: false, foreign_key: true
      t.integer :roster_size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
