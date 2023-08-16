class CreatePooches < ActiveRecord::Migration[7.0]
  def change
    create_table :pooches do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.text :keywords, null: false
      t.text :description, null: false
      t.string :image, default: 'https://dog.ceo/api/breeds/image/random'

      t.timestamps
    end
  end
end
