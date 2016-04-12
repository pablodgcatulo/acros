class AddTalentosToParticipante < ActiveRecord::Migration
  def change
    add_column :participantes, :talento_guardado_1_id, :integer
    add_column :participantes, :talento_guardado_2_id, :integer
    add_column :participantes, :talento_guardado_3_id, :integer
    add_column :participantes, :talento_guardado_4_id, :integer
    add_column :participantes, :talento_guardado_5_id, :integer

  end
end
