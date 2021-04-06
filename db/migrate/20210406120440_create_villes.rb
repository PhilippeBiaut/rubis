class CreateVilles < ActiveRecord::Migration[6.0]
  def change
    create_table :villes do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
