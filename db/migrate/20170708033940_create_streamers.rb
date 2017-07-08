class CreateStreamers < ActiveRecord::Migration[5.1]
  def change
    create_table :streamers do |t|
      t.string :name
      t.string :token
      t.string :code
      t.string :game_status

      t.timestamps
    end
  end
end
