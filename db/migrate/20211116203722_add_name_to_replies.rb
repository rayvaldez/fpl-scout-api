class AddNameToReplies < ActiveRecord::Migration[6.0]
  def change
    add_column :replies, :name, :string
  end
end
