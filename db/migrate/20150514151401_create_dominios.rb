class CreateDominios < ActiveRecord::Migration
  def change
    create_table :dominios do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
