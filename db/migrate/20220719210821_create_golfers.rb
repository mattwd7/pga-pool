class CreateGolfers < ActiveRecord::Migration[7.0]
  def change
    create_table :golfers do |t|
      t.string :first_name
      t.string :last_name
      t.string :display_name
      t.string :country

      t.timestamps
    end
  end
end
