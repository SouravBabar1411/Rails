class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :player_country
      t.string :player_game

      t.timestamps
    end
  end
end
