class CreateTiposDeDocumentos < ActiveRecord::Migration
  def change
    create_table :tipos_de_documentos do |t|
      t.string :nombre, limit: 40
      t.string :codigo, limit: 4

      t.timestamps null: false
    end
  end
end
