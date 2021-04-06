class CreateCampings < ActiveRecord::Migration[6.0]
  def change
    create_table :campings do |t|
      t.string :name
      t.text :body
      t.integer :ville_id

      t.timestamps
    end
  end
end
