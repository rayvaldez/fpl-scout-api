class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.string :text
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
