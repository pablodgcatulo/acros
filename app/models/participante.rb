class Participante < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :tipo_de_documento
  belongs_to :pais
  belongs_to :provincia

  validates_presence_of :nombre, :apellido, :empresa_id
  validates_length_of [:nombre, :apellido, :telefono, :celular], maximum: 30
  validates_length_of :direccion, maximum: 50
  validates_length_of :numero_de_documento, maximum: 10

end
