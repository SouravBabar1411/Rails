class CreateCollageteachers < ActiveRecord::Migration[7.0]
  def change
    create_table :collageteachers do |t|
      t.string :fname
      t.string :lname
      t.bigint :mno
      t.string :subjectName
      t.string :qulification
      t.string :email
      t.text :adress
      t.integer :postalcode

      t.timestamps
    end
  end
end
