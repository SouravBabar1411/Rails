class RemovingColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :products,:mno,:bigint
  end
end
