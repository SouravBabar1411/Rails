class UpdateCollageteacher < ActiveRecord::Migration[7.0]
  def change
    add_column :collageteachers,:experience,:integer
  end
end
