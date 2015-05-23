class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :name
      t.integer :cuteness
      t.integer :age
      t.integer :softness

      t.timestamps null: false
    end
  end
end
