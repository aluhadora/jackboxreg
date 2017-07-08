class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :token
      t.string :status
      t.integer :streamer_id

      t.timestamps
    end
  end
end
