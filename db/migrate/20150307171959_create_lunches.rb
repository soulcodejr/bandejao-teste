class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|

    	t.date   :date, primary: true
        t.string :salad1, default: "SALADA DE FOLHAS"
        t.string :salad2
        t.string :accompaniment1, default: "ARROZ BRANCO"
        t.string :accompaniment2, default: "FEIJÃO"
        t.string :accompaniment3, default: "ARROZ INTEGRAL"
        t.string :garnish
        t.string :protein1
        t.string :protein2
        t.string :protein3
        t.string :dessert
    	t.string :juice

      	t.timestamps null: false
    end
    add_index :lunches, :date ,:unique => true
  end
end
