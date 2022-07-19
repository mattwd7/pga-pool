class CreateBettingPoolParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :betting_pool_participants do |t|
      t.string :full_name
      t.references :betting_pool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
