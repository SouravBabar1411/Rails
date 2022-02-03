class AddPlayerIdToAchivements < ActiveRecord::Migration[5.2]
  def change
    add_column :achivements, :player_id, :integer
    add_index :achivements, :player_id
  end
end
