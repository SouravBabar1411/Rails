class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :productname
      t.bigint :quantity
      t.string :brand
      t.bigint :prize
      t.date :mandate
      t.date :expdate

      t.timestamps
    end
  end
end
