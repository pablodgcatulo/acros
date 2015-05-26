class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nombre, limit: 30
      t.string :apellido, limit: 30
      t.references :empresa, index: true, foreign_key: true
      t.references :tipo_de_documento, index: true, foreign_key: true
      t.string :numero_de_documento, limit: 10
      t.string :direccion, limit: 50
      t.string :telefono, limit: 30
      t.string :celular, limit: 30
      t.string :email
      t.string :funcion_o_area
      #t.references :pais#, index: true, foreign_key: true
      #t.references :provincia, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
