class RemoveGameweekFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :gameweek, :integer
  end
end
