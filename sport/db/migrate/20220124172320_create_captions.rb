class CreateCaptions < ActiveRecord::Migration[5.2]
  def change
    create_table :captions do |t|
      t.string :caption_name
      t.string :caption_country
      t.string :caption_sport

      t.timestamps
    end
  end
end
