class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :players, :username, unique: true
  end
end
