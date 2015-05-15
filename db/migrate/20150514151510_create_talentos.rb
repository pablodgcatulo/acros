class CreateTalentos < ActiveRecord::Migration
  def change
    create_table :talentos do |t|
      t.string :nombre
      t.references :dominio#, index: true, foreign_key: true
      t.string :libro
      t.string :pelicula
      t.json :docx_json

      t.timestamps null: false
    end
  end
end
