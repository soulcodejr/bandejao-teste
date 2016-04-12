class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.date :date, primary: true
      t.string :soup
      t.string :accompaniment1, default: "ARROZ BRANCO"
      t.string :accompaniment2, default: "FEIJÃO"
      t.string :accompaniment3, default: "ARROZ INTEGRAL"
      t.string :garnish
      t.string :protein1
      t.string :protein2
      t.string :dessert
      t.string :juice

      t.timestamps null: false
    end
  add_index :dinners, :date ,:unique => true
  end
end
