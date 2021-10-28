class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :gameweek
      t.integer :player_id

      t.timestamps
    end
  end
end
