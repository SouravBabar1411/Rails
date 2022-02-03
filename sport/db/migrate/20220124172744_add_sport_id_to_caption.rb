class AddSportIdToCaption < ActiveRecord::Migration[5.2]
  def change
    add_column :captions, :sport_id, :integer
    add_index :captions, :sport_id
  end
end
