class CreateAchivements < ActiveRecord::Migration[5.2]
  def change
    create_table :achivements do |t|
      t.integer :man_of_series
      t.string :person

      t.timestamps
    end
  end
end
