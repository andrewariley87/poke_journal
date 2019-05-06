class CreatePokemon < ActiveRecord::Migration[5.2]
  def up
    create_table :pokemon do |t|
      t.string :name
      t.integer :base_experience
      t.text :image_url
      t.jsonb :stats
      t.string :types
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end

  def down
    drop_table :pokemon
  end
end
