class CreatePlayerPokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :player_pokemons do |t|
      t.references :player, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
