class CreatePaises < ActiveRecord::Migration
  def change
    create_table :paises do |t|
      t.string :nombre, limit: 30

      t.timestamps null: false
    end
  end
end
