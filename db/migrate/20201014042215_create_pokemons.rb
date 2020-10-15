class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :code
      t.string :name
      t.string :imageURL
      t.integer :attack
      t.integer :hp
      t.integer :special

      t.timestamps
    end
  end
end
