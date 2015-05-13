# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

# ver inflector de http://www.slideshare.net/crnixon/advanced-internationalization-with-rails

# Modificar el Inflector para generar inflexiones en español

module ActiveSupport::Inflector


  def pluralize(word, arg_local = nil)
    
    local = I18n.locale || arg_local
    result = word.to_s.dup
    
    if word.empty? || inflections(local).uncountables.include?(result.downcase)
      result
    else
      inflections(local).plurals.each { |(rule, replacement)| result.gsub!(rule, replacement) }
      result
    end
  end

  def singularize(word, arg_local = nil)
    
    local = I18n.locale || arg_local
    result = word.to_s.dup

    if inflections(local).uncountables.any? { |inflection| result =~ /\b(#{inflection})\Z/i }
      result
    else
      inflections(local).singulars.each { |(rule, replacement)| result.gsub!(rule, replacement) }
      result
    end
  end
end
  


ActiveSupport::Inflector.inflections(:es) do |inflect|

  inflect.clear(:all)
  
  inflect.plural(/·([A-Z]|_| |$)/, '\1')
  inflect.plural(/([acefgikoptuw])([A-Z]|_| |$)/, '\1s\2')
  inflect.plural(/z([A-Z]|_| |$)/, 'ces\1')
  inflect.plural(/([bdhjlnrsy])([A-Z]|_| |$)/, '\1es\2')

  inflect.singular(/·([A-Z]|_| |$)/, '\1')
  inflect.singular(/([acefgikoptuw])s([A-Z]|_| |$)/, '\1\2')
  inflect.singular(/ces([A-Z]|_| |$)/, 'z\1')
  inflect.singular(/([bdhjlnrsy])es([A-Z]|_| |$)/, '\1\2')

  # Reporte de fortaleza
  inflect.irregular("reporte_de_fortaleza", "reportes·_de·_fortaleza·")
  inflect.irregular("reporte·_de·_fortaleza·", "reportes_de_fortaleza")
  inflect.irregular("ReporteDeFortaleza", "Reportes·De·Fortaleza·")
  inflect.irregular("Reporte·De·Fortaleza·", "ReportesDeFortaleza")

  # Tipo de Documento
  inflect.irregular("tipo_de_documento", "tipos·_de·_documentos·")
  inflect.irregular("tipo·_de·_documento·", "tipos_de_documentos")
  inflect.irregular("TipoDeDocumento", "Tipos·De·Documentos·")
  inflect.irregular("Tipo·De·Documento·", "TiposDeDocumentos")


  inflect.human("numero_de_documento", "número de documento")

end
