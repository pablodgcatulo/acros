# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pais = Pais.create({nombre: "Argentina"})

provincias = Provincia.create(
  [
    {id: 1, nombre: 'Buenos Aires', pais_id: pais.id},
    {id: 2, nombre: 'Capital Federal', pais_id: pais.id},
    {id: 3, nombre: 'Catamarca', pais_id: pais.id},
    {id: 4, nombre: 'Chaco', pais_id: pais.id},
    {id: 5, nombre: 'Chubut', pais_id: pais.id},
    {id: 6, nombre: 'Córdoba', pais_id: pais.id},
    {id: 7, nombre: 'Corrientes', pais_id: pais.id},
    {id: 8, nombre: 'Entre Rí­os', pais_id: pais.id},
    {id: 9, nombre: 'Formosa', pais_id: pais.id},
    {id: 10, nombre: 'Jujuy', pais_id: pais.id},
    {id: 11, nombre: 'La Pampa', pais_id: pais.id},
    {id: 12, nombre: 'La Rioja', pais_id: pais.id},
    {id: 13, nombre: 'Mendoza', pais_id: pais.id},
    {id: 14, nombre: 'Misiones', pais_id: pais.id},
    {id: 15, nombre: 'Neuquén', pais_id: pais.id},
    {id: 16, nombre: 'Rí­o Negro', pais_id: pais.id},
    {id: 17, nombre: 'Salta', pais_id: pais.id},
    {id: 18, nombre: 'San Juan', pais_id: pais.id},
    {id: 19, nombre: 'San Luis', pais_id: pais.id},
    {id: 20, nombre: 'Santa Cruz', pais_id: pais.id},
    {id: 21, nombre: 'Santa Fé', pais_id: pais.id},
    {id: 22, nombre: 'Santiago del Estero', pais_id: pais.id},
    {id: 23, nombre: 'Tierra del Fuego', pais_id: pais.id},
    {id: 24, nombre: 'Tucumán', pais_id: pais.id}
  ]
)

TipoDeDocumento.create(
  [
    {nombre: "Documento nacional de identidad", codigo: "DNI"},
    {nombre: "Libreta de enrolamiento" ,codigo: "LE"},
    {nombre: "Libreta cívica", codigo: "LC"},
    {nombre: "Cédula de identidad", codigo: "CI"},
    {nombre: "Pasaporte argentino", codigo: "PAS"},
    {nombre: "Certificado migratorio", codigo: "CM"},
    {nombre: "Documento extranjero", codigo: "DEX"},
    {nombre: "Otro", codigo: "OTRO"}
  ]
)    