class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :name, :string
      t.column :type, :string
      t.column :breed, :string
      t.column :sex, :string
      t.column :color, :string
      t.column :birthday, :date
      t.column :notes, :text
      t.timestamps
    end
  end
end
