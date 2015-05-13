class CreateProvincias < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.string :nombre, limit: 30
      t.references :pais#, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
