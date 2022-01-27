class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.string :p_name
      t.string :h_name

      t.timestamps
    end
  end
end
