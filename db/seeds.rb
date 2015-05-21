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

Dominio.create(
  [
    {nombre: "Ejecución"},
    {nombre: "Influencia"},
    {nombre: "Construir Relaciones"},
    {nombre: "Pensamiento Estratégico"}
  ]
)

Talento.create(
  [
    {nombre: "Logro", dominio_id: 1, libro: "El abismo, Seth Godin", pelicula: "JERRY MCGUIRE", 
    docx_json: ({ 
      documentos: 
      [
        { 
          nombre: "perfil_de_fortalezas",
          datos:
            { 
              titulo:"**Logro**",
              texto: [%Q(Su talento de Logro ayuda a explicar el impulso que lo(a) caracteriza. La persona orientada al Logro al final del día debe haber logrado algo tangible para poder sentirse bien consigo mismo y, de hecho, siente como si todos los días comenzara de cero. Así mismo, para usted el concepto de "todos los días” comprende los días laborales y feriados y las vacaciones. No importa cuán merecido sea para usted tener un día de descanso, ya que si ese día transcurre sin que haya logrado algo, se sentirá insatisfecho(a). Usted tiene una sed insaciable que lo(a) empuja hacia el logro y lo(a) impulsa a hacer más, a lograr más. Después de haber alcanzado un logro, la sed disminuye de momento, pronto se intensifica pero espontáneamente y le obliga a seguir escalando hacia el próximo objetivo, y ¡los siguientes! Su implacable necesidad de emprender puede ser ilógica, puede incluso no estar enfocada, pero en verdad es insaciable y siempre será así para usted. Como persona orientada al Logro, debe aprender a vivir con ese hálito de descontento. Este talento tiene sus ventajas, le suple la energía necesaria para trabajar largas horas sin agotarse, es el vigor con el que siempre puede contar para iniciar tareas nuevas, retos nuevos. Es la fuente de energía que hace que usted fije el ritmo y defina los niveles de productividad de su equipo de trabajo. Es el talento que le mantiene en movimiento.),
%Q(El talento de Logro se puede expresar así:),
%Q(*Magdalena K., enfermera de urgencias:*"Para sentirme triunfante necesito acumular puntos todos los días. Hoy llegué hace apenas media hora pero probablemente ya he acumulado 30 puntos. Hice un pedido de equipo para la sala de urgencias, ordené la reparación de otro equipo, tuve una reunión con la enfermera que tengo a cargo y conversé con mi secretaria sobre ideas para mejorar nuestra planilla sistematizada. Así, de mi lista de noventa cosas, ya he hecho treinta. Me siento bastante bien conmigo misma en este momento".),
%Q(*Héctor S., vendedor:* "El año pasado fui elegido como el vendedor del año entre los trescientos representantes de ventas de mi compañía. Me sentí bien durante un día pero, como era de esperarse, la semana siguiente transcurrió como si nada hubiera pasado. Empecé de cero nuevamente. Algunas veces me gustaría que no fuera así porque temo alterar el equilibrio de mi vida y caer en la obsesión. Solía pensar que podría cambiar, pero ahora sé que mi cerebro no funciona así. Este talento realmente es una espada de doble filo. Me ayuda a lograr mis metas pero, por otro lado, me gustaría poder desactivarlo a voluntad y no puedo. Lo que sí puedo hacer es manejarlo y evitar la obsesión por el trabajo si me concentro en realizarme en todos los aspectos de mi vida y no sólo en el trabajo.),
%Q(*Sara L., escritora:* "Este talento es extraño. Primero, es bueno porque uno vive en pos de un desafío perpetuo. Pero, por otro lado, uno jamás siente que ha llegado a la meta. Es una especie de ascenso permanente a cien kilómetros por hora durante toda la vida. Jamás hay descanso porque siempre hay algo más por hacer. Sin embargo, al hacer el balance, prefiero tener este talento que no tenerlo. Yo me refiero a él como la "divina inquietud" y si me hace sentir que le debo al presente todo lo que tengo, entonces que así sea. Puedo vivir con eso".)]
            } 
        },
        {
          nombre:"manejar_las_fortalezas",
          datos: 
            {
              talento: "Logro",
              items: [%Q(Recurra a esta persona en los momentos en que tenga trabajo. Recuerde que suele ser cierto el dicho: "Si desea que se haga un trabajo, pídaselo a una persona ocupada".),
                      "Reconozca que a esta persona le agrada estar ocupada. Las reuniones interminables seguramente serán muy aburridas para ella. Entonces permítale hacer su trabajo o solicite su presencia sólo en las reuniones en donde realmente la necesite y pueda participar activamente.",
                      "Ayúdela a medir lo que termina. Bien podría disfrutar el hecho de llevar un registro de las horas y, lo que es más importante, debe tener una forma de medir su producción acumulada. Indicadores simples como el número de clientes atendidos, los clientes a quienes conoce por su nombre, los archivos revisados, los prospectos contactados o los pacientes atendidos, le ayudarán a esta persona a definirse.",
                      %Q("Establezca una relación con esta persona trabajando a su lado. Trabajar duro con otra persona suele ser una experiencia unificadora. Y mantenga a esta persona alejada de quienes producen poco. Los "perezosos" le fastidian.),
                      "Cuando esta persona termina un trabajo, casi nunca espera un descanso o una tarea fácil como premio. Se sentirá mucho más motivada con un reconocimiento por los logros pasados seguido de una meta todavía más exigente.",
                      %Q("Esta persona bien puede necesitar menos horas de sueño y madrugar antes que los demás. Piense en ella cuando el trabajo exija esas condiciones. También pregúntele cosas como: "¿Hasta qué hora tuvo que trabajar para terminar esto?" o "¿A qué hora llegó esta mañana?". Realmente apreciará esa clase de atención.),
                      "Usted podría sentirse tentado a ascender a esta persona a un cargo de alto nivel sencillamente porque tiene iniciativa. Esto podría ser un error si la aparta de lo que mejor sabe hacer. Una mejor opción sería identificar claramente sus otros talentos y fortalezas y buscarle oportunidades en donde pueda hacer más de lo que sabe hacer bien."]

            }
        },
        {
          nombre:"liderazgo_basado_en_fortalezas",
          datos: 
            {
              talento: "Logro",
              items_confianza: ["Las personas respetan su ética y dedicación al trabajo. El trabajo duro y la productividad son signos visibles de que Ud. es alguien en quien los demás pueden confiar. Manténgase siempre a la altura de esa confianza. Haga siempre todo aquello que prometió hacer.",
                                "Construya relaciones laborales a partir de compartir su trabajo con otros. Trabajar duro junto a otra persona puede ser una buena ocasión para crear lazos fuertes. Cada vez que otra persona vea que Ud. trabaja junto a ellos, Ud. construirá una conexión. Mostrarse frente a los demás como “uno más”, no como alguien “superior”, puede inspirar sentimientos de confianza y respeto."],
              items_empatia: ["Debido a que establecer y completar metas es de una importancia mayúscula para Ud., intente llevar esa forma de vida a otras áreas. ¿Cree que no pasa demasiado tiempo junto a sus seres queridos? Intente establecer un plan que los incluya y fije metas al respecto. De esa manera, no solo se sentirá bien por haber cumplimentado una meta más, sino por el tiempo compartido con ellos en el proceso.",
                              "Incluya al menos una meta que tenga que ver con alguna relación personal en su lista diaria de tareas. De esta manera, Ud. hará que esas personas sientan que son merecedoras de su tiempo y esfuerzo y por lo tanto, Ud. sentirá la satisfacción de terminar algo grato cada día de su vida."],
              items_estabilidad: ["Las demás personas pueden contar con su fuerte creencia en el trabajo duro y los esfuerzos dedicados. Ellos ven su consistencia y esfuerzo como un ejemplo de lo que es necesario para llevar adelante una vida segura y estable. Al mismo tiempo, esto genera una fuerte sensación de estabilidad en otros. Cuéntele a la gente qué se siente dar el máximo en cada cosa que Ud. hace. Esfuércese en mostrarle a la gente que la única cosa que todos controlamos en nuestras vidas es nuestro propio esfuerzo.",
                                  "Su energía es capaz de hacer que Ud. parezca “de piedra” por su fortaleza y resistencia. Ud. trabaja todo el tiempo y no parece cansarse jamás. Incluso, en algunos casos, la gente sentirá cierta pena por la cantidad de horas que Ud. trabaja. Explíqueles cuidadosamente a estas personas que, si bien no es la manera en que muchas personas trabajan, es la única forma de trabajo que a Ud. lo satisface plenamente. Pregúnteles qué les hace sentir a ellos de esa manera. Esfuércese en comprender la forma en que los demás conciben al trabajo y cómo entienden ellos a la dedicación y el esfuerzo. Aprenda a vivir con esas diferencias."],
              items_esperanza: ["Su tremenda energía y deseo por lograr lo máximo posible sirven de inspiración para muchos otros. Ud. puede incentivar a la gente conociendo mejor lo que ellos quieren conseguir y preguntándoles acerca de sus avances en cuanto a esos objetivos. Ayudando a otros con sus objetivos y tiempos para alcanzarlos, Ud. estará contribuyendo a que ellos consigan lo que alguna vez soñaron.",
                                "Poner metas y plazos, algo tan motivador para Ud., puede, al  mismo tiempo, ayudar a otros a que puedan administrar y gestionar grandes planes y proyectos. Ud. puede contribuir a que una tarea no parezca tan compleja e inmanejable fraccionándola en pequeñas porciones más simples y breves. Cada vez que alguien requiera de su ayuda para hacerle frente a una tarea colosal, comparta su sistema de gestión en “pequeños pasos” y ayúdeles a comprender las ventajas del mismo."]
            }
        },
        {
          nombre: "ideas_para_la_accion",
          datos: 
            {
              talento: "Logro",
              items: ["Elija empleos u ocupaciones que le permitan trabajar tan intensamente como Ud. quiera y donde sea capaz de medir su propia productividad. Ud. se sentirá vivo y motivado en contextos con estas características.",
                      "Tener el talento de Logro le permite disfrutar sentirse ocupado, al mismo tiempo que necesita saber cuándo algo está listo. Por esta razón, Ud. se sentirá mejor cuando establezca fechas límite y pueda medir progreso en cualquier actividad que desarrolle.",
                      "No olvide incorporar festejos y reconocimientos a su día a día. La gente con el talento de Logro tienden a saltar de una actividad a la otra sin llegar a reconocer méritos propios ni ajenos. Combata este impulso creando momentos de esparcimiento donde tenga la oportunidad de celebrar avances y logros.",
                      "Su orientación a la acción puede hacer que Ud. se aburra en reuniones. Si esto es cierto, apele a su talento de Logro para encontrar objetivos y metas y hacer cumplir los tiempos programados. De esta manera se asegurará que las reuniones sean productivas y eficientes.",
                      "No deje de estudiar. Asista a cursos y charlas acerca de su especialidad o acerca de aquella en la que Ud. está próximo a involucrarse. Esto creará en Ud. nuevas metas y le dará la motivación necesaria para obtener nuevos logros.",
                      "Ud. no necesita que otros lo motiven. Aprovecha esta auto-motivación para ponerse metas desafiantes. Establezca una meta desafiante cada vez que finalice un proyecto.",
                      "Asóciese con otros que trabajen tan duro como Ud. Comparta objetivos y metas de tal manera que puedan ayudarse mutuamente.",
                      "Lleve la cuenta de sus logros. Esto le ayudará a llevar su talento de Logro a otros ámbitos, como familia o amigos.",
                      "El trabajo es algo que lo entusiasma, por lo que más cantidad de trabajo suele ser algo motivante para Ud. No deje de emprender nuevos proyectos. Su energía casi ilimitada le permitirá provocar entusiasmo y energía en quienes trabajan con Ud.",
                      "No descuide la calidad. La gente con el talento de Logro, en el afán de lograr más, puede pasar por alto detalles que otros encontrarán evidentes. Asegúrese que incrementos en productividad vienen de la mano de incrementos en calidad."]
            }
        }
      ]}).to_json },
    {nombre: "Organización", dominio_id: 1, libro: "Administre el conocimiento, Gilbert Probst, Steffen Raub, Kai Romhardt, Esther Fernández", pelicula: "APOLLO 13", 
    docx_json: ({ 
      documentos: 
      [
        { 
          nombre: "perfil_de_fortalezas",
          datos:
            { 
              titulo:"**Organización**",
              texto: [%Q(Usted es como un malabarista. Cuando se enfrenta a una situación compleja en la que hay en juego numerosos factores, le encanta mantener todos esos factores en el aire, alineándolos y realineándolos hasta que esté seguro(a) de que los organizó en el orden más productivo posible. Para usted no hay nada especial en lo que está haciendo. Simplemente trata de calcular cuál es la mejor manera de lograr que se hagan las cosas. Cuando otros no tienen este talento, se quedarán asombrados de su gran capacidad de hacer malabares. Le preguntarán: "¿Cómo puedes pensar en tantas cosas a la vez?" o "¿Cómo puedes ser tan flexible y dejar de lado planes bien formulados y reemplazarlos por otros que apenas se te acaban de ocurrir?". Sin embargo, usted no se imagina actuando de otra manera. Usted es un excelente ejemplo de flexibilidad efectiva, ya sea cambiando horarios de viaje a último momento porque de improviso obtuvo mejores precios o surgió una mejor conexión, ya sea reflexionando sobre la mejor manera de combinar la gente y los recursos para llevar a cabo un nuevo proyecto. Desde lo cotidiano hasta lo complejo, usted siempre busca la configuración perfecta. Por supuesto, es en las situaciones dinámicas donde mejor se desempeña. Cuando se da algo inesperado, hay quienes se quejan de que planes concebidos con tanto esmero, no se pueden cambiar; otros se refugian en las normas o procedimientos existentes, pero, a diferencia de ambos, usted no hace ni lo uno ni lo otro. Usted se sumerge directamente en la confusión y busca nuevos caminos que presenten el menor número de obstáculos, idea nuevas opciones, descubre nuevas relaciones, constantemente hace mala-bares, porque usted está convencido(a) de que siempre puede haber un camino mejor.),
                      %Q(El talento de Organización se puede expresar así:),
                      %Q(*Sara P., ejecutiva de finanzas:* "Me encantan los retos realmente complicados en los que debo pensar con los pies en la tierra y descubrir la forma como encajan todas las piezas. Algunas personas ven una situación donde hay treinta variables y se enredan tratando de equilibrarlas todas. Cuando yo veo esa misma situación, reconozco unas tres alternativas. Y puesto que veo sólo tres, me es más fácil tomar una decisión y después poner todo en su lugar".),
                      %Q(*Gerardo D., gerente de operaciones:* "El otro día recibí un mensaje de nuestra planta de producción en donde decían que la demanda de uno de los productos había superado todas las proyecciones. Reflexioné un momento y entonces me vino una idea: despachar el producto semanal, no mensualmente. Entonces dije: 'Contactemos a las subsidiarias europeas, preguntemos cuál es su demanda, expliquémosles nuestra situación, y después preguntemos cuál es la demanda semanal que ellas tienen'. De esa manera podemos cumplir sin incrementar nuestro inventario. Claro está que aumentarán los costos de flete, pero eso es mejor que tener demasiado inventario en un solo sitio y muy poco en otro".),
                      %Q(*Pilar B., empresaria:* "Algunas veces, cuando pensamos ir todos al cine o a un partido de fútbol, por ejemplo, este talento de Organización me vuelve loca. Mi familia y mis amigos se descargan en mí: 'Pilar comprará los boletos, Pilar organizará el transporte'. ¿Por qué siempre debo ser yo? Y ellos simplemente responden: 'Porque lo haces bien. Nosotros tardaríamos media hora. Tú lo haces todo más rápido. Tú llamas al sitio, pides los boletos correctos y listo'".)]
              
            }
        },
        {
          nombre:"manejar_las_fortalezas",
          datos: 
            {
              talento: "Organización",
              items: ["Esta persona florece con la responsabilidad, de modo que entréguele tanta como sea posible, de acuerdo con su nivel de conocimiento y destreza. ",
                      "Bien puede tener talento para ser gerente o supervisor. Este talento le permite establecer la manera como pueden trabajar juntas personas con fortalezas muy diferentes.",
                      "Si se trata de lanzar un proyecto, permita que esta persona elija y asigne funciones a los miembros del equipo. Ella sabe cuál es la mayor contribución que cada persona puede hacer al equipo de acuerdo con sus fortalezas.",
                      "Es una persona a quien le emocionan los trabajos complejos y multifacéticos. Crecerá en las situaciones en donde suceden muchas cosas al mismo tiempo. ",
                      "Es recursiva. Siéntase tranquilo de poder asignarle un rol en el que algo no funciona, porque esta persona disfrutará buscando otras formas de hacer las cosas. ",
                      "Preste atención a sus demás Talentos Dominantes. Si también tiene el talento Disciplina, organizará las cosas de maravilla, estableciendo rutinas y sistemas para cumplir con el trabajo asignado. ",
                      "Comprenda que su modo de operar para desarrollar el equipo de trabajo es a través de la confianza y las relaciones. Bien podría rechazar a alguien a quien considere deshonesto o mediocre en su trabajo."]
            }
        },
        {
          nombre:"liderazgo_basado_en_fortalezas",
          datos: 
            {
              talento: "Organización",
              items_confianza: ["Ud. desea  que la gente le diga siempre la verdad porque de ese feedback honesto depende su habilidad para hacer correcciones sobre la marcha a toda clase de tareas y/o proyectos en los cuales Ud. se involucra. Asegúrese de comentar que, ya que ese feedback es imprescindible para Ud., ellos no deben temer hacer comentarios frontales o “sin filtro”. Construya una atmósfera de respeto mutuo para generar el ámbito adecuado para ellos.",
                                "Cuando diseñe nuevos planes de acción, sistemas o metodologías de ejecución de tareas, hágalo con extrema transparencia. Ser muy honesto con estos procesos hace que la gente entienda su forma de razonar con mucha más facilidad y rapidez."],
              items_empatia: ["Cuando Ud. invierte tiempo pensando qué es mejor para los demás y cómo hacer para que ellos sean exitosos en sus planes, la gente lo ama por ello. Ud. suele tener la capacidad de ver oportunidades para ellos que ni ellos mismos suelen detectar. Dígales lo que ve y “deles permiso” a seguir ese camino que Ud. ve con tanta claridad para ellos.  ",
                              "En algunos casos, algunos de ellos necesitarán ser “rescatados” de una situación complicada. La complejidad de ciertas situaciones tanto personales como laborales puede generar en ellos confusión y es en esos casos donde su talento Organización suele brillar. En esos casos, anticípese y muéstreles sus realidades de manera simplificada de evitar el caos. Se lo agradecerán profundamente."],
              items_estabilidad: ["Su capacidad para lidiar con la complejidad es reconfortante para todos aquellos que necesitan de un plan o una agenda para poder realizar sus tareas correctamente. Cada vez que Ud. puede mantener la confusión lo más lejos posible de las rutinas de sus colaboradores, ellos se sentirán seguros de que todo va según lo planeado.",
                                  "A veces, los mejores planes terminan transformándose en caos. Su talento Organización le permitirá verlo venir y anticiparse antes de muchos se den cuenta. Esta probablemente sea la característica más distintiva de su estilo de liderazgo. "],
              items_esperanza: ["Ud. no solamente puede ayudar a otros a desarrollarse profesionalmente, sino que al mismo tiempo puede detectar en ellos aquellas cosas que deberían dejar de hacer. Muchas personas pueden sentirse atrapadas en medio de agendas y compromisos. Ayúdeles a encontrar la forma de sentirse más libres. Guíelos para que ellos mismos les encuentren sentido a sus responsabilidades y a cómo impactan positivamente en sus vidas.",
                                "Antes de que muchos de sus colaboradores puedan reorganizar sus tareas y proyectos en pos de un futuro mejor, muchos de ellos necesitarán de su experiencia para tener una mejor visión de la situación en la que actualmente se encuentran. Aliéntelos a llevar una agenda que muestre mejor lo que hacen todos los días, si fuera necesario, hora por hora. De esta manera, ellos con un simple golpe de vista podrán entender dónde están parados y tener una mejor comprensión de la situación actual."]
            }
         },
         {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Organización",
                items: ["Conozca las metas de sus compañeros de trabajo y amigos. Hágales saber que Ud. las conoce. De esa manera, podrá ayudarlos a que Ud. las direccione hacia el éxito.",
                        "Si es necesario crear un equipo, involúcrese. Ud. reconoce talentos, habilidades, conocimientos en la gente, por lo que esa capacidad siempre le ayudará a encontrar las personas correctas para cada rol.",
                        "Ud. tiene la habilidad de encontrar la manera de que gente muy diferente entre sí pueda trabajar junta. Los grupos con integrantes con personalidades fuertes se beneficiarán aún más con el aporte de su talento de Organización.",
                        "Las fechas límites de tareas, proyectos u obligaciones deben ser su prioridad. Si Ud. se involucra en proyectos que otros conducen, hágales saber acerca de los progresos que está realizando, ya que su talento de Organización puede hacer creer a otros que Ud. no está lo suficientemente involucrado, ya que su tendencia natural siempre será realizar múltiples actividades y jugar con el tiempo al segundo.",
                        "Busque actividades complejas, lejos de las rutinas.",
                        "Involúcrese en la organización de algún evento: convención, fiesta de fin de año del trabajo, hasta casamientos. Su capacidad de organizar siempre dará réditos.",
                        "Su capacidad de atender muchos frentes a la vez y tener muchas cosas en su cabeza al mismo tiempo puede ser difícil de entender para otros. Deles tiempo de que comprendan cómo funciona y cómo responde fácilmente a situaciones donde otros ven sólo problemas o demoras.",
                        "Evite formar parte de sectores de la organización donde se realizan tareas de rutina. No solo que Ud. no será capaz de realizar su mayor aporte, sino que otros podrían llegar a verlo como irresponsable o poco involucrado.",
                        "Comparta con otros su excelente capacidad de estudiar situaciones hipotéticas. Hágales ver cómo Ud. identifica posibles cursos de acción rápidamente. Ellos se sentirán más seguros y paulatinamente irán confiando más en Ud. al percibir que no es sólo “instinto”, sino que hay una lógica detrás de lo que Ud. hace a diario.",
                        "Ud. tiene el talento de Organización. Utilícelo no solamente con gente, sino con lugares, amoblamiento, maquinaria y espacios desaprovechados. Eso también forma parte de lo que otros esperan de Ud."]
              }
          } 
      ]}).to_json},
      {nombre: "Creencia", dominio_id: 1, libro: "El camino del  líder, David Fischman", pelicula: "Gran Torino", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Creeencia**",
                texto: [%Q(Si el talento Creencia es una de sus fortalezas, usted tiene ciertos valores intrínsecos que son inalterables y éstos varían dependiendo de la persona. Por lo general, este talento le hace desear lo mejor para su familia, ser altruista y quizás le oriente hacia lo espiritual. Valora la responsabilidad y la ética, tanto en sí mismo(a) como en los demás. Esos valores centrales repercuten en su conducta de diversas maneras, le dan un mayor significado y significación a su vida. A su juicio, el éxito va más allá del dinero y el prestigio. Esos valores le sirven de guía para establecer sus prioridades, aun a pesar de las tentaciones y distracciones de la vida; esta consistencia es la base para todas sus relaciones. Conociendo esto, sus amigos saben que pueden contar con usted, conocen su posición y lo(a) consideran confiable. Este talento también requiere que encuentre un trabajo acorde con sus valores. Su trabajo debe tener contenido, debe "ser importante", es decir "tener significado". Guiado(a) por su talento Creencia, cualquier tarea o trabajo sólo tendrá importancia si le brinda la oportunidad de manifestar sus valores.),
                        %Q(El talento Creencia se puede expresar así: ),
                        %Q(*Miguel C, vendedor:* "La mayor parte del tiempo que no dedico al trabajo es para mi familia y para las cosas que hacemos en la comunidad. Fui miembro de la junta directiva de los Scouts para toda la región. Y cuando fui parte de los Scouts, fui jefe de manada. Cuando fui Explorador, fui asistente del jefe de tropa. Sencillamente me encanta estar con los niños. Creo que ahí es donde está el futuro. Y creo que no invertir el tiempo en el futuro es una pésima forma de usarlo".),
                        %Q(*Lucía U., rectora de universidad:* "Mis valores son la razón por la cual trabajo arduamente todos los días. Invierto horas y horas en este trabajo y ni siquiera me interesa cuánto me pagan. Acabo de descubrir que soy la rectora de universidad peor pagada de mi provincia y ni siquiera me molesta. Quiero decir que no hago esto por el dinero".),
                        %Q(*Gabriela D., ejecutiva de una aerolínea:* "¿Para qué tomarse la molestia de hacer algo que no es importante? Levantarme a diario para encontrar formas de hacer que los vuelos sean más seguros tiene importancia y encierra un propósito para mí. Si no encontrara este propósito en mi trabajo, no sé si podría enfrentar y resolver todos los desafíos y frustraciones que se me presentan. Creo que me desmoralizaría".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Creencia",
                items: ["Esta persona tiene una pasión. Descubra esa pasión y vincúlela al trabajo que debe realizarse.",
                        "Tendrá algunos valores permanentes muy sólidos. Busque la manera de poner dichos valores en consonancia con los de la organización. Por ejemplo, hable con esta persona sobre la forma como sus productos y servicios mejoran la vida de la gente, o señálele cómo la compañía encarna la integridad y la confianza, o permítale salirse de su camino para ayudar a los colegas y a los clientes. De esta forma, a través de sus actos y de sus palabras, esta persona proyectará los valores de la cultura de la organización.",
                        "Averigüe acerca de la familia y la comunidad de esta persona. Allí habrá forjado compromisos serios y duraderos. Usted deberá comprender, apreciar y honrar esos compromisos y ella lo(a) respetará por eso.",
                        "Reconozca que esta persona valorará más las oportunidades de prestar un mejor servicio que las de ganar más dinero. Busque formas de reforzar esta orientación natural hacia el servicio y verá su mejor desempeño.",
                        "Aunque no tendrá que estar de acuerdo con el sistema de creencias de esta persona, sí deberá comprenderlo, respetarlo y aprovecharlo. Si no puede aplicar sus valores en bien de las metas o de la organización, es preferible buscarle otra situación de trabajo. De lo contrario, no tardarán en brotar conflictos serios."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Creencia",
                items_confianza: ["El comportamiento ético es la base del respeto y la confianza. La integridad es una expectativa que tendrá la gente hacia Ud. Para garantizar la equidad y promover la unidad, comunique claramente a los demás los comportamientos que se van a tolerar tanto como los que no. La claridad prevendrá malos entendidos y daños a las relaciones.",
                                  "El talento Creencia es más acerca de una actitud de servicio que de un cierto conjunto de creencias morales o espirituales. Muéstrele a los demás lo que significa ser un líder servidor. Consiga que su equipo se involucre en hacer algo fuera de sí mismos - algo que hagan por la única razón de ayudar a otra persona o grupo. Demuestre su talento en las acciones, ya que hablan mucho más fuerte que sus palabras. Ese nivel de la integridad se ganará el respeto genuino de los demás."],
                items_empatia: ["Sus valores son una profunda fuente de sentido para usted. Hable con otros acerca de lo que es más significativo en sus vidas. Ser una caja de resonancia de algo tan importante como el núcleo de valores para otra persona construye relaciones. Aprenda qué es lo más importante para las personas en su vida, ya sea aquellos que Ud. conoce desde un largo tiempo o aquellos que simplemente los cruzó en la vida. Reconozca que todos venimos de diferentes orígenes y pasamos por varias etapas en nuestras vidas. Las relaciones siempre pueden crecer y escuchar crea una fuerte conexión con los demás.",
                                "Algunos vínculos serán casi instantáneos. Los valores comunes lo acercarán a algunas personas muy rápidamente – ya veces de por vida. Esto puede ser una fuente de gran alegría en su la vida y la de ellos. Explore sus creencias junto a ellos, haga preguntas y tenga conversaciones acerca de lo que más importa en sus vidas. En estas situaciones, las relaciones pueden crecer sorprendentemente rápido y de una manera más sólida.",
                                %Q(Tenga cuidado de no crear un grupo de “propios” y otro de “extraños” dentro de su grupo de colaboradores, en base a sus sistemas de creencias. Aunque nunca se puede tener "valores neutrales”, debe tener en cuenta los mensajes que envía cada vez que Ud. es muy firme o taxativo con los comentarios que revelan sus creencias.)],
                items_estabilidad: ["Algunas de sus creencias están grabadas en piedra. Incluso en este mundo cada vez más cambiante, nunca se corrompen. Estos cimientos firmes son la piedra angular de sus relaciones, actividades y clima laboral que usted crea. Si la gente cree o no en lo mismo que Ud., ellos igualmente conocen su postura y pueden sentirse seguros con la estabilidad de esas creencias.",
                                    "Su pasión lo prepara para luchar. En estas batallas, Ud. se esfuerza por ser visto como un líder que lucha por algo en lugar de alguien que está luchando en contra de algo. Ser visto de una manera más positiva puede ayudar a obtener más apoyo para su causa. La gente va a confiar en que Ud. luchará por lo que es correcto. Tienen confianza en la fortaleza de sus convicciones."],
                items_esperanza: ["El significado y el propósito de su trabajo a menudo proporcionan dirección para los demás. No olvide hablar acerca de ello. Comparta la importancia que esto tiene en su vida. Recuérdele a la gente por qué el trabajo que ellos hacen es importante y cómo hace una diferencia en sus vidas y en la vida de los demás. Enséñeles cómo pueden vivir sus talentos y valores a través de su trabajo, y apóyelos en la búsqueda de esas conexiones.",
                                  "Otras personas pueden estar menos seguros de sus valores que Ud. Si los están buscando, pídales que tengan en cuenta en qué gastan su tiempo y dinero. El uso real de nuestro tiempo, talento y riqueza dice mucho acerca de lo que realmente valoramos."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Creencia",
                items: ["Intente clarificar sus valores pensando en uno de los mejores días de su vida. Qué papel jugaron esos valores? Cómo ayudaron a que ese día sea tan especial? Cómo podría hacer para que eso se dé más a menudo?",
                        "Hago un esfuerzo para encontrar roles o puestos compatibles con sus valores. En ese sentido, puede ser muy beneficioso para Ud. formar parte de alguna organización que haga un gran aporte a la sociedad.",
                        "El sentido y propósito de su trabajo muchas veces será útil para quienes trabajan con Ud. Recuérdeles lo importante que es el trabajo que realizan y la diferencia que este hace, no solo en sus vidas, sino en la de otros.",
                        "Su talente de Creencia le permite tocar el corazón de la gente. Esta fuerte característica emocional le permite motivar a otros con facilidad, especialmente en tiempos difíciles.",
                        "Si Ud. tiene cartas, correos, fotografías o simples notas de gente a la que Ud. haya influenciado, colecciónelas! Esto le será de suma utilidad en aquellos momentos donde Ud. necesite motivación o inspiración para seguir adelante.",
                        "Equilibre su tiempo con el que le dedica al trabajo. Su compromiso muchas veces le hará perder noción de cuánto tiempo está pasando lejos de su familia o de sus actividad de recreación.",
                        "No oculte sus valores. Haga esfuerzos para que otros los conozcan y aprendan a valorarlos.",
                        "Intente hacer amistad con aquellos que comparten sus valores. Piense en su mejor amigo: esta persona comparte su sistema de valores?",
                        "Trate de asociarse con alguien que posea el talento de Futuro. Esta persona será de gran ayuda para mostrarle todo lo bueno que Ud. tiene por delante y cómo sus valores lo ayudarán a llegar allí.",
                        "Acepte que los demás puedan tener valores diferentes a los suyos. Exprese sus ideas dejando de lado los prejuicios."]
              }
          }
        ]}).to_json},
      {nombre: "Equidad", dominio_id: 1, libro: "Líderes, Estrategias para un liderazgo eficaz, Warren Bennis y Burt Nanus", pelicula: "NORTH COUNTRY", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Equidad**",
                texto: [%Q(El equilibrio es importante para usted. Está plenamente consciente de la necesidad de tratar a todos por igual, cualquiera que sea su situación en la vida. Por eso, no desea ver la balanza demasiado inclinada en favor de una persona, ya que, en su opinión, eso lleva al egoísmo y al individualismo. En un mundo donde prevalece el favoritismo, algunas personas obtienen una ventaja desleal, ya sea por sus vinculaciones, o por su origen o porque han sabido sacar ventaja del sistema para escalar en su carrera. Todo esto le resulta verdaderamente ofensivo y se ve a sí mismo(a) como un guardián contra este tipo de situaciones. En contraste con este mundo de favores "especiales", usted considera que la gente se desempeña mejor en un ambiente coherente, en el cual las normas son claras y se aplican a todos por igual. Ése es un ambiente en que las personas saben lo que se espera de ellas: es predecible, equitativo y justo. Allí cada persona tiene igualdad de oportunidades para demostrar lo que vale.),
                        %Q(El talento Equidad se puede expresar así: ),
                        %Q(*Simón H., gerente general de un hotel:* "Constantemente les recuerdo a mis gerentes que no deben abusar de sus privilegios de estacionamiento ni valerse de su posición para irse a jugar golf cuando hay huéspedes esperando. Detestan que les recalque esas cosas, pero me desagrada cuando los demás abusan de sus privilegios. También dedico mucho tiempo a nuestros empleados de servicio. Siento gran respeto por ellos y, como se lo manifesté a los gerentes, mientras más baja sea la posición de una persona en la pirámide del poder, mejor la trato".),
                        %Q(*Jazmín C, editora de una revista:* "Yo soy la persona que siempre defiende a los desvalidos. Odio cuando alguien no recibe una oportunidad justa a causa de alguna circunstancia de la vida sobre la cual no tuvo control alguno. Para hacer algo al respecto, pienso establecer una beca en mi alma máter para que los estudiantes de periodismo que no tengan los recursos puedan hacer prácticas en el mundo real sin tener que seguir pagando matrícula en la universidad. Yo tuve suerte. Cuando hice mis prácticas en la NBC en Nueva York, mi familia pudo pagar. Algunas familias no pueden hacerlo y creo que esos estudiantes merecen una oportunidad justa de mostrar lo que son".),
                        %Q(*Benito F., gerente de operaciones:* "Mi lema es dar crédito a quien lo merece. Si estoy en una reunión y presento una idea que realmente pertenece a algún miembro de mi personal, me aseguro de que todo el mundo lo sepa. ¿Por qué? Porque mis jefes siempre hicieron lo mismo conmigo y me parece que es lo justo y lo correcto".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Equidad",
                items: ["Cuando llegue el momento de reconocer el trabajo de un equipo al final de un proyecto, pida a esta persona que señale la contribución de cada quien. Se asegurará de que cada persona reciba realmente el homenaje que merece.",
                        "Cuando deba establecer prácticas consistentes, pídale ayuda para establecer las rutinas de trabajo dentro de la organización.",
                        "Apóyela durante las épocas de cambios grandes, porque se siente mejor en medio de patrones previsibles cuyo buen funcionamiento ha experimentado.",
                        "Si desempeña un rol analítico, pida a esta persona que trabaje con grupos de datos y no con datos individuales. Tendrá mayor facilidad para descubrir generalizaciones sobre el grupo que detalles particulares sobre un determinado individuo.",
                        "Si siendo gerente usted tiene dificultades con las situaciones en las cuales debe aplicar las normas por igual y de manera absoluta sin mostrar favoritismos, pida a esta persona que se ocupe de dichas situaciones. Ella sabrá de manera natural cuáles explicaciones y justificaciones deberá dar.",
                        "En las situaciones en las cuales sea necesario tratar por igual a personas distintas, solicítele que desarrolle las reglas.",
                        "Esta persona tiene un lado práctico y, por lo tanto, preferirá hacer las cosas y tomar decisiones en lugar de hacer un trabajo más abstracto como la planificación a largo plazo y la lluvia de ideas."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Equidad",
                items_confianza: ["Cultive confianza respetando siempre las reglas o normas de su grupo u organización. Cuando Ud. vive según esas reglas, eso habla de su respeto hacia los valores y contagia equidad.",
                                  "Muchas personas intentan sacar ventaja de su posición o jerarquía, pero Ud. rechaza esto, ya que su talento Equidad siempre le aconseja seguir las reglas sin distinciones ni excepciones. Nada genera más confianza en Ud. que la sensación que transmite este respeto por las normas que Ud. posee."],
                items_empatia: ["El talento Equidad es una gran herramienta para predecir cómo actúan y reaccionan las personas. Ud. es capaz de detectar todo aquello que no es frecuente y comprender por qué sucede. Si esto sucede porque la persona tiene un problema, su talento le permite ser compasivo y mostrarse cercano en caso de que necesite ayuda. Si por el contrario, Ud. nota que algún colega o colaborador no está haciendo su trabajo, Ud., guiado por el talento Equidad lo regresará rápidamente de regreso a sus tareas habituales.",
                                "Su talento Equidad puede actuar como un “radar” para detectar a otros con el mismo talento. Cada vez que los encuentre, hágales saber lo importante que es para Ud. compartir esos mismos valores con alguien y muéstrese dispuesto a colaborar con lo que esa persona necesite."],
                items_estabilidad: ["Ud. respeta las normas y espera que los demás hagan lo mismo. Para ello, asegúrese que ellos las conocen tan bien como Ud. Muchas personas las violan simplemente porque las desconocen.",
                                    "Los demás saben de su conducta intachable, por lo que descansan en la idea de que Ud. siempre cumple las reglas y respeta a todas las personas. Si Ud. desea que los demás se comporten como Ud., tómese el tiempo para explicarles las razones por las que Ud. actúa de esa manera. La lógica detrás de su conducta puede ser el empujón que algunos necesitan para comenzar a imitarlo.",],
                items_esperanza: ["Su conducta íntegra y honrada genera una sensación de protección en otros, por lo que es probable que muchos se acerquen para pedirle ayuda o consejos. Tome esto como una forma de reconocimiento a sus valores por parte de quienes mejor lo conocen.",
                                  "Ud. detesta los favoritismos, por lo que muchas veces se encontrará celebrando las “victorias” de aquellos que no son vistos como favoritos o no tienen los recursos para serlo. Si Ud. conoce a alguien con potencial, que solamente necesita apoyo o una palabra de aliento, no dude en actuar. Esa persona espera que su talento Equidad lo guíe hacia mejores resultados."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Equidad",
                items: ["Haga una lista  de las reglas de Equidad bajo las que vive.  Estas reglas pueden estar basadas en ciertos valores que posee o en ciertas normas que considera “no negociables”. Cuanto más claro sea acerca de estas reglas, más cómodo se sentirá dentro de esos límites.",
                        "Busque roles en los cuales pueda ayudar a la nivelación. En el trabajo o en su comunidad, ayude a los que estén en desventaja brindándoles la plataforma que necesitan para mostrar su verdadero potencial.",
                        "Cultive una reputación de identificar a aquellos que realmente se merecen el crédito. Asegúrese de que el mérito se reconozca siempre a los que actualmente hacen el trabajo. Puede volverse conocido como la conciencia de su organización o grupo.",
                        "Encuentre roles donde pueda hacer cumplir las normas. Este siempre listo para desafiar a quienes rompen las reglas o las manipulan para obtener mayores beneficios para ellos mismos.",
                        "Mantenga el enfoque en los resultados. Sus talentos de Equidad pueden llevarlo ocasionalmente a poner mayor énfasis en cómo alguien hace las cosas, en vez de que es lo que esa persona hace.",
                        "Debido a sus valores de igualdad, le cuesta lidiar con los individuos que acomodan las reglas para que sirvan a su situación. Sus talentos de Equidad pueden ayudarlo a aclarar reglas, políticas y procedimientos de manera tal que se asegure su aplicación uniforme para todos. Considere establecer protocolos para asegurar que estas reglas están claramente establecidas. ",
                        "Asóciese con alguien con un fuerte talento de Excelencia o Individualización. Esta persona puede recordarle cuando es apropiado tener en cuenta diferencias particulares.",
                        "Siempre haga lo que predica. Esto establecerá un tono igualitario y alentará el cumplimento pacifico de las normas.",
                        "Los demás apreciaran su compromiso natural a la consistencia entre lo que promete y lo que hace. Siempre defienda sus creencias, aun cuando encuentre una fuerte resistencia. Ud. cosechará beneficios a largo plazo.",
                        "Aproveche sus talentos de Equidad cuando tenga que comunicar noticias “no tan agradables”. Ud. puede naturalmente hacer que los otros entienden la lógica detrás de dichas decisiones, lo que hará la situación más fácil para ellos – y para Ud."]
              }
          }
        ]}).to_json},
      {nombre: "Prudencia", dominio_id: 1, libro: "Sólo los paranoides sobreviven,  Andrew S. Grove", pelicula: "THE FIRM", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Prudencia**",
                texto: [%Q(Usted es cuidadoso(a). Está siempre alerta. Es una persona bastante reservada. Sabe que la Tierra es un lugar impredecible, que es posible que todo parezca estar en orden, pero que debajo de esa superficie usted percibe los numerosos riesgos que existen. En lugar de ignorar esos riesgos, usted los saca a la luz uno a uno, para poder identificarlos, evaluarlos y así, minimizarlos. Usted es una persona seria que enfrenta la vida con cierta reserva. Por ejemplo, le gusta planificar con tiempo para anticipar lo que pueda salir mal, selecciona a sus amigos cuidadosamente y se reserva su opinión cuando la conversación se desvía hacia asuntos personales. Cuida de no dar muchos elogios o reconocimientos para no ser mal interpretado(a). Si usted no le cae bien a la gente porque no es tan efusivo como otros, no le es relevante, pues en su opinión la vida no es un concurso de popularidad. La vida es algo parecido a un campo minado: otros pueden correr a través de él descuidadamente, si así lo desean, pero usted tiene un enfoque diferente: identifica los peligros, sopesa las consecuencias relativas y cada paso lo toma con prudencia. Usted camina con cautela. ),
                        %Q(El talento Prudencia se puede expresar así: ),
                        %Q(*David H., productor de cine:* "Mi asunto es reducir el número de variables. Mientras menos variables haya, menor será el riesgo. Cuando negocio con los directores, siempre comienzo por ceder en algunos de los puntos menores inmediatamente. Una vez que los problemas menos importantes quedan fuera del camino, me siento mejor. Puedo concentrarme y controlar la conversación".),
                        %Q(*Débora S., gerente de proyecto:* "Yo soy una persona práctica. Cuando mis colegas están generando todo un cúmulo de ideas maravillosas, yo me dedico a preguntar cosas como: ¿Cómo va a funcionar esto?'¿Cómo va a ser recibido por este grupo de personas o por aquel otro?'. No diría que hago las veces de abogado del diablo porque eso tiene una connotación negativa, pero sí sopeso las implicaciones y evalúo los riesgos. Y creo que todos tomamos mejores decisiones gracias a mis preguntas".),
                        %Q(*Jazmín B., trabajadora de servicios:* "No soy una persona muy organizada, pero lo que nunca dejo de hacer es verificar todo dos veces. No lo hago por exceso de responsabilidad, sino para sentirme segura. Con las relaciones, con el desempeño, con cualquier cosa, siempre estoy expuesta y necesito saber que el suelo que piso es firme".),
                        %Q(*Alberto B., administrador escolar:* "Estoy organizando un plan de seguridad para los colegios. Estoy asistiendo a conferencias y tenemos ocho comités haciendo el trabajo. Tenemos una junta supervisora del distrito, pero a pesar de todo no me siento tranquilo con el modelo. Mi jefe me pregunta: '¿Cuándo podré ver el plan?' y yo le respondo: 'Todavía no. No me gusta del todo'. Ella sonríe y me dice: 'Caramba, Alberto, no necesito que sea perfecto, sólo quiero un plan'. Pero me deja ser así porque sabe que mi prudencia en esta etapa se traducirá en beneficios importantes. Gracias a este trabajo previo, una vez tomada la decisión, ésta es definitiva. No se deshace".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Prudencia",
                items: ["No ponga a esta persona en un rol que requiera decisiones instantáneas. Seguramente se sentirá incómoda tomando decisiones únicamente con base en el instinto.",
                        "Pídale que participe en equipos o grupos que tienden a ser impulsivos, pues ejercerá sobre ellos un efecto amortiguador, aportando a los grupos un toque de reflexión y previsión.",
                        "Muy probablemente esta persona será rigurosa en su pensamiento. Antes de tomar una decisión, pídale que le ayude a identificar las trampas ocultas que pudiesen dar al traste con sus planes.",
                        "En las situaciones en las que se requiere cautela, como las relacionadas con asuntos legales, de seguridad o de exactitud, pídale que asuma el control. Esta persona preverá instintivamente dónde pueden estar los peligros y la forma de proteger los flancos.",
                        "Seguramente será excelente para negociar contratos, especialmente tras bambalinas. En la medida en que lo permita la descripción de su cargo, pídale que desempeñe ese rol.",
                        "Respete el hecho de que puede ser persona celosa de su intimidad. A menos que sea invitado, no se apresure a ser demasiado familiar con ella. Y no se tome a pecho el que ella se muestre distante.",
                        "No le pida que sirva para recibir a la gente o para crear redes dentro de la organización. La clase de efusividad que estos roles exigen no será parte de su repertorio.",
                        "Será persona selectiva y discriminadora en sus relaciones. Por consiguiente no la cambie rápidamentede equipo. Necesita estar segura de que las personas que la rodean son competentes y dignas de confianza y necesita tiempo para desarrollar esa seguridad. ",
                        "Como gerente, esa persona no repartirá elogios a diestra y siniestra, pero cuando lo haga, serán verdaderamente merecidos."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Prudencia",
                items_confianza: ["Ud. inspira confianza por ser precavido y considerado al tratar temas difíciles. Use estos talentos para aprovechar oportunidades donde pueda manejar conflictos y asuntos complicados. ",
                                  "Las demás personas respetan el tiempo que Ud. le dedica a hacer las cosas correctas y a hacer las cosas correctamente. Hágales saber que muchas veces Ud. necesitará más tiempo para tomar mejores decisiones. Confíe en que ellos reconocerán que Ud. lo hacen pensando en ellos también."],
                items_empatia: ["Ud. comprende la importancia y el peso de cada relación y se toma esta responsabilidad muy en serio. Una vez que Ud. decida sumar a alguien a su vida, cuida correctamente a esta nueva relación. Invierta en actividades y conversaciones que lo muestren cercano y ábrase a quienes Ud. más aprecie. Como Ud. sabe, las relaciones duraderas son difíciles de encontrar, por lo que requerirán siempre de toda su atención y afecto.",
                                "Comprenda que Ud. rara vez elogia, por lo que para muchos esto, proviniendo de Ud., se tratará de una especie de tesoro. Intente estar lo más consciente posible cuando estas situaciones se presentan para recordar por más tiempo el placer que esto puede provocarle."],
                items_estabilidad: ["Ud. nunca toma riesgos innecesarios. Por el contrario, suele revisar cada decisión con suma cautela. Confíe en sus instintos cuando piense que algo es “demasiado bueno para ser cierto”. Su prudencia y cautela harán que otros se sientan protegidos y seguros acerca de las conclusiones a las que Ud. frecuentemente llega.",
                                    "Las demás personas aprecian todo el análisis que Ud. realiza previo a tomar cualquier tipo de decisión. Cuénteles acerca de las opciones que Ud. considera y por qué se decide por una en particular. Recuerde que muchas veces esas personas estarán involucradas de una u otra manera en esas decisiones. Pídales que evalúen con el mismo cuidado con el que Ud. lo hace."],
                items_esperanza: ["Intente disuadir la tendencia de otros a moverse rápidamente hacia la acción. Muchas veces la gente cree que por “haber considerado” algo antes de decidirse, eso significa que están tomando una buena decisión. Su Prudencia servirá para advertir a otros de potenciales peligros y llevarlos hacia decisiones más inteligentes.",
                                  "Cada vez que Ud. maneje mucha información o sepa mucho acerca de un tema en particular, ofrezca a los demás las ventajas de la investigación y el análisis que Ud. ya hizo. Aliéntelos a que intenten lo que Ud. considere que es lo mejor para ellos. Muéstreles evidencia que les ayude a comprender mejor su perspectiva."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Prudencia",
                items: ["Ud. posee un excelente juicio crítico. Intente encontrar trabajos o roles donde puede brindar consejo y/o asesoramiento. Ud. puede ser particularmente bueno en cuestiones legales, como revisión de contratos o normas a cumplimentar.",
                        "Cualquiera sea su rol, tome la responsabilidad de ayudar a otros a que consideren lo mejor posible sus alternativas antes de tomar una decisión importante. Ud. es capaz de ver factores que otros no ven. Pronto lo reconocerán como un valioso asesor.",
                        "Explique su detallado proceso de toma de decisiones a todos aquellos que crea necesario. Cuénteles que Ud. resalta el riesgo, con el objeto de poder reducirlo y tener más control. Ud. no quiere que otros vean su talento Prudencia como falta de iniciativa o temor a la acción.",
                        "Ud. inspira confianza por ser precavido y considerado al tratar temas difíciles. Use estos talentos para aprovechar oportunidades donde pueda manejar conflictos y asuntos complicados.",
                        "Ud. nunca toma riesgos innecesarios. Por el contrario, suele revisar cada decisión con suma cautela. Confíe en sus instintos cuando piense que algo es “demasiado bueno para ser cierto”. Su prudencia y cautela harán que otros se sientan protegidos y seguros acerca de las conclusiones a las que Ud. frecuentemente llega.",
                        "En épocas de cambios, considere las ventajas de ser un poco conservador en su toma de decisiones. Esté listo para explicar estas ventajas a otros.",
                        "No deje que otros lo presionen a que revele detalles de su vida personal demasiado pronto. Confirme cuidadosamente quiénes son estas personas antes de brindarles esa información. Ud. normalmente construye amistades de manera lenta y cuidadosa. Siéntase orgulloso de su pequeño círculo de amigos.",
                        "Asóciese con alguien con fuertes talentos de Mando, Auto-Confianza o Impulso. Juntos podrán tomar muchas decisiones y todas ellas serán correctas.",
                        "Intente disuadir la tendencia de otros a moverse rápidamente hacia la acción. Muchas veces la gente cree que por “haber considerado” algo antes de decidirse, eso significa que están tomando una buena decisión. Su Prudencia servirá para advertir a otros de potenciales peligros y llevarlos hacia decisiones más inteligentes.",
                        "Dese permiso para demorar su opinión acerca de algo hasta asegurarse que cuenta con todos los elementos necesarios para evaluar la situación. Ud. no es alguien que acepte el cambio inmediatamente. Todo lo contrario. Ud. es capaz de mostrar diferentes perspectivas, ver la misma realidad desde otros ángulos y así poner en evidencia detalles que muchos otros pasarían por alto. Como la persona con talento Prudencia que Ud. es, Ud. funciona como un “freno” para aquellos más impulsivos que desean moverse siempre lo más rápidamente posible."]
              }
          }
        ]}).to_json},
      {nombre: "Disciplina", dominio_id: 1, libro: "Sin Excusas!, Brian Tracy", pelicula: "SAVING PRIVATE RYAN", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Disciplina**",
                texto: [%Q(Si su talento es Disciplina, necesita que su mundo sea predecible, ordenado y planeado. Por esta razón, instintivamente, estructura su mundo, establece rutinas e identifica plazos y fechas en los cuales las cosas tienen que estar listas. Divide los proyectos a largo plazo en una serie de planes a corto plazo con objetivos específicos para trabajar en los mismos de manera diligente. Este talento describe su necesidad de ser preciso(a) y meticuloso(a) en todas sus acciones, y no necesariamente se refiere a la limpieza u orden en el que usted tenga las cosas. Ante el desorden inherente de la vida, desea sentir que tiene todo bajo control. Las rutinas, los plazos, la estructura, todo eso le ayuda a crear esa sensación de control. Cuando los demás carecen del talento Disciplina, es posible que a veces les moleste su necesidad de orden, pero no tiene por qué haber conflicto. Usted debe entender que no todos sienten la misma necesidad de que todo sea predecible, ellos tienen otras formas de hacer las cosas. Así mismo, usted puede ayudarlos a entender, e incluso apreciar, su necesidad de estructura. Su disgusto por las sorpresas, su impaciencia con los errores, sus rutinas, su dedicación a los detalles, nada de eso tiene que mal interpretarse como una conducta controladora que limita a la gente. Por el contrario, este comportamiento debe entenderse como su método instintivo de sostener su productividad y seguir avanzando frente a las diversas distracciones que la vida le presenta.),
                        %Q(El talento Disciplina se puede expresar así: ),
                        %Q(*Guillermo T., administrador hotelero:* "El momento decisivo en mi carrera fue cuando asistí a uno de esos cursos sobre manejo del tiempo hace algunos años. Siempre había sido disciplinado, pero cuando aprendí a utilizar esa disciplina en un proceso organizado todos los días sentí que el poder crecía dentro de mí. Esta Palm Pilot significa que llamo a mi mamá todos los domingos en lugar de dejar pasar meses sin llamarla. Significa que invito a mi esposa a cenar todas las semanas sin que ella tenga que pedírmelo. Significa que mis empleados saben que si digo que necesito algo para el lunes, los llamaré el lunes si no me lo han entregado. Esta Palm Pilot es una parte tan íntima de mi vida que he alargado los bolsillos de todos mis pantalones para que se acomode perfectamente a la cadera".),
                        %Q(*Gabriel V., ejecutivo de ventas:* "Es posible que mi sistema de archivo no sea muy bonito, pero es muy eficiente. Escribo todo a mano porque sé que ningún cliente va a ver esos archivos, de manera que no hay necesidad de gastar tiempo en hacerlos bonitos. Toda mi vida como vendedor se basa en plazos y seguimiento. Con mi sistema llevo el registro de todo, de tal manera que no sólo asumo la responsabilidad por los plazos y el seguimiento con los que me he comprometido, sino también por los de todos mis clientes y colegas. Si no se comunican conmigo en la fecha prometida, reciben sin falta un correo electrónico de mi parte. En efecto, un día uno de ellos me dijo, 'Más vale que me comunique contigo porque sé que recibiré un mensaje de voz si no lo hago'".),
                        %Q(*Johanna S., gerente de oficina:* "Detesto perder el tiempo, de manera que hago listas, listas muy largas para controlar mis actividades. La lista para el día de hoy tiene 90 puntos y sé que cumpliré con el 95% de ellos. Eso es disciplina, porque no permito que nadie me haga perder tiempo. No soy grosera, pero les hago saber a las personas, con tacto y sentido del humor, que su tiempo ha terminado".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Disciplina",
                items: ["Brinde a esta persona la oportunidad de imponerorden y estructura en una situación improvisada o caótica. Puesto que nunca se sentirá a gusto en esassituaciones informes y desordenadas — y no le pidaque lo haga — no descansará hasta tanto se restablezcan el orden y la previsibilidad.",
                        "El apiñamiento la molesta. No espere que dure mucho en un ambiente físicamente atestado. O bien pídale que ordene o búsquele un ambiente diferente.",
                        "Avísele siempre con tiempo sobre los plazos. Necesita terminar el trabajo antes de cumplirse la fecha límite, y no podrá hacerlo si usted no le explica el cronograma.",
                        "En ese mismo orden de ideas, trate de no sorprenderla con cambios súbitos de planes y de prioridades. Las sorpresas le provocan sufrimiento. Pueden dañarle el día.",
                        "Cuando haya muchas cosas que terminar en un determinado período de tiempo, recuerde la necesidad que ella tiene de establecer prioridades. Destine tiempo para establecerías con ella y, una vez establecido el cronograma, no lo modifique.",
                        "Si es lo apropiado, pídale que le ayude a planear y organizar su propio trabajo. Podría pedirle que revise su sistema de manejo del tiempo o hasta su propuesta de reingeniería de algunos de los procesos de su departamento. Explique a los compañeros de trabajo de esa persona que ésa es una de sus fortalezas y aliéntelos a pedirle el mismo tipo de ayuda.",
                        "Es persona excelente para desarrollar rutinas encaminadas a incrementar su propia eficiencia. Si se ve obligada a trabajar en situaciones que requieren flexibilidad y rapidez de respuesta, pídale que desarrolle un determinado número de rutinas, cada una apropiada para una determinada situación. De esta manera tendrá una respuesta previsible a la cual echar mano, independientemente de cuál pueda ser la sorpresa."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Disciplina",
                items_confianza: ["La gente lo respeta por su compromiso con los estándares más altos. Combine esos estándares con acciones que le permitan mostrarse como una persona íntegra.",
                                  "Los demás confían en su orientación a los detalles para ejecutar tareas que requieren mucha atención. No importa si es Ud. quien realiza la tarea o si simplemente la supervisa, los demás siempre lo respetarán por su capacidad de entregar resultados satisfactorios continuamente."],
                items_empatia: ["El talento Disciplina es un don que otros no poseen. Celebre las diferencias y construya alianzas donde ambas partes de beneficien de los talentos que la otra carece. Lleve esas alianzas al pico de su performance aprendiendo a confiar en los demás tanto como los demás confían en su disciplina.",
                                "Cuando les muestre a otros aquellos detalles que pasaron por alto, hágalo con calidez. Aprovecho esos momentos para construir relación, no para destruirla. Ud. puede mejorar la calidad de vida de ellos y ellos siempre se lo agradecerán."],
                items_estabilidad: ["Ud. es predecible y consistente. Ud. siempre hace lo que le piden a tiempo – si no es que lo termina antes -. Comparta su manera de administrar el tiempo y cuénteles en qué etapa de las tareas o proyectos se encuentra. La gente se siente muy tranquila cuando sabe que Ud. avanza según lo planeado.",
                                    "Como mencionamos anteriormente, no todos tienen el talento Disciplina que Ud. posee. Comparta con otros la sensación de tranquilidad que le provoca hacer las cosas a tiempo para que ellos vean lo importante que es para Ud. El proceso ellos podrían, incluso, descubrir algunas cosas que les permitan ser consistentes como Ud. Muéstreles cómo Ud. no deja nada librado al azar y ellos entenderán la razón de su tranquilidad cuando todo marcha según lo planeado."],
                items_esperanza: ["Sus esfuerzos generalmente parten de sus objetivos de desempeño. Ud. es el tipo de persona que todos los días necesita dar algo por terminado, sentir que algo está completo. Ayude a otros con sus planes, proyectos, programaciones, para que puedan descubrir que esos pequeños triunfos parciales son la clave para obtener grandes resultados globales.",
                                  "Intentar imponer el sistema de trabajo que viene de la mando de su talento Disciplina nunca funcionará. Su única forma de “convertir” a alguien es alentar a repetir aquellos comportamientos exitosos. Esas acciones que lograron buenos resultados. De esa manera, ellos sentirán lo que Ud. siente todo el tiempo y comprenderán los beneficiosos de hacer las cosas de manera impecable."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Disciplina",
                items: ["No dude en revisar cuantas veces crea necesario para asegurarse que las cosas están bien. Siente el impulso de hacerlo, y pronto los demás comenzaran a esperarlo de Ud.",
                        "Acepte que los errores pueden deprimirlo. La precisión es parte de lo que Ud. es; de todos modos, debe encontrar la manera de sobrepasar estos momentos de fastidio para no sentirse decepcionado.",
                        "Admita que los otros pueden no ser tan disciplinados como Ud. Probablemente sus torpes procesos lo frustrarán, entonces trate de mirar más allá, y enfóquese en los resultados, no en los procesos.",
                        "La exactitud es su fuerte; Ud. disfruta estudiando los detalles. Busque oportunidades para examinar contratos, comunicaciones importantes, o documentos financieros en búsqueda de errores. Puede evitarse y evitar a los demás costosos errores o situaciones incomodas.",
                        "Incrementar la eficiencia es uno de sus sellos. Ud. es un perfeccionista de corazón. Descubra situaciones en las que se pierde tiempo o dinero debido a ineficiencias, y cree sistemas o procedimientos para mejorar la eficiencia.",
                        "Ud. no solo crea orden, también lo anhela en la forma de un espacio bien organizado. Para liberar su talento de Disciplina invierta en mobiliario y sistemas de organización que le permitan “tener un lugar para todo y todo en su lugar”.",
                        "Los cronogramas lo motivan. Cuando tiene una tarea que completar, le gusta saber la fecha límite para poder planear su agenda de acuerdo a ella. Utilice sus talentos de Disciplina para definir un plan paso a paso. Los demás apreciaran sus indicaciones porque ayudara a todos a estar “enfocados”.",
                        "Los demás pueden confundir su talento de Disciplina con rigidez. Ayúdelos a entender que la disciplina lo ayuda a hacer su día más eficiente – a menudo porque prioriza su tiempo. Cuando trabaje con otros no tan disciplinados como Ud., pídales que sean claros con los las fechas límites de tal manera que Ud. pueda ajustar sus tareas para cumplir con sus requerimientos. ",
                        "Escoja roles y responsabilidades que poseen estructura.",
                        "Cree rutinas que  deban ser realizadas por Ud. en forma sistemática. Con el tiempo, los demás apreciaran esa clase de predictibilidad. "]
              }
          }
        ]}).to_json},
      {nombre: "Enfoque", dominio_id: 1, libro: "Primero lo primero, Stephen R. Covey", pelicula: "THE UNTOUCHABLES", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Enfoque**",
                texto: [%Q("¿Hacia dónde me dirijo?" se pregunta a sí mismo(a). Se plantea esta pregunta todos los días. Guiado(a) por este talento, usted necesita un destino claro, ya que si no lo tiene, rápidamente su vida y su trabajo pueden resultarle frustrantes. Así, anualmente, mensualmente e incluso cada semana, usted hace lo que le gusta: fijarse objetivos. Éstos, sean a corto o largo plazo, comparten características similares, son específicos, se pueden medir y tienen una fecha límite. Le sirven de brújula, le ayudan a definir sus prioridades y a hacer las correcciones necesarias para restablecer su curso. Este talento es poderoso porque instintivamente le obliga a seleccionar y evaluar si determinada acción ayudará o no a lograr su objetivo; las acciones que no lo hagan, las ignora. Finalmente, el talento Enfoque lo(a) obliga a ser eficiente y, como consecuencia, usted se impacienta ante las demoras, los obstáculos e incluso las desviaciones, aunque éstas le intriguen. Esto le convierte en un miembro muy valioso del equipo. Cuando otros comienzan a apartarse del tema central e incursionan en caminos "interesantes", usted los vuelve a ubicar en el tema inicial y los concentra en lo relevante para ese momento en particular. Su Enfoque les recuerda que si algo no les está ayudando como grupo a dirigirse hacia su destino, entonces no es importante y, si no es importante, entonces no vale la pena perder el tiempo en eso. Usted hace que los demás no se desvíen del camino.),
                        %Q(El talento Enfoque se puede expresar así: ),
                        %Q(*Nicolás H., ejecutivo de sistemas:* "Para mí la eficiencia es muy importante. Soy la clase de persona que juega todos los hoyos de golf en dos horas y media. Cuando trabajaba en Electronic Data Systems, desarrollé una lista de preguntas que me permitiera revisar el trabajo de cada división en quince minutos. El fundador, Ross Perot, me apodaba “El Dentista” porque programaba todo un día de reuniones de quince minutos exactos".),
                        %Q(*Benjamín E, ejecutivo de ventas:* "Siempre estoy sopesando prioridades, tratando de encontrar el camino más eficiente hacia la meta que me permita perder el menor tiempo y el menor movimiento posible. Por ejemplo, cuando recibo muchas llamadas de los clientes que necesitan que me comunique con el departamento de servicio, en lugar de procesar cada llamada a medida que llega, interrumpiendo mis prioridades del día, las agrupo en una sola al final del día".),
                        %Q(*Miguel L., administrador:* "La gente se asombra de la manera como pongo las cosas en perspectiva y no pierdo el hilo de ninguna de ellas. Cuando otras personas se atascan y levantan sus propios obstáculos, yo salto por encima de ellas, les señalo nuevamente el camino y pongo las cosas en movimiento".),
                        %Q(*Doris L., ama de casa:* "Soy la clase de persona que prefiere ir al grano  en las conversaciones, en el trabajo, y hasta cuando voy de compras con mi esposo. Él prefiere probarse muchas cosas y pierde mucho tiempo, mientras que yo me pruebo una sola y si me gusta y el precio es razonable la compro. Soy una compradora 'de precisión)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Enfoque",
                items: ["Establezca metas y plazos y dé libertad a esta persona para cumplirlos a su manera. Trabajará mejor en un ambiente en el que pueda controlar los sucesos de su trabajo.",
                        "Comuníquese periódicamente con ella, con la frecuencia que ella considere necesaria. Recibirá muy bien esta comunicación sobre el progreso de su trabajo porque es una persona a quien le agrada hablar de las metas y del progreso alcanzado. Pregúntele con qué frecuencia deberán reunirse para hablar de las metas y los objetivos.",
                        "No espere que esta persona sea siempre sensible a los sentimientos de los demás, porque terminar el trabajo es algo que tiene prioridad por encima de los sentimientos. Si posee también el talento Empatía, este efecto obviamente será menor. Sin embargo, tenga siempre presente la posibilidad de que pueda pisotear sentimientos en su avance hacia la meta.",
                        %Q(No gusta de las situaciones de cambio constante. Para manejar esto, utilice un lenguaje que ella pueda comprender cuando describa el cambio. Por ejemplo, utilice términos tales como "metas nuevas" y "nuevos indicadores de éxito". Esta clase de términos imprimen trayectoria y propósito al cambio, y ésta es la forma natural de pensar de esta persona.),
                        "Cuando haya proyectos que deban culminar en una fecha crítica, pídale que participe. Es una persona que honra instintivamente los plazos. Tan pronto como se adueña de un proyecto con una fecha límite, concentra todas sus energías en él hasta terminarlo.",
                        "Haga posible que asista a un seminario sobre manejo del tiempo. Probablemente no será muy buena en ese aspecto, pero como su talento Enfoque la empuja a avanzar hacia las metas lo más rápidamente posible, apreciará la mayor eficiencia que podrá lograr si maneja adecuadamente su tiempo.",
                        "Tenga presente que las reuniones sin estructura le molestarán, de modo que asegúrese de seguir la agenda cuando esa persona esté presente en una reunión."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Enfoque",
                items_confianza: ["Las otras personas lo respetarán por su capacidad para detectar qué es importante y mantener su atención en ello. Asegúrese de no delegar solamente tareas poco importantes. Antes de pedirle a alguien que haga algo por Ud., pregúntese si esa tarea puede tener algún impacto en los resultados. Si no lo tiene, es probable que no valga la pena llevarla a cabo. Los demás valorarán su juicio crítico en este tipo de situaciones. ",
                                  "Como una persona con fuerte talento Enfoque, Ud. sabe perfectamente que en la vida las decisiones son todo. Recuerde que cada persona es responsable por sus propias decisiones. Hágales saber a los demás que Ud. entiende y respeta las decisiones que ellos tomen."],
                items_empatia: ["Dé un paso atrás y piense de una manera más global acerca de lo que es prioritario en su vida. Use su talento Enfoque para “dar en el blanco” con respecto a las cosas que son importantes en su vida, pero, más aún, la gente que es crucial en su vida. Establezca metas y estrategias para poder darle a esas personas el tiempo y la dedicación que merecen como socios en su vida. Si es posible, incluya esas mismas metas en su rutina diaria y controle si los está cumpliendo.",
                                "¿En quiénes debería invertir Ud. en el trabajo?¿Quiénes le hacen la vida más fácil en su trabajo? Agradézcales cada vez que se presente la oportunidad. Reconozca el rol que esas personas tienen su propia efectividad personal y no olvide acercarse a ellos cuando ellos también necesiten ayuda."],
                items_estabilidad: ["Intente expandir los efectos de su talento Enfoque prolongando los períodos de tiempo acerca de los cuales Ud. normalmente planifica. Por ejemplo, su Ud. normalmente planifica para todo un trimestre, intente prolongar ese plazo hasta un semestre o incluso un año, si fuera posible. Hágalo gradualmente. Comparta este proceso con otros y ellos sabrán que su enfoque está siendo usado para intentar darle estabilidad al trabajo y a sus vidas. ",
                                    "Cada vez que Ud. comparta sus metas de largo plazo con su familia y sus equipos de trabajo, cuénteles que ellos forman parte de todos sus planes a futuro. Eso los ayudará a sentirse más seguros y valorados. También les ayudará a encontrar sentido a muchas de los esfuerzos que Ud. hace."],
                items_esperanza: ["A lo largo de la vida todos vamos adquiriendo más y más tareas y responsabilidades que con el paso del tiempo empiezan a dejar de tener sentido para nosotros. Ayude a otros a detectar estos “cúmulos” de tareas sin sentido y ayúdelos a limpiar sus agendas hasta que tengan una lógica detrás. Hágalos preguntarse “¿Cuáles son las tareas realmente prioritarias en mi vida?¿Qué cosas son las que más me gusta hacer?” e incluso “¿Qué pasaría si dejara de hacer esto o aquello?”. Preguntas como estas les ayudarán a otros a conseguir algo del enfoque que Ud. naturalmente tiene y podrán, tarde o temprano, tener una idea más clara de lo que les depara su futuro.",
                                  "Invierta en su compañía ayudando a aquellos que presentan una carrera promisoria dentro de la organización. Cuando Ud. asume el rol de mentor para otros, puede ser de gran ayuda para colaborar con ellos en diseñar un plan de carrera o planes de acción que aseguren sus expectativas de desarrollo profesional.",
                                  "Tener metas de desempeño medibles, específicas y tangibles es clave para su efectividad personal. Ud. disfruta al diseñar pequeñas metas que le ayudan a mantener su talento Enfoque afilado. Comparta esas metas, así como sus sistemas de medición y sus objetivos de desempeño con sus colaboradores. Si lo hace, no solamente reforzará la sensación de equipo, sino que al mismo tiempo, los incentivará a que cada uno de ellos encuentre un sistema propio que les permita medir progreso en términos organizacionales también."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Enfoque",
                items: ["Cuando establezca metas, tenga la disciplina para incluir cronogramas y evaluaciones. Estos le darán pruebas de que realmente está progresando.",
                        "Busque empleos en los que pueda funcionar en forma independiente. Con su talento dominante de Enfoque, Ud. podrá mantenerse encaminado sin supervisión.",
                        "Su mayor valor dentro de un equipo podría ser ayudar a los demás a establecer metas. Al finalizar las reuniones, sea el responsable de resumir las decisiones, de definir cuando estas decisiones se ejecutarán, y de establecer las nuevas fechas reunión. ",
                        "Los demás pensarán, hablarán y actuarán de un modo menos eficiente que el suyo. Preste atención. A veces estos “desvíos” pueden llevar a descubrimientos y delicias.",
                        "Establezca metas más allá del trabajo. Si se encuentra demasiado concentrado en los objetivos laborales, fije objetivos para su vida personal. Estos le darán importancia a sus prioridades personales y por ende ayudarán a que logre un balance en su vida.",
                        "Las horas vuelan cuando está inmerso en una tarea; Ud. pierde la noción del tiempo. Asegúrese que todos sus objetivos son alcanzados y todas sus prioridades son atendidas programando sus esfuerzos y siguiendo esa programación.",
                        "Ud. funciona mejor cuando se puede concentrar en unas pocas iniciativas y demandas bien definidas. Dese el permiso para rechazar aquellos proyectos que no están alineados con su tarea general. Esto le permitirá concentrar sus esfuerzos en sus prioridades principales – y ayudará a los demás a entender su necesidad de enfoque.",
                        "Tómese el tiempo para escribir sus aspiraciones, y remítase a ellas seguido. Ud. se sentirá más en control de su vida.",
                        "En el trabajo, asegúrese de comunicar a su jefe sus objetivos de corto y mediano plazo. Esto le permitirá a su jefe darle el espacio que necesita.",
                        "Asegúrese de que las metas que se fija consideran cantidad y calidad. La integridad de sus objetivos asegurará que la aplicación de sus talentos de Enfoque conducen a triunfos sólidos y duraderos."]
              }
          }
        ]}).to_json},
      {nombre: "Responsabilidad", dominio_id: 1, libro: "Meta-Management 1, Fredy Kofman", pelicula: "LETTERS FROM IWO JIMA", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Responsabilidad**",
                texto: [%Q(Su talento Responsabilidad le obliga a asumir un compromiso sobre lo que promete. Una vez que usted asumió este compromiso, sin importar que sea grande o pequeño, se siente moralmente obligado(a) y no cesa hasta cumplir la tarea. Su reputación depende de ello. Si por alguna razón no puede cumplir, automáticamente comienza a buscar formas de compensar a la otra persona, ya que las disculpas, excusas y/o explicaciones son inaceptables e insuficientes. No estará tranquilo(a) consigo mismo(a) hasta que no haya he-cho la debida restitución. Esta conciencia, esta actitud obsesiva por hacer las cosas bien, su ética impecable, se combinan para crear una reputación que sea totalmente confiable. Cuando se asignen nuevas responsabilidades le mirarán a usted primero porque saben que las cumplirá. Cuando acudan a usted por ayuda, deberá ser selectivo(a), ya que su buena disposición no conoce límites respecto a lo que le es humanamente posible.),
                        %Q(El talento Responsabilidad se puede expresar así: ),
                        %Q(*Ernesto B., consultor de recursos humanos:* "Yo era un joven gerente de una sucursal de un banco cuando el presidente de la compañía decidió que deseaba ejecutar una hipoteca. Yo le dije: 'Está bien, pero tenemos la responsabilidad de reconocerles a esas personas el valor total de su propiedad'. Él no lo veía de esa manera. Quería vender el inmueble a un amigo por el valor de la deuda y me dijo que mi problema era que no podía separar mi ética personal de la ética del trabajo. Le dije que estaba en lo cierto. No podía porque no creía, y no lo creo aún, que uno pueda tener una doble moral. Entonces renuncié y volví a ganar 5 dólares la hora trabajando como recogedor de basura para el servicio de silvicultura. Como mi esposa y yo estábamos educando dos hijos y apenas nos alcanzaba el dinero, fue una decisión muy difícil. Pero en retrospectiva, en cierta forma no fue difícil. Yo sencillamente no podía trabajar en una organización con esa clase de ética".),
                        %Q(*Karina G., gerente de operaciones:* "El gerente de Suecia me llamó en noviembre y me dijo: 'Karina, quisiera que no me despachara mi inventario antes del 10 de enero'. 'Claro', le dije, 'parece un buen plan'. Informé a mi gente y pensé que tenía todo dispuesto. Sin embargo, el 31 de diciembre, en una pista de esquí donde me hallaba, al consultar mis mensajes para asegurarme de que todo estuviera en orden, vi que ya habían despachado y facturado el pedido. Tuve que llamarlo inmediatamente para informarle lo sucedido. Como es un buen hombre, no me trató groseramente, pero estaba furioso y desilusionado. Yo me sentí muy mal. Una disculpa no era suficiente. Debía reparar el daño. Llamé a nuestro contador desde la cabaña y esa tarde encontramos la forma de poner el valor de ese inventario nuevamente en nuestros libros y retirarlo de los de él. Tardamos casi todo el fin de semana en hacerlo, pero era lo correcto".),
                        %Q(*Noé T., ejecutivo de ventas:* "Solía pensar que había un pedazo de metal en mi mano y un imán en el techo. Siempre que pedían un voluntario, alzaba la mano. He tenido que aprender a manejar eso porque no sólo terminaba sobrecargado sino pensando que todo era mi culpa. Ahora me doy cuenta de que no puedo ser el responsable de todo lo que sucede en el mundo: ése es el oficio de Dios".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Responsabilidad",
                items: [%Q(Esta persona se define a sí misma por su capacidadpara cumplir sus compromisos. Será terriblemente frustrante para ella trabajar con personas que no lo hacen. En la medida de lo posible, trate de evitar ubicarla ensituaciones de equipo con compañeros desganados.),
                        "Se define a sí misma por la calidad de su trabajo.Opondrá resistencia si usted la obliga a acelerar eltrabajo en detrimento de la calidad. No le agrada sacrificar la calidad en aras de la velocidad.",
                        "Al hablar de su trabajo, refiérase primero a la calidaddel mismo.",
                        "Reconozca que es persona de iniciativa y requiere poca supervisión para garantizar que termine las tareas asignadas.",
                        "Ubique a esta persona en cargos que requieran una ética incuestionable. No lo(a) defraudará.",
                        "Pregúntele periódicamente cuál responsabilidad nueva querría asumir. Ofrecerse como voluntaria es fuente de motivación para ella, de modo que bríndele la oportunidad.",
                        %Q(Protéjala contra el exceso de responsabilidades, especialmente si carece del talento Disciplina. Ayúdela a ver que una carga de más la obligará a "soltar la pelota", noción que sencillamente detesta.),
                        "Es probable que lo(a) impresione por su capacidadde cumplir una y otra vez. Usted podrá quedar tanimpresionado(a) que querrá ascender a esta persona aun cargo de gerencia. Tenga cuidado. Es bastante probable que desee hacer las cosas ella misma en lugarde tener que responder por lo que hagan los demás,en cuyo caso la gerencia será frustrante. Ante esa situación, ayúdela a encontrar otros caminos para crecer."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Responsabilidad",
                items_confianza: ["Ud. puede ser la conciencia moral para los demás. Cuando una persona o una organización se involucra en algo que no parece estar bien, una alarma sonará en su cabeza y Ud. sentirá que tiene que hacer algo al respecto. Vaya primero a la fuente. Haga preguntas para asegurarse que conoce las causas. Manifieste sus preocupaciones de manera honesta. Cada vez que sea posible – y ético – permita que la persona responsable por la situación no deseada corrija ella misma el problema. Solamente si fuera necesario, involúcrese para corregir Ud. mismo y aplacar su conciencia.  ",
                                  "Es importante que Ud. aprecie y reconozca a la gente que tiene una gran moral e integridad. Asegúrese de confirmarlos en público cada vez que sea posible, lo más frecuentemente posible (mucho más seguido que lo que Ud. se encarga de hacer notar lo que no está bien). Las personas lo notarán y lo respetarán aún más por este tipo de gestos."],
                items_empatia: ["Ud. no puede evitar sentirse responsable por otros, especialmente por aquellos a quienes Ud. aprecia. Revise lo más frecuentemente cómo andan, en qué puede ayudarles, qué necesitan. Muestre su empatía cada vez que pueda. Sepa que estará agregando calidez a sus vidas.",
                                "Cuando cometa un error que perjudique a otros, diríjase a esa(s) persona(s) lo más rápidamente posible y enmiende su equivocación. Pida disculpas, pero recuerde que eso solo no es suficiente. Arregle la situación. Hágase dueño de sus errores en cualquier tipo de relación y verá cómo será perdonado mucho más fácilmente. En el ámbito de su vida personal, esto le permitirá restaurar la confianza y la intimidad mucho más rápidamente también."],
                items_estabilidad: ["Su sentido de la responsabilidad naturalmente crea una sensación de seguridad en los demás. Ellos saben que pueden confiar en que las cosas se harán bien y a tiempo cada vez que Ud. tenga algo que ver con eso. En lugar de acaparar todo esa responsabilidad, comparta parte de ella con los demás miembros del grupo, ya que al hacerlo estará generando un balance y por consiguiente, más estabilidad para el grupo.",
                                    "Ud. es un líder a quien le gusta el servicio. El concepto de servicio normalmente tiene que ver con clientes, colegas, jefes y/o accionistas, pero rara vez se lo conecta con sus subordinados. Hágales saber a sus colaboradores que su deseo es asistir y apoyarlos en todo lo que sea posible. Cuénteles que cada vez que ellos requieran de su ayuda será también una forma de reconocimiento para Ud."],
                items_esperanza: ["Ud. se hace dueño de los proyectos en los que se involucra de manera natural. Asegúrese que su capacidad para llevar adelante esos proyectos no impida compartir la responsabilidad con otros. Permita que los demás experimenten los desafíos propios de liderar un proyecto. Recuerde que cuando Ud. permite que otros estén al frente de una tarea, contribuye a que ellos crezcan e incorporen nuevas herramientas",
                                  "La sensación de sentirse dueño de algo está relacionada con tomar decisiones. Muchas veces, en lugar de asignar responsabilidades, permita que otros tomen todas las decisiones que sean necesarias en pos de que ellos se sientan dueños de lo que gestionan. Deje que entiendan a la responsabilidad como algo que va mucho más allá de aceptar una instrucción o una orden."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
              talento: "Responsabilidad",
              items: ["Enfatice su sentido de la responsabilidad cuando busque una nueva tarea. Durante las reuniones, describa su deseo de tener toda la responsabilidad posible por el éxito o fracaso de los nuevos proyectos. Encárguese de mostrar su incomodidad frente a las cuestiones inconclusas y a la falta de calidad.",
                      "No tema responsabilizarse por nuevas tareas, incluso si siente que no cuenta con toda la experiencia necesaria. Ud. se destaca gracias a su talento Responsabilidad y puede lidiar con ella muy efectivamente.",
                      "Trabaje con quienes comparten su talento Responsabilidad. Ud. se destacará aún más cuando comparta con ellos su gusto por dejar todo terminado.",
                      "Coméntele a su jefe o superior, que Ud. trabaja mejor cuando deja que Ud. decida los caminos a seguir. No será necesario que Ud. reciba un seguimiento por parte de él. Cuando Ud. forma parte de un proyecto, lo único que hay que revisar es la fecha de finalización, ya que los resultados están garantizados de antemano.",
                      " Atrévase a decir no. Debido a su responsabilidad instintiva, es probable que tenga dificultades a la hora de recibir una propuesta para involucrarse en más responsabilidades. Por esta razón, debe aprender a ser más selectivo. Solicite más responsabilidades solamente en aquellas oportunidades donde Ud. sienta que disfrutará del proceso y no renegará por haber aceptado.",
                      "Ud. toma posesión de los proyectos en los que se involucra de manera natural. Asegúrese que su capacidad para llevar adelante esos proyectos no impida compartir la responsabilidad con otros. Permita que los demás experimenten los desafíos propios de liderar un proyecto. Recuerde que al dejarlo, Ud. contribuye a que ellos crezcan e incorporen nuevas herramientas.",
                      "Aprenda a administrar su talento Responsabilidad aprendiendo a discernir si Ud. es quien debe resolver un determinado asunto o no. Intente desviar responsabilidades adicionales, ya que estas podrían terminar deteriorando la calidad con la que Ud. normalmente realiza sus tareas.",
                      "Asóciese con personas que posean los talentos Enfoque o Disciplina. Ellos le ayudarán a mantenerse libre de cargas adicionales.",
                      "Trabajar con alguien que piense como Ud. es algo que encuentra sumamente placentero. De cualquier manera, asegúrese de aclarar las expectativas que cada uno tiene de antemano, así como las fronteras donde cada uno se sentirá cómodo con respecto a la pertenencia de las tareas y/o proyectos que cada uno encare. No espere que haya interferencias o malos entendidos para aclarar esto. Anticípese.",
                      "A la gente responsable le gusta saber si han trabajado de acuerdo a las expectativas de los demás. Configure una serie de indicadores para poder ir midiendo el proceso, además de los resultados de sus proyectos. Esto también le ayudará como mecanismo de control de calidad, en función de las expectativas que también haya al respecto."]
              }
          }
        ]}).to_json},
      {nombre: "Restauración", dominio_id: 1, libro: "Las 5 disfunciones de un equipo, Patrick Lencioni", pelicula: "DRIVING MISS DAISY", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Restauración**",
                texto: [%Q(A usted le encanta resolver problemas. Mientras que algunas personas se desalientan cuando enfrentan un contratiempo, a usted esa situación le estimula. Le entusiasma el desafío de analizar los síntomas, identificar lo que está mal y encontrar la solución. Estos problemas pueden ser prácticos, conceptuales, o personales, problemas concretos que ya haya enfrentado varias veces y en los que usted tiene confianza que puede resolver, o tal vez se apasione cuando se enfrenta a problemas complejos y desconocidos. Sea cual sea el problema, su preferencia estará determinada por sus otros talentos y experiencias. Aun así, lo cierto es que disfruta haciendo que las cosas vuelvan a cobrar vida. Para usted es un sentimiento maravilloso identificar los factores adversos, erradicarlos y así restaurar las cosas y volver a llevarlas al triunfo. Intuitivamente, usted sabe que sin su intervención, éstas, llámense máquinas, compañías o personas, probablemente hubieran dejado de funcionar. Usted las compuso, les dio nueva vida y/o las rehabilitó; en otras palabras: las salvó.),
                        %Q(El talento Restauración se puede expresar así: ),
                        %Q(*Noé L., diseñador de software:* "Tengo recuerdos vividos de mi infancia cuando trabajaba con martillos, clavos y madera en mi banco de carpintero. Me encantaba arreglar lo que se dañaba, armar las cosas, y dejar todo en perfectas condiciones. Y ahora sucede lo mismo con los programas de computación. Escribo el programa y si no funciona debo volver al principio, rehacerlo y arreglarlo hasta que funcione".),
                        %Q(*Juan Carlos S., médico internista:* "Este talento se manifiesta en mi vida de muchas maneras. Por ejemplo, mi primer amor fue la cirugía. Me encanta el trauma, me encanta estar en el quirófano, me encanta suturar. Sencillamente adoro la sensación de "reparar" en la sala de cirugía. Y otros de mis momentos maravillosos han sido estar al lado de un paciente moribundo, sólo conversando. Es enorme la satisfacción que se siente al ver que alguien hace la transición de la ira a la aceptación del sufrimiento, se pone en paz con su familia y muere dignamente. Y cuando estoy con mis hijos, este talento opera a diario. Cuando veo a mi hija de tres años abotonarse por primera vez el suéter, siento la necesidad de arreglar lo que le ha quedado torcido. Pero naturalmente hago un esfuerzo por abstenerme porque ella tiene que aprender, aunque, caramba, es difícil".),
                        %Q(*María T., productora de televisión:* "Producir un programa matinal para la televisión es un proceso de suyo complicado. Si no me agradara resolver problemas, este trabajo ya me habría enloquecido. Todos los días algo serio sale mal y tengo que hallar el problema, arreglarlo, y pasar al siguiente. Cuando lo hago bien, me siento rejuvenecida. Pero si me voy a casa sin haber resuelto el problema, la sensación es completamente opuesta. Me siento derrotada".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Restauración",
                items: ["Solicite a esta persona sus observaciones cuando desee identificar un problema dentro de su organización. Es bastante perspicaz.",
                        "Ubíquela en un rol en el que le paguen por resolver los problemas de sus mejores clientes. Disfruta el desafío de descubrir y eliminar los obstáculos. ",
                        "Recurra a ella cuando necesite mejorar inmediatamente una determinada situación dentro de su organización. No entrará en pánico sino que reaccionará de manera centrada y profesional. ",
                        "Cerciórese de celebrar su éxito al resolver un problema. Toda situación enderezada es un éxito para ella y necesitará que usted lo vea como tal. Demuéstrele que los demás han llegado a depender de su destreza para desmontar los obstáculos y seguir adelante. ",
                        "Bríndele su apoyo cuando enfrente un problema especialmente espinoso. Puesto que se define a sí misma por su capacidad para enfrentar las cosas, podría sentirse derrotada personalmente si la situación no se resuelve. Ayúdela en esa circunstancia.",
                        "Pregúntele cómo querría mejorar. Convengan en que esas mejorías sean metas para los próximos seis meses. Ella apreciará esta clase de atención."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Restauración",
                items_confianza: ["La gente confía en Ud. porque es capaz de arreglar líos y restablecer el orden. También es capaz de restablecer la integridad en los sistemas de trabajo para asegurar que sus colaboradores puedan desempeñarse correctamente. Hágales saber que Ud. está dispuesto a intervenir cuantas veces sea necesario, ya que Ud. lo considera algo clave en su trabajo. Cada vez que Ud. se muestre disponible, ellos confirmarán la idea de que pueden confiar en Ud.",
                                  "Ud. se siente atraído por aquellas situaciones que muchas personas denominarían “imposibles”. Explíqueles a los demás que cuando las probabilidades parecen estar más en contra que nunca, Ud. más se motiva y mejor responde. Ellos respetarán su intensidad a la hora de encarar trabajos difíciles y aprenderán a descansar en la confianza que Ud. transmite."],
                items_empatia: ["La gente aprecia su voluntad para encarar problemas de difícil resolución. Su deseo de acomodar todo lo más rápido posible es una señal firme de que a Ud. le importa. Intente resolver la mayor cantidad de problemas, incluso antes de que la gente se dé cuenta, aunque tenga que contarles una vez que lo hizo. Eso será una clara muestra de su compromiso.",
                                "Es probable que los momentos donde Ud. sea más necesario para su equipo sean aquellos en los que la gente se siente decaída. Parte de su talento Restauración está asociada a su capacidad para dar aliento y asistir rápidamente. Si ellos están pasando por una crisis, como puede ser la pérdida de un ser querido o la enfermedad de un familiar, siempre recordarán los momentos en los que Ud. se mostró cercano y atento a sus necesidades emocionales."],
                items_estabilidad: ["Ud. tiene una inclinación natural por revertir situaciones no deseadas y transformarlas lo más rápidamente posible. Use su talento Restauración para diseñar planes de ataque que sirvan para revitalizar proyectos, organizaciones, negocios o equipos que flaqueen. Los demás se sentirán tranquilos sabiendo que Ud. está a cargo.",
                                    "Use su talento Restauración para pensar en nuevas formas de confeccionar planes, cronogramas y esfuerzos “a prueba de problemas”. Cuando su equipo sepa que Ud. ya analizó todos los detalles y variables que podrían fallar y actuó en consecuencia, ellos podrán relajarse y continuar con sus tareas habituales."],
                items_esperanza: ["Use su talento Restauración para ser aquella persona que se pregunta “¿Cómo hacemos para mejorar sustancialmente esta situación?”. Ud. es de los que piensa que algo nunca está completamente listo cuando hay lugar para las mejoras. Sea el instigador y también la inspiración para llevar las cosas a niveles de desempeño y calidad nunca antes alcanzados.",
                                  "Asegúrese que sus colaboradores no piensan que lo único que Ud. ve son errores e imperfecciones. Aprecie el esfuerzo de las personas, independientemente de la idea que ellos tengan acerca de sus estándares de calidad. Refuerce cada iniciativa por parte de ellos para realizar alguna tarea orientada a mejora e incentive el deseo de ellos por alcanzar la excelencia."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Restauración",
                items: ["Busque roles en los cuales le paguen por resolver problemas o en los cuales su éxito dependa de su habilidad para resolver o restaurar. Puede que disfrute especialmente de la medicina, consultoría, programación, o atención al cliente.",
                        "No tema que los demás sepan que Ud. disfruta al resolver problemas. Para Ud. es natural, pero mucha gente rehúye de los problemas. Ud. puede ayudarlos.",
                        "Dese un respiro. Su talento Restauración puede llevarlo a ser demasiado autocrítico. Trate de redirigir esto hacia aspectos en Ud. que pueden ser resueltos, como déficits en los conocimientos o habilidades, o hacia problemas externos que sean tangibles.",
                        "Deje que los demás resuelvan sus propios problemas. Puede querer meterse y resolver cosas por ellos, pero al hacerlo, puede dificultar su aprendizaje. Preste atención a esto, sobre todo si está en una posición de gerente, mentor, maestro o padre.",
                        "Las situaciones de cambio activan su fortaleza natural. Use su poder Restauración para diseñar un plan de ataque para revitalizar un proyecto, empresa, negocio o equipo decaído.",
                        "Aproveche su talento Restauración no solo para lidiar con problemas existentes, sino también para anticiparse y prevenirlos antes de que ocurran. Comparte sus recaudos y sus soluciones con los otros, y demostrará que Ud. es un socio valioso.",
                        "Estudie detalladamente su materia elegida para volverse capaz de identificar las causas de los problemas que se repiten. Esta habilidad le permitirá llegar a la solución rápidamente.",
                        "Piense en modos de mejorar sus habilidades y conocimientos. Identifique los vacíos que tiene y las acciones para mejorarlos.",
                        "La mejora continua es uno de sus sellos. Busque oportunidades para mejorar sus habilidades en un campo, actividad o esfuerzo demandante, que requiera habilidades y/o conocimientos excepcionales.",
                        "Use su talento Restauración para pensar modos de hacer su trabajo a “prueba de problemas”. Identifique cuestiones existentes o potenciales y diseñe sistemas o procesos para evitar errores en el futuro."]
              }
          }
        ]}).to_json},
      {nombre: "Impulso", dominio_id: 2, libro: "El sentido de urgencia, John P. Kotter", pelicula: "THERE WILL BE BLOOD", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Impulso**",
                texto: [%Q("¿Cuándo podemos empezar?". Ésta es una pregunta recurrente en su vida. Usted siempre está impaciente por actuar. Tal vez llegue a aceptar que el análisis tiene su utilidad o que el debate y la discusión algunas veces pueden aportar algunas ideas valiosas, pero, dentro de su ser, sabe que sólo la acción es real. Sólo la acción puede hacer que las cosas sucedan y sólo la acción conduce a los resultados. Una vez que se ha tomado una decisión, usted no puede dejar de actuar. Es posible que otros se preocupen y piensen: "Todavía hay algunas cosas que no sabemos", pero esto no le retrasa. De hecho, en su opinión, la acción y el pensamiento no se oponen, sino que, guiado(a) por su talento de Impulso, considera que la acción es el mejor recurso de aprendizaje. Usted toma una decisión, la emprende, observa el resultado y aprende. Ese aprendizaje significativo le guiará en todas sus acciones subsecuentes. ¿Cómo puede crecer si no tiene algo ante lo cual reaccionar? A su juicio, usted no puede. A pesar del riesgo debe continuar en acción y dar los siguientes pasos. ¿De qué otra forma podría mantener su mente ágil e informada? El resultado final es que usted sabe que será juzgado no por lo que diga, o piense, sino por lo que haga, y esto no le asusta, le complace.),
                        %Q(El talento de Impulso se puede expresar así: ),
                        %Q(*Margarita C, monja benedictina:* "Cuando era superiora en los años 70, se produjo la crisis energética y los precios llegaron a niveles exorbitantes. Nosotras poseíamos 57 hectáreas y yo las recorría a diario pensando en lo que podíamos hacer ante la escasez de energía. Súbitamente pensé que si teníamos tanta tierra debíamos operar nuestro propio pozo de gas, y así lo hicimos. Invertirnos 100 000 dólares en la perforación. Si usted jamás ha perforado un pozo de gas, quizás no sabe lo que yo tampoco sabía: que se deben gastar 70 000 dólares sólo para ver si hay o no gas en la propiedad. Los operarios bajaron una especie de cámara vibratoria y me dijeron que sí había un depósito de gas pero no sabían cuán grande era y tampoco si había presión suficiente para subirlo a la superficie. 'Si paga otros 30 000 dólares trataremos de poner a producir el pozo', dijeron. 'Si no lo desea, lo tapamos, y nos vamos con nuestros 70 000 dólares en el bolsillo'. Entonces pagué los últimos 30 000 dólares y, por fortuna, el gas salió. Eso fue hace veinte años y todavía produce".),
                        %Q(*Jaime L., empresario:* "Algunas personas interpretan mi impaciencia como una defensa para no ver las trampas y los posibles tropiezos. Lo que les repito una y otra vez es: 'Quiero saber cuándo he de golpearme contra el muro y cuánto me va a doler. Pero si decido estrellarme de todas maneras, entonces no se preocupen, ustedes habrán cumplido con su parte. Yo sencillamente necesito vivir la experiencia'".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Impulso",
                items: ["Pregunte a esta persona cuáles deben ser las metas o las mejoras que debe lograr su división. Escoja un área que concuerde con su talento y entréguele la responsabilidad de iniciar y organizar el proyecto. ",
                        "Hágale saber que usted sabe que es una persona que puede lograr que las cosas sucedan y que le solicitará ayuda en momentos cruciales. Estas expectativas suyas la llenarán de energía.",
                        "Asígnela a trabajar en un equipo que se encuentre empantanado y en donde la gente hable mucho y trabaje poco. Esta persona pondrá al equipo en movimiento. ",
                        "Cuando esta persona se queje, escúchela atentamente porque seguramente aprenderá algo. Después, gánesela hablando de iniciativas nuevas que podrá liderar o mejoras nuevas que podrá poner en marcha al día siguiente. Hágalo rápidamente, porque esta persona, molesta, puede crear mucha negatividad cuando se sale de cauce.",
                        "Estudie sus demás Talentos Dominantes. Si tiene mucho talento Mando, podrá tener el potencial de vender y convencer eficazmente. Si también tiene un fuerte talento Relación o Carisma, podrá servirle para reclutar personal, atrayendo a los candidatos para luego presionarlos a comprometerse. ",
                        "Para evitar que tropiece con demasiados obstáculos, póngala a trabajar con personas con talento Estrategia o Análisis. Ellas podrán ayudarla a mirar más lejos. Sin embargo, quizás tenga que interceder por ella en esas alianzas para que los otros no sofoquen su instinto de actuar con su deseo de proyectar y analizar."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Impulso",
                items_confianza: ["Ud. es pura acción. Demuéstreles a los demás que sus ideales y principios van más allá de las palabras. Haga cosas que promuevan los valores que Ud. defiende. Demuestre integridad. Haga que sus actos sean un fiel reflejo de sus palabras.",
                                  "La acción por la acción misma no tiene sentido. Atender a los deseos de los demás es una excelente forma de mostrarles respeto. Intente hacerles sentir a los demás que Ud. está de su lado, que sus planes y los de ellos son igualmente importantes. De esa manera conseguirá la confianza necesaria para poder llevar esos planes a la acción."],
                items_empatia: ["El caudal de oportunidades para entrar en acción que provee su talento hará que Ud. entable muchas relaciones nuevas. Intente fortalecerlas y profundice los vínculos entre las personas de su red, incluso hasta formar amistades duraderas.",
                                "No todas las acciones en su vida su para Ud. Muchas veces Ud. lo hace para otros o en nombre de otros, mostrando de esta manera compromiso y demostrando que Ud. puede ser una persona desinteresada, capaz de entender las necesidades de los demás"],
                items_estabilidad: ["Impulso y estabilidad pueden ser dos ideas que no se unen naturalmente. Su misión, en este caso, será ser consistente en sus acciones, ya que la consistencia lleva a la estabilidad. Además, en muchos casos, para lograr estabilidad hay que solucionar problemas, superar cuellos de botella, tomar decisiones difíciles, acciones donde su talento Impulso se destaca frecuentemente.",
                                    "Otra fuente de estabilidad que Ud. puede ofrecer es su coraje a la hora de encarar una tarea. Cuando otros dudan entre actuar o no, Ud. ya está avanzado en esa tarea. Esa decisión siempre transmitirá confianza y dará sensación de estabilidad a otros."],
                items_esperanza: ["Ayude a otros a perderle el miedo al fracaso. Su habilidad para transmitir optimismo al comenzar una nueva tarea será, en gran parte, la responsable por los buenos resultados obtenidos.",
                                  "En otros casos, las personas simplemente necesitarán de su energía para decidirse a comenzar algo. Eso es parte de la sensación de esperanza en que lo pueden lograr que Ud. les transmitirá. ¿Cómo lo hará? Simple. Ud. les mostrará el camino paso a paso y de esa manera, eliminará la idea de que la tarea es intimidante, ya que su talento Impulso le ayudará a desmenuzarla y presentarla como una sucesión de pequeños pasos a dar."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            talento: "Impulso",
            items: ["Busque empleos u ocupaciones donde Ud. pueda tomar sus propias decisiones y actuar en consecuencia. Si es posible, busque proyectos nuevos o reestructuraciones.",
                    "En su empleo, asegúrese que sus superiores puedan evaluar sus resultados, más allá del proceso para conseguirlos. En muchos casos, ese proceso puede no ser muy atractivo.",
                    "Ud. tiene la capacidad de transformar ideas en acción en forma casi inmediata. Júntese con pensadores creativos y ayúdelos a transformar esas ideas en algo concreto.",
                    "Busque áreas bloqueadas por discusiones o barreras. Termine con el bloqueo creando un plan que ponga a todos en movimiento.",
                    "Ud. aprende mucho más de las experiencias que de las discusiones teóricas. Para su crecimiento, busque experiencias que pongan a prueba sus habilidades y conocimiento.",
                    "Recuerde que su tenacidad, a veces, puede ser intimidante para otros. Su talento de Impulso será más eficaz cuando consiga la confianza de otros primero.",
                    "Identifique aquellos que toman las decisiones más importantes en su organización. Encuentre formas de interactuar con ellos y conseguir el apoyo y los recursos necesarios para poner su Impulso en acción.",
                    "Ud. puede encender las ideas y planes de otros con facilidad. Considere formar alianzas con gente analítica y planificadora. Ellos pueden darle estructura a su energía por la acción y de esa manera generar consenso para sumar a otros a sus planes.",
                    "No olvide nunca explicar las razones detrás de su ímpetu por actuar inmediatamente, ya que de lo contrario, sus “urgencias” pueden ser interpretadas como mera ansiedad.",
                    "Ud. tiene la capacidad de influenciar a otros hacia la acción. Regule este impulso y guárdelo para aquellas situaciones donde esa influencia es imprescindible."]
          }
       ]}).to_json},
      {nombre: "Mando", dominio_id: 2, libro: "Winning, Jack Welch , Suzy Welch", pelicula: "THE GODFATHER", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Mando**",
                texto: [ %Q(Si su talento es Mando, usted se hace cargo de las cosas. A diferencia de los demás, a usted no le mortifica imponer sus opiniones sobre los otros; por el contrario, una vez que tiene una opinión, le es indispensable comunicarla. Al fijar una meta, no descansa hasta tener a la gen-te comprometida con ella. No teme el enfrentamiento; por el contrario, usted sabe que el enfrentamiento es el primer paso para llegar a un acuerdo. Mientras otros evitan hablar de las situaciones desagradables, usted siente la necesidad imperiosa de presentar los "hechos" y la "verdad", sin importar cuán desagradables sean éstos. Necesita que las cosas estén claras entre las personas, por lo cual les exige que sean honestas y directas. Con su talento Mando, usted impulsa a otros a tomar riesgos, y podría incluso intimidarlos. Si bien algunos se ofenden por sus acciones, y le califican de obstinado(a), a menudo le entregarán voluntariamente las riendas. La gente se siente atraída por quienes adoptan una postura firme, toman una dirección y hacen que lo(a) s sigan. Por esta razón muchos irán hacia usted. Usted tiene presencia, tiene Mando. ),
                         %Q(El talento Mando se puede expresar así:),
                         %Q(*Mauricio M., gerente hotelero:* "Una razón por la cual influyo en la gente es porque soy muy franco. En realidad, la gente dice sentir que la intimido en un principio. Después de un año de trabajar con la persona, hablamos de eso a veces. 'Caray, Mauricio, cuando comencé a trabajar aquí vivía muerto de miedo'. Cuando pregunto la razón, dice: 'Nunca había trabajado con alguien que dijera las cosas tan francamente. Lo que fuera, lo que tuviera que decirse, usted sencillamente lo decía'".),
                         %Q(*Ricardo P., ejecutivo de almacén minorista.* "Nosotros tenemos un programa de bienestar que paga 25 dólares semanales a la persona que consuma menos de cuatro bebidas alcohólicas a la semana; si la persona no fuma, recibe 25 dólares al mes. Un día me enteré de que el gerente de uno de nuestros almacenes estaba fumando nuevamente, lo cual no era bueno. Fumaba en el almacén, dando mal ejemplo a los empleados, y aun así cobraba los 25 dólares. No puedo tolerar cosas como ésas. No fue fácil, pero le hablé directa y francamente: 'O deja de hacer eso o lo despido'. El hombre es buena persona, pero uno no puede dejar pasar esas cosas". ),
                         %Q(*Diana N., trabajadora de un asilo de ancianos:* "No me considero firme, pero sí me hago cargo de las cosas. Cuando uno entra a una habitación donde están un moribundo y su familia, es necesario hacerse cargo. Ellos quieren que así sea. Están aturdidos, un poco atemorizados, sin poder aceptarlo. Básicamente están confundidos. Necesitan que alguien les diga lo que va a suceder, lo que deben esperar; que aunque no será agradable, estará bien en muchos sentidos. No quieren compasión ni lástima. Desean claridad y sinceridad y eso es lo que les ofrezco".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Mando",
                items: ["Cuando necesite echar a andar un proyecto y poner las cosas en movimiento, o cuando tenga que convencer a la gente, pida a esta persona que asuma el mando.",
                        "Solicítele que evalúe lo que está sucediendo en la organización, pues lo más seguro es que reciba una respuesta franca. En este mismo orden de ideas, recurra a ella en busca de ideas diferentes de las suyas. No es la clase de personas que siempre asiente.",
                        "En la medida de lo posible, bríndele espacio para liderar y tomar decisiones. No le agradará una supervisión muy estrecha.",
                        "Si comienza a construir imperios, a perturbar a los colegas, a apartarse del camino o a olvidar sus compromisos, confróntela directamente. Confróntela con detalles concretos. Tome medidas firmes y, si es necesario, exija restitución inmediata. Después haga lo necesario para que comience a ser productiva lo antes posible. Es persona que superará su falta rápidamente y lo mismo debe hacer usted.",
                        "Jamás amenace a esta persona a menos que esté totalmente seguro de llegar hasta las últimas consecuencias.",
                        "Esta persona puede intimidar a los demás con su estilo directo y firme. Usted tendrá que sopesar si la contribución de esta persona a la realización del trabajo justifica los malestares ocasionales. En lugar de obligarla a desarrollar empatía y amabilidad, le será más útil usar ese tiempo para ayudar a los colegas a comprender que la firmeza de esta persona es uno de los ingredientes de su eficacia, siempre y cuando continúe siendo firme en lugar de agresiva u ofensiva."]

              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Mando",
                items_confianza: ["Ud. es conocido por decir lo que piensa, por lo que los demás confían en que Ud. se toma las cosas en serio. Ellos saben que Ud. no cambia su discurso fácilmente y que suele mantener lo que promete. Esta forma de ser directa, sin sorpresas, es una base para construir confianza y esa confianza construye relaciones.",
                                  "Revise siempre la coherencia entre los valores que Ud. predica y sus actos. ¿Son consistentes? ¿Demuestran integridad? Tome nota de los valores que son más importantes para Ud. ¿Recuerda algún ejemplo reciente de algo que haya hecho que confirme esos valores y la integridad de sus creencias? Revise siempre que Ud. predica con el ejemplo y eso asegurará el voto de confianza necesario para liderar a los demás."],
                items_empatia: ["Ud. siente con intensidad y es capaz de expresar mucha emotividad. Hágalo de manera natural. Dígale a las personas lo que siente y lo importantes que son ellos para Ud. Hable acerca de esa conexión que Ud. tiene con otros y de la que ellos, quizás por ser muy reservados, no se animan a hablar. Sus palabras servirán en muchas ocasiones para que ellos confirmen que el sentimiento es mutuo. Incluso, si no fuese mutuo, Ud. estaría dando un gran paso adelante hacia una oportunidad para generar algo significativo. Muchas veces, una expresión de afecto o atención puede ser un gran paso hacia la construcción de un vínculo fuerte entre Ud. y sus seguidores.",
                                "Use palabras firmes. Exprese sus sentimientos para formar vínculos con aquellos que valoren las cosas en las que Ud. cree y por las cuales se juega. A menudo, muchas relaciones significativas se forman a partir de valores compartidos, por lo que comentar en voz alta cuáles son los valores que hacen que su vida tenga sentido puede ser una gran manera de que otros lo vean a Ud. como un amigo potencial o, incluso como un campeón.",
                                "En ciertas ocasiones, las personas con fuerte talento Mando son percibidas como alguien impenetrable, como si tuviera una coraza de acero. Los demás se sentirán vulnerables y lo verán a Ud. como invulnerable. Sin embargo, las buenas relaciones se construyen a partir de vulnerabilidades mutuas. Comparta sus preocupaciones y molestias. Dejar que otros vean su lado más blando los empoderará y será visto como una muestra de confianza"],
                items_estabilidad: ["La gente sabe dónde Ud. está parado. La seguridad que transmite el hecho de que Ud. está firme en sus convicciones le permite a las personas sentirse más seguras y confiadas. Esto hace que ellos sientan, al mismo tiempo, que Ud. estará siempre ahí por ellos en caso de que lo necesiten y que siempre se aferrará a sus creencias para superar cualquier dificultad.",
                                    "Muchas personas acuden a Ud. en busca de cierta fortaleza que no encuentra en ningún otro lugar. En algunos casos, en busca del coraje que no tienen y en otros, en busca de un vocero que los represente. Cuando el coraje de esas personas flaquea, ellos intentan “tomar prestado” del suyo. Sea consciente de esta carencia que otros pueden sufrir y pregúnteles si prefieren que Ud. los defienda o simplemente los acompañe en aquello que representa una dificultad. Cada vez que Ud. toma las riendas, su actitud transmite a los otros serenidad en momentos de crisis. En esos momentos donde se enfrente a un desafío complejo, use su talento Mando para dar por tierra los temores y convencer a los demás de que Ud. tiene las cosas bajo control."],
                items_esperanza: ["La gente sabe que Ud. es honesto y directo. Por tal motivo, las personas lo buscarán cada vez que necesiten escuchar la “cruda verdad” acerca de un tema o preocupación que puedan tener en ese momento. Es probable que ellos pidan ayuda a otros, pero cada vez que necesiten una palabra honesta, sin filtros, acudirán a Ud. inmediatamente. Por esta razón, no esquive esas situaciones. Profundice. Pregúnteles cómo es que ellos ven la situación y muéstreles el otro lado de las mismas cosas que ellos ven. Confirme con ellos que quieren escuchar la verdad y cada vez que la respuesta sea sí, dígala en forma cuidadosa, pero directa.",
                                  "La fuerza de sus palabras es inspiradora para mucha gente. Hable acerca de los “porqués” de las tareas, metas u objetivos sin temor a sonar demasiado sentimental. Sus emociones hacen que otros se pongan a la altura de las circunstancias y den el máximo de sus potenciales. Es más, es probable que ellos estén esperando sus palabras para lanzarse a enfrentar una causa por la que estén dispuestos a luchar. Sus palabras siempre serán una inspiración para ellos."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Mando",
                items: ["Ud. siempre estará listo para confrontar. Practique sus palabras, su tono y su manera de transformar esta facilidad para confrontar en influencia estratégica.",
                        "En sus relaciones interpersonales, busque oportunidades para ser claro y directo acerca de temas sensibles. Su capacidad de ser franco y transparente puede despertar confianza en otros. Esfuércese por mostrarse como una persona cándida.",
                        "Pregunte a otros acerca de sus opiniones. A veces, su pasión puede intimidar a los demás, haciendo que otros callen temiendo una mala reacción suya. Esté atento a esto. Si es necesario, exprese su dificultad para no hablar inmediatamente acerca de temas que pueden causar incomodidad.",
                        "Trabaje con alguien que posea los talentos de Carisma o Empatía. Hay obstáculos que no necesariamente deben ser confrontados. Estas personas son ideales para enseñarle cómo saber cuándo confrontar  y cuándo evitar.",
                        "Su actitud de hacerse cargo de las cosas puede ser sumamente útil para otros en casos de crisis. Su talento de Mando en una situación difícil servirá para que otros sientan menos miedo y continúen con sus tareas.",
                        " Su talento de Mando hará que algunas veces Ud. pelee por tener las riendas. Recuerde que en algunos casos Ud. no tiene que estar al frente de algo para que los demás lo perciban como alguien con facilidad para liderar.",
                        "Adelántese y destrabe cuellos de botellas. Los demás cuentan con su decisión para avanzar y tener éxitos gracias al empuje que Ud. logra en ellos en esos momentos de dificultad.",
                        "Piensa en la posibilidad de liderar grupos (comités, asambleas, etc.). Ud. tiene muchas ideas acerca de cómo le gustaría que fueran ciertas cosas y ese tipo de ámbitos son ideales para que Ud. consiga los seguidores necesarios para hacer que esas cosas pasen. Además, es probable que Ud. se sienta cómodo alentando nuevas iniciativas.",
                        "Busque cargos o roles donde sea necesario persuadir a otros. Cualquier actividad comercial puede ser un lugar propicio para Ud.",
                        "Encuentre una causa en la que Ud. crea y apóyela. Es probable que una buena causa saca lo mejor de su talento de Mando."]
              }
          }
       ]}).to_json},
      {nombre: "Comunicación", dominio_id: 2, libro: "El mago de los millonarios, Steve Cohen", pelicula: "SCENT OF A WOMAN", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Comunicación**",
                texto: [%Q(A usted le gusta explicar, describir, ser anfitrión, escribir y hablar en público. Así es como se manifiesta su talento Comunicación. Para usted las ideas son insípidas y los eventos son estáticos; por lo tanto, usted tiene la necesidad de darles vida, inyectarlos de energía, hacerlos excitantes y relatarlos gráficamente. Por esto convierte los "sucesos" en historias y disfruta narrándolas. Toma esa "idea" insípida y le da vida con imágenes, ejemplos y metáforas. Usted cree que la mayoría de la gente tiene una capacidad de atención muy corta, es decir, se le bombardea con información, pero sólo recuerda una pequeña parte de la misma. Por su talento Comunicación, desea que su información, ya sea una idea, un suceso, las características y beneficios de un producto, un descubrimiento o una lección, perduren. Desea ser el centro de atención y, una vez lo haya logrado, mantener y retener esta posición. Esto lo(a) motiva a buscar la frase perfecta, a utilizar palabras dramáticas y a buscar la combinación de palabras que tenga mayor impacto. Por esto a la gente le gusta escucharle su relato con frases pictóricas, pues cautiva su atención, enriquece su mundo y la inspira a la acción.),
                        %Q(El talento Comunicación se puede expresar así: ),
                        %Q(*Natalie A., gerente general de un parque de diversiones:* "La mejor forma de comunicar mis mensajes es por medio de historias. Ayer quería demostrarle a mi comité ejecutivo la clase de impacto que podemos tener sobre nuestros visitantes y, para ello, les referí esta historia: una de nuestras empleadas trajo a su padre a la ceremonia de izada de bandera que realizamos aquí en el parque el Día del Veterano. Él fue herido en la Segunda Guerra Mundial y ahora tiene una forma extraña de cáncer y ha tenido que someterse a muchas cirugías. Está muriendo. Al comienzo de la ceremonia, uno de nuestros empleados le dijo al grupo: 'Este señor es veterano de la Segunda Guerra Mundial y pido para él un aplauso'. Todo el mundo lanzó vivas y la hija se echó a llorar. El padre se quitó el sombrero, cosa que no hace jamás por las cicatrices que dejaron las heridas de la guerra y las cirugías para el cáncer. Sin embargo, cuando sonó el himno nacional, se quitó el sombrero e inclinó la cabeza. La hija me dijo más adelante que había sido el mejor día que su padre había tenido en años".),
                        %Q(*Enrique Q., ejecutivo de la banca:* "Mi cliente más reciente pensaba que la corriente de capital que se está invirtiendo en acciones de la Internet es sólo una fase pasajera. Traté de utilizar argumentos racionales para hacerle cambiar de opinión, pero no quiso o no se dejó convencer. Al final, como suelo hacer cuando me encuentro con un cliente que se niega a aceptar las cosas, recurrí a las imágenes. Le dije que era como la persona que está sentada en la playa con la espalda hacia el mar. La Internet era como la marea que crece rápidamente. Por muy cómodo que se sintiera en este momento, la marea estaba subiendo con cada ola y muy pronto una de ellas se rompería encima de él y lo arrastraría. Me entendió perfectamente".),
                        %Q(*Mónica L., directora de marketing:* "Una vez leí un libro sobre oratoria en el cual daban dos sugerencias: hablar siempre de aquello que a uno le apasiona y utilizar siempre ejemplos personales. Yo comencé a aplicar los consejos inmediatamente y fueron muchas las historias a las que pude recurrir porque tengo hijos, nietos y esposo. Construyo las historias alrededor de mis experiencias personales porque todo el mundo comprende a lo que me refiero".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Comunicación",
                items: ["Explore con esta persona la forma de desarrollar sus fortalezas de comunicación para que pueda hacer una contribución todavía más significativa a la organización.",
                        "Le es fácil sostener una conversación. Pídale que asista a reuniones sociales, cenas o cualquier otro evento diseñado para entretener a los clientes o prospectos.",
                        "Pídale que aprenda las anécdotas, las historias de sucesos interesantes dentro de la organización y permítale contar esas historias a los colegas. Esta persona le ayudará a dar vida a la cultura de la organización, fortaleciéndola.",
                        "Dedique tiempo a escucharla sobre su vida y experiencias. Ella disfrutará esas conversaciones y, como consecuencia, la relación entre lo(a) s dos se hará más estrecha.",
                        "Discuta con esta persona sus planes acerca de los eventos sociales de la organización. Seguramente aportará buenas ideas, tanto para el entretenimiento como para lo que se comunicará durante el evento.",
                        "Pídale que ayude a algunos de los especialistas de la organización a hacer exposiciones más cálidas. En algunas situaciones, debe ser esta persona quien haga la exposición en lugar del especialista.",
                        "Si la envía a clases de oratoria, asegúrese de ubicarla en un curso pequeño con estudiantes avanzados y un instructor de alto nivel, porque en un curso para principiantes no tardará en sentir tedio."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Comunicación",
                items_confianza: [%Q(Usted es capaz de usar el lenguaje para "dar vuelta" y manipular. Sin embargo, esto puede ser agotador en el tiempo. Recuerde que, si bien manipular puede ser eficaz en el corto plazo, puede tener un alto un precio emocional. Asegúrese de que sus palabras no sólo son eficaces, sino éticas.),
                                  %Q(Construir respeto mutuo es su responsabilidad. Ayude a las personas a que se aprecien entre sí. Dedique tiempo a "publicitar" lo que realmente hacen bien y en lo que son capaces de contribuir al equipo. Tenga en mente que el elogio genuino anima a la gente, pero la alabanza falsa socava las relaciones y no se toma en serio.),
                                  "Hable de las personas de la misma manera cuando están frente a Ud. que cuando no lo están. La consistencia y el honor de sus palabras transmiten su integridad y es la forma con la que Ud. construye confianza."],
                items_empatia: ["Ud. tiene el poder de capturar las emociones de la gente y poner palabras a lo que sienten. Naturalmente, esto atrae a otros a usted. Así que haga preguntas. Trate de identificar las cuestiones clave de la gente a la hora de comunicarse, lo que las alegrías o las luchas que quieren transmitir. A continuación, dé voz a los sentimientos. Ayudar a las personas a encontrar las palabras para describir los sentimientos es una manera poderosa para llegar a expresar y procesar sus propias emociones.",
                                %Q(El lenguaje es una pista acerca de la cultura de un lugar. En cualquier grupo, desde una familia hasta una empresa, piense en lo que sugieren las palabras que Ud. usa. Algunas palabras transmiten expectativas. ¿Ud. llama a sus reuniones "reuniones de departamento," las reuniones de personal, "reuniones de equipo", “reuniones de calidad"? , ¿Se llevan a cabo en una "sala de conferencias, "sala de descanso”, o en un "centro de aprendizaje"? Ud. formula preguntas de manera positiva para mostrarle a los otros cuánto le importa sus cosas? )],
                items_estabilidad: ["Capture los éxitos de los demás con palabras, preferentemente por escrito. Utilice su talento para encontrar las palabras correctas para elogiar, dar información y tranquilizar. Su apoyo positivo de los logros a los demás servirá para ayudarles a sentirse seguros en sus funciones.",
                                    "Piense en cómo expresar el tiempo. ¿Estamos aquí para el largo plazo? ¿Estamos buscando resultados inmediatos o la construcción de reputación? Dele a la gente el sentido de que el panorama es lo que importa y ellos tendrán la libertad de experimentar un poco para mejorar las cosas para el futuro. Cuando elija sus palabras, considere que la estabilidad es la confianza en la imagen a largo plazo. ",
                                    "Además de ser el portavoz, Ud. puede ser el coleccionista de historias de éxito del equipo al que Ud. lidera. Cree una marca para su grupo sobre la base de los triunfos acumulados. Esta sólida base reforzará la confianza de su grupo para el futuro."],
                items_esperanza: ["En el ámbito organizacional, ofrézcase para ser la persona que escribe cualquier comunicación “de cierre” (minutas, resúmenes, comunicados, anuncios). Después de las reuniones, envíe un resumen por correo electrónico. Capture los puntos clave y subraye las acciones a realizar. Resuma los éxitos. Exprese felicitaciones a quienes han hecho un buen trabajo. Usted puede alentar e inspirar a las actividades y resultados positivos, así como a logros en el futuro.",
                                  "Sus palabras influyen en las impresiones y expectativas que la gente se forma sobre los individuos y grupos. ¿Está Ud. ayudando o perjudicando la imagen de los demás? Cuando usted habla a o por los demás, elija las palabras que inspiren aliento y optimismo.",
                                  "¿Qué términos y expresiones utiliza para ilustrar el futuro? Sus palabras pueden guiar a otros. Tenga en cuenta la dirección en que sus palabras guían a la gente y selecciónelas bien. Esas palabras pueden seguir inspirando a la gente más de lo que Ud. imagina."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Comunicación",
                items: ["Ud. siempre se destacará en aquellos roles que impliquen llamar la atención, ya sea como docente, como representante comercial, como publicista o locutor. Si su empleo no es ninguno de estos, su talento de Comunicación encontrará la manera de aflorar y hacerse notar.",
                        "Intente recolectar historias o frases que tengan que ver con Ud. Recortes de diarios o revistas, fragmentos de canciones o películas, cualquier cosa que le sirva para refinar su capacidad de comunicar ideas, en forma verbal o escrita.",
                        "Cuando realice presentaciones, preste mucha atención a su audiencia. Observe las reacciones a cada segmento de su presentación. Ud. rápidamente notará que ciertas captan la atención de la gente de una manera casi inexplicable. Al finalizar, analice esos momentos y trata de encontrar las razones por las cuales Ud. piensa que eso ocurre. Diseñe su próxima presentación con estas ideas en mente.",
                        "Practique. Si bien la improvisación tiene su encanto, en general las audiencias responden mejor a aquellos que se nota hacia donde se dirigen y pueden darle sentido al desarrollo de la presentación. Contra lo que muchos piensan, cuanto más uno se prepara, más natural uno parece.",
                        "Identifique quiénes son aquellas personas que sacan lo mejor de su talento de Comunicación. Examínelos cuidadosamente e intente descubrir en ellos las cualidades que provocan ese efecto en Ud.",
                        "Sea cuidadoso con sus palabras. Intente refinar su vocabulario, no tanto en términos de sofisticación – puede hacerlo si lo desea - , pero más bien en términos de eficacia. Intente que sus palabras tengan impacto.",
                        "Su talento de Comunicación puede ser aún más efectivo si su mensaje tiene sustancia. No confíe solo en su talento. Revise su discurso en búsqueda de contradicciones o debilidades. Lleve su comunicación a áreas de conocimiento específicas, donde estas hagan una diferencia a su favor.",
                        "Su talento también es útil para otros. Muchas personas lo verán como un modelo a seguir a la hora de expresarse, tanto en público como en privado. Al mismo tiempo, en caso de reuniones, use su talento para resumir las ideas de otros. Esto tiende a crear consenso cuando se pone el acento en las coincidencias, por encima de las diferencias que siempre puedan existir.",
                        "Si disfruta escribir, publique sus trabajos. Si disfruta hablar en público, haga presentaciones. Lo importante es que mantenga su talento de Comunicación activo. La clave es que Ud. disfrute del proceso de compartir sus pensamientos con otras personas, ya sea en forma escrita u oral.",
                        "Si algún amigo o compañero necesita hacer una presentación, no dude en ayudarlo. No solo hará que ambos se sientan bien, sino que puede ser una inesperada forma de aprender otro estilo o una nueva manera de encarar las suyas cuando tenga la oportunidad."]
              }
          }
       ]}).to_json},
      {nombre: "Competitividad", dominio_id: 2, libro: "Las 33 estrategias de la guerra, Robert Greene, Joost Elffers", pelicula: "PIRATES OF SILICON VALLEY", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Competitividad**",
                texto: [%Q(El fundamento del talento de Competitividad es la comparación. Al observar el mundo, de manera natural usted está pendiente del desempeño de los demás. Mide sus resultados a través del puntaje final, y si no supera a sus pares el logro le resultará vacío, ya que no importa cuánto esfuerzo haya invertido, ni el valor de sus intenciones, lo importante es ganar. Al igual que todos los competidores, necesita de otra gente para compararse, porque si puede hacerlo, puede competir, y si puede competir, puede ganar, y si gana... no hay otra sensación que se compare con ello. Le gustan las mediciones porque a través de ellas puede realizar comparaciones: los competidores le estimulan. Disfruta de las competencias porque siempre hay un ganador; en particular siempre prefiere aquéllas que le dan mayor oportunidad de triunfar y con el tiempo evitará las que le den pocas oportunidades para la victoria. Si bien puede mostrar compañerismo o ser incluso estoico en la derrota, en realidad usted no compite por competir, compite para ganar.),
                        %Q(El talento de Competitividad se puede expresar así: ),
                        %Q(*Augusto H. Ejecutivo de ventas:* "He sido deportista toda mi vida y digamos que no juego sólo por esparcimiento. Me gusta participar en los deportes en los que puedo vencer pero no en los que puedo perder porque, cuando pierdo, siento que la ira me consume aunque deba poner buena cara".),
                        %Q(*Ernesto E, gerente general.* "No soy el navegante perfecto, pero me encanta la Copa Americana. Los dos barcos supuestamente deben ser idénticos y las dos tripulaciones están conformadas por deportistas de primera. Pero siempre hay un ganador. Uno de ellos tiene el as en la manga que le permite inclinar la balanza y salir vencedor con mayor frecuencia. Y eso es lo que busco: ese secreto, esa pequeñísima ventaja".),
                        %Q(*Summer Redstone, presidente de Viacom Corporation, refiriéndose a la adquisición de la cadena de televisión CBS:* "Siempre ha sido muy importante para mí ser el número uno. Lo que vi fue que seríamos los primeros en televisión por cable. ¡Los primeros en difusión! ¡Los primeros en publicidad exterior! ¡Los primeros en programación televisada! ¡Los primeros en todo!".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Competitividad",
                items: [%Q(Utilice un lenguaje competitivo con esta persona. Por ejemplo, como esta persona ve el mundo como un sitio donde se gana o se pierde, para ella lograr una meta es ganar, y no lograrla equivale a perder. Cuando deba hacer que participe en la elaboración de un plan o en la resolución de un problema, utilice la expresión de "ganar la partida", la cual denota competencia.),
                        "Compare a esta persona con las demás, especialmente otras tan competitivas como ella. Podría publicar el historial de desempeño de todos sus empleados, pero recuerde que sólo los competitivos gozan con esta clase de comparación pública. Otros podrán resentirse y sentirse mortificados con ella.",
                        "Organice competiciones para esta persona. Póngala a competir contra otros aunque tenga que salir a buscar a los competidores en otras unidades de negocios. Las personas muy competitivas prefieren competir con otras que tienen un nivel de destreza semejante al suyo. No se sentirán motivadas a competir con personas modestas en sus logros.",
                        "Busque ocupaciones en las que esta persona pueda ganar. Si pierde repetidamente podría dejar de competir. Recuerde que en las competiciones que le interesan no participa por el placer de competir. Compite para vencer.",
                        "Piense que una de las mejores formas de dirigir a esta persona es contratando a otra persona competitiva pero más productiva.",
                        %Q("Hable con ella sobre sus talentos. Como todos los competidores, esta persona sabe que se necesita talento para ser un ganador. Enumere sus talentos. Dígale que debe recurrir a ellos para vencer. No le dé a entender a esta persona que el hecho de "ganar" implica un ascenso. Ayúdela a concentrarse en vencer en los campos donde están sus verdaderos talentos. ),
                        "Cuando esta persona pierda, es probable que necesite unos días de duelo. Permita que así sea. Después preséntele rápidamente otra oportunidad para vencer."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Competitividad",
                items_confianza: ["Los tramposos nunca prosperan. Recuerde que ganar a cualquier costo no es ganar: es defraudarse a Ud. mismo. El precio de ganar puede ser mayor al dolor por perder, así que asegúrese que su integridad permanezca intacta cada vez que luche por una victoria difícil de alcanzar.",
                                  "Proteja siempre la confianza que Ud. mismo construyó con otros. Muchas veces Ud. deberá retirarse de situaciones donde su talento Competitividad ponga en juego el respeto que otros tienen por Ud. Hágalo. Dese el respiro necesario para no caer en una reacción emotiva perjudicial para Ud. Cuando lo haga, asegúrese de que los demás no lo noten."],
                items_empatia: ["Los competidores se reconocen mutuamente de manera casi inmediata. Cuando encuentre a alguien que comparta su mismo deseo por ganar, pueden elegir entre competir entre ustedes o crear un equipo ganador. De cualquier manera, cualquier de las dos alternativas sería capaz de crear un vínculo a partir de esa mirada compartida.",
                                "¿Es Ud. capaz de lograr que los demás formen parte de una actividad competitiva todas las semanas? Esta sería una manera de crear una conexión duradera basada en intereses mutuos y una visión compartida acerca de los desafíos que todos afrontamos día a día. Convenza a los competidores y encontrará muchas oportunidades para construir relaciones.",
                                "La competencia, a pesar de los grandes esfuerzos, puede dejar un mal sabor en la boca por días y hasta semanas. Intente rescatar el lado entretenido de las competencias. Ayude a crear vínculos desde lo emocional entre aquellos que compiten, en lugar de fortalecer las barreras que los separan. Recuerde que no todas las personas destinan la misma energía emocional que Ud. a la hora de competir. No olvide recordar que otras personas pueden querer “jugar” por razones muy diferentes a las suyas."],
                items_estabilidad: ["Un equipo ganador promueve la confianza. ¿Cómo puede ayudar a que una persona o un equipo sean los mejores? Acomode a los jugadores en el campo de juego de tal manera que cada uno de ellos pueda aprovechar todas y cada una de sus fortalezas. Esto incrementará las chances de que ellos ganen y se sientan más seguros. Muéstreles a los demás cómo maximizar su desempeño y sacar a relucir todas sus habilidades.",
                                    "Nunca pierda de vista sus objetivos en aquellos momentos donde sienta que está perdiendo una batalla. No olvide que muchas guerras se ganan habiendo perdido innumerables batallas. La vida suele tratarse tanto de velocidad como de resistencia. Deles a sus seguidores tranquilidad al hacerles saber que se trata de un proceso con buenas y malas y no de un fracaso definitivo."],
                items_esperanza: ["Forme campeones. Verbalice su convicción de que los que están cerca suyo puede ser los mejores en lo que hacen. Incluso, es probable que Ud. vea en ellos potencial que ni siquiera ellos mismos saben que poseen. Señale los talentos que Ud. detecta en ellos y enséñeles a transformar esos talentos en fortalezas.",
                                  "¿Cuáles son las cifras o números a superar en su organización? Póngalos a la vista de todos para, de esa manera, transformarlos en un objetivo por el cual trabajar.",
                                  "El número uno es la única posición que a Ud. realmente le interesa. Para ello, limítese a trabajar solamente en las áreas donde Ud. sienta que puede ganar. Como líder, identifique los nichos de mercado en los cuales su grupo puede destacarse y defina sus fortalezas y ventajas competitivas con términos lo más específicos posibles. Al hacerlo, Ud. prepara a su grupo y a su organización para éxitos sin precedentes, lo cual incrementa automáticamente el optimismo de todos aquellos que estén involucrados en su proyecto.",
                                  "Ud. tiene una tendencia natural a medir sus logros en base a parámetros de la vida real. Use este talento para identificar dentro de su organización aquellas personas o prácticas que sobresalen de la media. Esto será posible gracias a su capacidad para encontrar la unidad de medida justa para cada persona y porque es capaz de inspirar más a aquellos que consiguieron su admiración."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Competitividad",
                items: ["Busque lugares de trabajo donde Ud. pueda medir sus logros. Es probable que Ud. no pueda descubrir sus virtudes, a menos que las pongan a competir.",
                        "Haga una lista de resultados que a Ud. le gustaría esperar de las actividades que realiza. A cuáles debería prestarle más atención?",
                        "Identifique una persona que le sirva a Ud. de parámetro de desempeño. Si hay más de una, haga una lista y pregúntese qué indicadores le sirven para que Ud. se dé cuenta cómo le está yendo, si está “ganando” o no.",
                        "Transforme actividades rutinarias del trabajo en competencias. Se sorprenderá al ver cuánto más consigue finalizar de esta manera.",
                        "Si gana en algo, tómese el tiempo para indagar por qué ganó. Se puede aprender más de una victoria que de una derrota. Mucho más importante, se puede repetir una victoria con más facilidad y frecuencia si Ud. conoce las razones por las cuales ganó la última vez.",
                        "Dígale a las personas que ser competitivo no significa subestimar. Explíqueles que competir es su forma de estar motivado, aunque esto sea incómodo para muchos.",
                        "Desarrollo su propio “sistema balanceado de medidas” para poder medir mejor su desempeño. Esto es particularmente útil para esas situaciones donde Ud. compite contra sus propios números.",
                        "Si compite contra otros, intente comparar contra otros que puedan estar apenas por encima de Ud. Su inclinación por competir hará que Ud. se esfuerce por alcanzarlos rápidamente. Si no es motivación suficiente, busque compararse con aquellos que están aún más arriba, por más que el desafío parezca demasiado grande al principio. Su talento de Competitividad encontrará la forma de acortar la brecha rápidamente.",
                        "Tómese el tiempo para celebrar sus victorias. En su mundo, una victoria no es tal cosa hasta que no se celebra.",
                        "Diseñe estrategias mentales para afrontar mejor las derrotas. Una vez armado con ellas, Ud. se sobrepondrá de una manera mucho más eficiente a cualquier adversidad."]
              }
          }
       ]}).to_json},
      {nombre: "Excelencia", dominio_id: 2, libro: "No se detenga, MARCUS BUCKINGHAM", pelicula: "BLACK SWAN", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Excelencia**",
                texto: [%Q(La excelencia es la norma que rige su vida. En su opinión, no vale la pena cambiar algo que tenga un "desempeño por debajo del promedio" a un "desempeño promedio", ya que esto requiere grandes esfuerzos y ofrece pocos resultados. Por el contrario, convertir algo bueno en algo excelente requiere casi el mismo esfuerzo y resulta mucho más emocionante. A usted le fascinan tanto las fortalezas que ve en sí mismo(a) como las que ve en otros. Así como el buceador busca las mejores perlas en el océano, usted busca encontrar aquellas per-sonas con las mejores cualidades, es decir las que tienen un destello innato de excelencia, la capacidad de un rápido aprendizaje y una habilidad que ha sido dominada sin necesidad de seguir un proceso delineado. Todas éstas son indicaciones de que ha hallado un potencial sin pulir. Una vez que ha dado con éste, se siente impulsado a nutrirlo, refinarlo y se esfuerza por llevarlo a la excelencia. Al igual que el buzo, usted pule ese potencial que encontró hasta que brille como la perla. Los demás lo ven como una persona que discrimina por esta clasificación natural que usted hace de las fortalezas. Usted elige relacionarse con personas que aprecien sus fortalezas o talentos, y por eso le atraen las personas que han descubierto y cultivado sus talentos. Usted evita a quienes desean cambiarlo, a los que desean que sea un experto en todo; para usted es mejor que ellos busquen a otra persona a quien "perfeccionar", ya que no quiere pasar su vida lamentándose por lo que no es. Por el contrario, desea aprovechar sus talentos al máximo, lo disfruta más, se vuelve más productivo y, contrario a lo que se piensa, esto requiere de mayor esfuerzo. ),
                        %Q(El talento Excelencia se puede expresar así: ),
                        %Q(*Gisela T., auxiliar de vuelo:* "Enseñé aeróbicos durante diez años y siempre les pedí a los alumnos que se concentraran en lo que más les agradaba de sí mismos. Todos tenemos partes del cuerpo que desearíamos cambiar o ver de manera diferente, pero concentrarse en ellas puede ser muy destructivo. Se convierte en un círculo vicioso. Entonces yo les decía, "Miren, no tienen que hacer eso. Concentrémonos en el atributo que más les agrada de ustedes mismos y así se sentirán mejor al gastar toda esta energía".),
                        %Q(*Paola E., editora de revista:* "Lo que más odio es tener que arreglar un artículo mal escrito. Si he sido clara con la autora y me trae un escrito totalmente fuera de foco, no puedo ni siquiera hacer los comentarios. Prefiero devolvérselo y decirle: 'Hágalo de nuevo, por favor'. Por otra parte, me encanta pulir un escrito bien hecho hasta dejarlo perfecto: una palabra aquí, un recorte allá, y de pronto brota un artículo maravilloso".),
                        %Q(*Manuel G. ejecutivo de marketing:* "Sé perfectamente cómo crear un punto de atención para la gente y después desarrollar el espíritu de equipo a medida que marchamos hacia adelante. Pero no soy muy bueno con el pensamiento estratégico. Por suerte, mi jefe me comprende en ese sentido. Llevamos trabajando juntos varios años. Él ha encontrado las personas indicadas para desarrollar la función estratégica y al mismo tiempo me ha permitido mejorar mi función de atender las personas y formar equipos de trabajo. Soy afortunado de tener un jefe que piensa de esa manera. Me ha dado más seguridad y me ha ayudado a progresar más rápidamente el saber que mi jefe reconoce las cosas para las cuales soy bueno y aquéllas para las que no lo soy; y no me molesta con éstas últimas.)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Excelencia",
                items: ["A esta persona le interesa buscar nuevas formas de optimizar el desempeño en las cosas que ya funcionan. Probablemente no le interese demasiado arreglar las cosas que no sirven.",
                        "Evite ubicarla en roles en las que deba resolver problemas constantemente.",
                        "Esperará que usted comprenda sus fortalezas y la valore por ellas. Se frustrará si usted presta demasiada atención a sus debilidades.",
                        "Programe tiempo para discutir con ella sus fortalezas y diseñar una estrategia para determinar cómo y cuándo utilizarlas para beneficio de la organización. Ella disfrutará estas conversaciones y ofrecerá muchas sugerencias prácticas para utilizar mejor sus fortalezas.",
                        "En la medida de lo posible, ayúdela a desarrollar una trayectoria para su carrera y un plan de remuneración que le permita continuar avanzando hacia la excelencia en su rol actual. Esta persona querrá quedarse instintivamente en el camino de sus fortalezas, razón por la cual quizás vea con malos ojos las estructuras profesionales que la obliguen a abandonar ese camino a fin de incrementar sus ingresos.",
                        "Pídale dirigir un grupo especial encargado de estudiar las mejores prácticas dentro de su organización. Es una persona a quien le complace averiguar sobre la excelencia.",
                        "Pídale que le ayude a diseñar un programa para medir y celebrar la productividad de cada empleado.Disfrutará definiendo lo que debe ser la excelenciaen cada rol."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Excelencia",
                items_confianza: ["Admita que hace muchas cosas bien y otras, no tan bien. Permita que la gente también admita que hay temas donde ellos no son expertos y situaciones donde suelen fallar. El hecho de mostrarse tal cual Ud. es le permitirá a otros sentir que pueden ser honestos con Ud. también acerca de sus defectos.",
                                  "Ud. deberá repetir varias veces sus felicitaciones hacia sus colaboradores hasta que estos lo crean realmente. Debido a su talento Excelencia, Ud. suele tomar lo extraordinario como ordinario. Evite comportarse de esta manera. No normalice lo excelente. Para Ud. es algo común, pero para ganarse la confianza de otros, deberá entender que lo excelente es siempre extraordinario."],
                items_empatia: ["Use su talento Excelencia para liberar a otros de presiones o de la sensación de que no pueden cometer errores. Hágales saber cuánto aprecia sus talentos, así como sus esfuerzos.",
                                "Algunas veces la gente no reconoce su propia área de excelencia. Ud. puede ser quien los guie hacia la luz. Destaque los momentos de excelencia que observa en su desempeño. Dígales que Ud. nota las áreas en las que están realmente dotados. Generalmente limitamos la noción de “talento” a campos obvios como deportes o música. Amplíe la noción de “dote” que tiene la gente. Si la persona es un amigo dotado, o un organizador talentoso, o un acomodador dotado dígaselo. Amplíe la visión que tienen de ellos mismos. Ud. puede cambiar una vida y convertirse en un campeón personal."],
                items_estabilidad: ["La manera más segura de destruir la seguridad en alguien es pedirle repetidas veces que haga algo para lo cual no está preparado. En cambio, deje a los demás hacer y construir en lo que mejor hacen, y mire cómo crece su confianza.",
                                    "Apoye a los demás en las áreas en las que no sobresalen. Deles confianza ayudándolos a encontrar compañeros que los complementen o sistemas que los liberen de los errores."],
                items_esperanza: ["No permita que sus talentos de Excelencia sean apagados por la sabiduría  popular, que dice que Ud. debe encontrar lo que está roto y arreglarlo. Identifique e invierta en los aspectos de las personas y las organizaciones que ya funcionan. Asegúrese de que la mayoría de sus recursos se utilizan en construir y apoyar estos campos de excelencia.",
                                  "Explique los conceptos de Excelencia a aquellos que nunca han considerado hacer solamente aquello que hacen bien. Destaque las ventajas de vivir bajo esos principios. Enfocarse en los dones con los que hemos sido bendecidos es más productivo. Establezca expectativas más altas, no más bajas. Es el más efectivo y eficiente uso de energía y recursos. Y es más entretenido.",
                                  "Probablemente no tenga oportunidad de observar todo lo que la gente hace excepcionalmente bien. Por ello anímelos a ser los guardianes de sus propios talentos. Pídales que estudien sus éxitos. ¿Qué hicieron mejor en las situaciones exitosas? ¿Cómo pueden hacer más de ello? Inspírelos a soñar. Que sepan que pueden venir a Ud. para esa clase de conversaciones – que es uno de los grandes placeres de su vida.",
                                  "Como líder, tiene la responsabilidad de hacer la mejor utilización de los recursos de la organización – y el talento es  el recurso más valioso. Ud. ve talento en los demás. Use su autoridad para ayudar a sus colaboradores a identificar sus propios talentos y a maximizarlos al posicionar a la gente donde puedan desarrollarlos y utilizar sus fortalezas. Para cada necesidad, hay una persona con el talento indicado. Reclute y seleccione cuidadosamente, y tendrá una organización llena de oportunidades para destacarse."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Excelencia",
                items: ["Busque roles donde pueda ayudar a la gente a que tengan éxito o triunfe en sus actividades, ya sea como entrenador, jefe, supervisor, mentor, asesor, etc. Su capacidad de hacer foco en las fortalezas será muy beneficioso para ellos. Debido a que a la mayoría de la gente le resulta difícil decir con precisión cuáles son aquellas cosas que hacen muy bien, comience por mostrárselos con ejemplos concretos.",
                        "Encuentre manera de medir su desempeño y el de los demás. Estas medidas le ayudarán a encontrar más rápido las fortalezas, ya que una de las maneras más efectivas de identificarlas en prestando atención a las actividades donde una persona muestra buen desempeño de manera sostenida.",
                        "Una vez que identifique cuáles son sus talentos, enfóquese en ellos. Refine sus habilidades, adquiera más conocimientos y sobre todo, practique tanto como sea necesario.",
                        "Trate de elaborar un plan que le permita utilizar sus talentos en actividades extra-laborales. Para lograrlo, tenga en cuenta cuáles son aquellas actividades que son realmente importantes en su vida y cuáles son las herramientas que Ud. considera necesarias para llevar a cabo estas actividades de manera satisfactoria.",
                        "Resolver problemas constantemente le resultará difícil y desmotivador. Intente encontrar a alguien que posea el talento Restauración y pídale ayuda. Explíquele lo importante que es para Ud. todo lo que esa persona pueda hacer al respecto.",
                        "Estudie historias de éxito. Haga esfuerzos por pasar tiempo con personas que utilicen sus fortalezas de manera efectiva. Mientras más Ud. pueda entender la relación entre las fortalezas y el éxito, más probabilidades tendrá de conseguir resultados excelentes.",
                        "Explíqueles a otros por qué es mucho más conveniente desarrollar talentos que intentar reparar o combatir debilidades. Es probable que al principio ellos piensan que Ud. lo dice por auto-complacencia, pero no se dé por vencido. Su talento Excelencia le permitirá demostrarles con ejemplos contundentes.",
                        "No deje que la “sabiduría popular” opaque su talento. Asegúrese que sus esfuerzos están orientados hacia la excelencia todo el tiempo que sea posible.",
                        "Manténgase enfocado en relaciones y metas de largo plazo. Muchas personas tienden a ser cortoplacistas, pero su talento de Excelencia le permitirá separarse de este grupo y sostener sus esfuerzos en pos de resultados duraderos.",
                        "En caso de que Ud. sienta que debe atender a alguna de sus debilidades de manera especial, busque alguien que posea el talento que sirva para compensar su déficit. Apóyese en otros para obtener mejores resultados."]
              }
          }
       ]}).to_json},
      {nombre: "Auto-confianza", dominio_id: 2, libro: "Egonomics Que Hace Del Ego Nuestro Mayor Activo(O Nuestro Mas Costoso Pasivo),  David Marcum, Steven Smith", pelicula: "THE PURSUIT OF HAPPYNESS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Autoconfianza**",
                texto: [ %Q(La autoconfianza comprende la seguridad en sí mismo(a), no solo con respecto de sus capacidades, sino también de sus juicios. En lo más profundo de su ser, usted tiene fe en sus aptitudes, sabe que es capaz de asumir riesgos, de enfrentar nuevos desafíos, de ser asertivo y, sobre todo, capaz de producir resultados. Si usted tiene el don de la Autoconfianza, sabe que su perspectiva del mundo es única e incomparable. Como nadie observa con la misma exactitud las cosas que usted ve. Sabe que nadie podrá jamás tomar las decisiones por usted, ni podrá decirle lo que debe pensar. Podrán guiarlo(a), podrán darle sugerencias, pero usted es el (la) único(a) que vive su vida. Sólo usted tiene la autoridad para llegar a sus propias conclusiones, tomar decisiones y actuar. Esa autoridad, esa responsabilidad final acerca de la manera como lleva su vida no le intimida; al contrario, le parece natural. No importa cuál sea la situación, usted parece saber lo que es correcto; quizás no lo sea para todos, pero usted sabe de forma natural hacer lo que es correcto. Este talento le otorga un aura de certeza. A diferencia de muchos, usted no se deja llevar fácilmente por los argumentos de otros, por más persuasivos que sean. Dependiendo de sus otros talentos, esta seguridad en sí mismo(a) puede ser silenciosa o manifiesta, pero es sólida, fuerte. Es como el timón de un barco, que lo mantiene en su curso a pesar de las diferentes presiones. ),
                         %Q(El talento Autoconfianza se puede expresar así: ),
                         %Q(*Pamela D., ejecutiva de servicios públicos:* "Yo crecí en una finca apartada en Idaho, Estados Unidos, y me eduqué en una escuelita rural. Un día regresé a casa y le anuncié a mi mamá que pensaba cambiar de escuela. Ese día, mi profesora había explicado que nuestra escuela tenía demasiados niños y que tres tendrían que irse a otra. Yo lo pensé un momento, me gustó la idea de conocer a otras personas, y decidí que sería uno de los tres, aunque implicaba levantarme media hora antes y recorrer más distancia en el autobús. Tenía cinco años".),
                         %Q(*Jaime AI., vendedor:* "Jamás dudo de lo que pienso. Cuando compro un regalo de cumpleaños o una casa, cuando tomo mis decisiones, es como si no tuviera alternativa. Es como si cada decisión fuera la única opción y yo la hubiera tomado. Duermo muy bien. Mi instinto es definitivo, firme y muy convincente".),
                         %Q(*Débora C, enfermera de urgencias:* "Cuando alguien muere en el departamento, me llaman para hablar con la familia debido a mi seguridad en mí misma. Ayer tuvimos un problema con una joven psicótica que gritaba que tenía el diablo adentro. Las otras enfermeras estaban asustadas, pero yo sabía lo que debía hacer. Entré a la habitación y le dije: "Vamos, Catalina, acuéstate. Recitemos la Baruch. Es una oración judía que dice así: Baruch Atab Adonai, Eloheinu Melech Haolam'. Ella respondió: 'Dígala lentamente para poder repetirla'. Lo hice y ella la repitió lentamente. Aunque no era judía, la oración la tranquilizó. Dejó caer la cabeza en la almohada y dijo: 'Gracias. Era todo lo que necesitaba'".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Autoconfianza",
                items: ["Asigne a esta persona a un rol en el que tenga espacio para tomar decisiones de importancia. Es una persona que no desea ni necesita que la lleven de la mano.",
                        "Asígnele un rol en que la persistencia sea esencial para el éxito. Tiene la seguridad en sí misma para mantener el rumbo a pesar de las presiones. ",
                        "Asígnele un rol que exija un aura de seguridad y estabilidad. En los momentos decisivos, esta autoridad interior tranquilizará a los colegas y a los clientes. ",
                        %Q(Apóyela en la idea de que ella es un agente para la acción. Refuerce esa noción con comentarios tales como: "Es cosa suya. Se lo dejo a usted", o: "¿Qué le dice su intuición? Hagamos lo que le dice su intuición".),
                        "Hágale saber que sus decisiones y actuaciones producen resultados reales. Su eficacia alcanza su punto máximo cuando cree tener el control de su mundo. Resalte las prácticas que funcionan. ",
                        "Comprenda que puede tener nociones equivocadas sobre lo que es capaz de hacer y que no se relaciona con sus verdaderas fortalezas. Aunque esa confianza en sí misma puede ser útil muchas veces, en caso de que haga afirmaciones exageradas o cometa errores de criterio, cerciórese de señalarlos inmediatamente. Esta persona necesita retroalimentación clara para informar a su instinto.",
                        "Preste atención a sus demás Talentos Dominantes. Si también posee talentos como Futuro, Enfoque, Significación u Organización, bien podría ser líder dentro de su organización."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Auto-confianza",
                items_confianza: ["Sorprenda a los demás admitiendo sus errores y malas decisiones. La gente nunca esperará que alguien con tanta confianza en sí mismo esté abierto a mostrar debilidades. En realidad, Ud. funciona gracias a esas debilidades, ya que al conquistarlas, Ud. confirma que puede sobreponerse a cualquier adversidad. Muéstrese vulnerable para que los demás vean que sus fortalezas se construyen a partir de esas vulnerabilidades. Eso hará que la confianza que los demás depositan en Ud. sea más genuina. ",
                                  "Comparta con otros el hecho de que Ud. de vez en cuando enfrenta miedos e incertidumbres. Muéstreles que no es que para Ud. las decisiones sean fáciles de tomar siempre, sino que Ud. la mayoría de las veces se pregunta “Si no soy yo, entonces quién?”. Una vez que Ud. tiene la mejor información disponible, Ud. sabe que llega el momento de actuar. En la medida que los demás comprendan mejor su proceso decisorio, ellos podrán confirmar que Ud. es una persona digna de su confianza."],
                items_empatia: ["Su Auto-Confianza es capaz de atraer a mucha gente. Esa Auto-Confianza los moviliza. Es probable que incluso esa misma gente no se atribuya muchas buenas decisiones, relaciones o logros, sino que crean que es gracias a Ud. En esos casos, Ud. deberá adelantarse y mostrarles que efectivamente ellos pueden hacerlo. Ud. recordará los éxitos ajenos mucho más que los fracasos, por lo que podrá rememorarlos detalladamente cada vez que sea necesario. Con alguien como Ud., ellos sentirán que pueden atreverse e intentarlo más seguido.",
                                "Su capacidad para ser independiente y autosuficiente es innegable. A pesar de eso, Ud. también necesita dar y recibir cariño y afecto. Después de todo, Ud. también es humano. Cuando construya una relación cualquiera, considere el hecho de que Ud. estará haciendo un aporte a la vida de esa persona. Al mismo tiempo, tenga en cuenta que esa persona estará aportando a la suya también. Si Ud. no necesitara a nadie, ¿cómo sería posible que las personas importantes en su vida se sientan valoradas? Piense en maneras de hacer sentir a los que lo rodean más felices y a gusto y dígaselos. Dígales que los necesita. Dígales por qué.",],
                items_estabilidad: ["Confianza es algo que Ud. tiene a montones. Comparta sus propias historias de éxito con otros para que ellos logren ver que parte de ese éxito se debe, en gran parte, a su experiencia. Eso calmará la ansiedad de otros en esas situaciones donde Ud. propondrá una meta y dirá “podemos hacerlo”. ",
                                    "“Cuando no te quede otra opción que hacerlo, serás capaz de hacerlo”. Use esta frase para ayudar a que la gente entienda que cuando no hay más opciones, ellos tienen la fortaleza y la capacidad para hacer lo que sea necesario. La inacción no es una opción. La única opción es tomar la mejor decisión posible y moverse.",
                                    "Cuando considere una nueva tarea, reflexione acerca de las habilidades, talentos y conocimientos que esta requiera. Ensamble un equipo sólido y esté preparado para cambiar roles rápidamente en caso que alguien no se adapte a lo requerido por Ud. La gente valorará su capacidad para detectar expertos en cada uno de esos roles. Eso les dará tranquilidad y seguridad."],
                items_esperanza: ["Proponga y propóngase metas ambiciosas. No dude en ir por aquello que muchos considerarían impracticable o, incluso, imposible. A esas situaciones Ud. las verá simplemente como excitantes y desafiantes, pero por sobre todas las cosas, como alcanzables con algo de heroísmo y un poquito de suerte. Su talento Auto-Confianza puede guiar a Ud., su familia, sus colegas y su organización a alcanzar logros que nadie más hubiera siquiera imaginado.",
                                  "Pregúntele a los demás si se han fijado metas lo suficientemente altas. Es probable que a ellos les cueste animarse a soñar en grande como Ud. lo hace. Si Ud. pudiera ayudarlos a que se imaginen algo más grande y mejor, los estará ayudando a que sus vidas también lo sean."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Autoconfianza",
                items: ["Busque situaciones en las que no existan reglas o procedimientos previamente definidos. Ud. se siente pleno cuando tiene necesidad de tomar muchas decisiones.",
                        "Busque roles en los que tenga que convencer a los demás de su punto de vista. Sus talentos de Autoconfianza (especialmente combinados con los talentos de Mando e Impulso) pueden ser extremadamente persuasivos. Las posiciones de Liderazgo, ventas, legales o emprendimientos pueden ser para Ud.",
                        "Deje que su autoconfianza se vea. Puede ser contagioso y ayudará a la gente alrededor suyo a crecer.",
                        "Tenga en cuenta que algunas veces puede resultarle difícil poner sus intuiciones o certezas en palabras, y esto puede hacer que los demás lo vean como alguien cerrado. Explíqueles que su confianza no significa que ellos deban guardarse sus opiniones. Puede que ellos lo vean diferente, pero Ud. realmente quiere conocer sus ideas. Que Ud. este convencido no significa que no tenga ganas de  escucharlos.",
                        "Su veta independiente puede dejarlo solo. Si esto sucede asegúrese de estar al frente, o busque a alguien que pueda ayudar a que los demás vean la conveniencia de seguirlo.",
                        "Asóciese con alguien con talentos de Estrategia, Prudencia o Futuro. Esta persona puede ayudarlo a definir las metas a alcanzar. Ud. necesita esta ayuda porque una vez que fija los objetivos, es probable que no los abandone hasta lograrlos.",
                        "Sus esfuerzos extraordinarios y largas jornadas son consecuencia natural de la pasión y confianza que pone en su trabajo. No suponga que los otros actuaran de igual manera.",
                        "Ud. Puede ser decisorio, aun cuando las cosas se ponen movidas o confusas. Cuando haya caos a su alrededor, muestre y comparta intencionalmente la calma y seguridad interna que posee. Esto reconfortara y dará seguridad a los demás.",
                        "Establezca metas ambiciosas. No dude en buscar lo que los otros ven como imposible o impracticable, pero para Ud. es meramente audaz y desafiante – y más importante aun – factible con mayor esfuerzo y coraje. Sus talentos de Autoconfianza pueden llevarlo a logros que de otra manera no hubiera nunca imaginado.",
                        "Ud. no tiene gran necesidad de dirección y apoyo por parte de los otros. Esto lo hace particularmente efectivo en situaciones que requieren decisiones y acciones independientes. Reconozca y contribuya activamente con su talento de Autoconfianza cuando el auto-control y la seguridad son cruciales."]
              }
          }
       ]}).to_json},
      {nombre: "Significación", dominio_id: 2, libro: "El talento nunca es suficiente, John C. Maxwell", pelicula: "FROST / NIXON", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Significación**",
                texto:  [%Q(Usted desea que los demás lo vean como una persona significativa. En el verdadero sentido de la palabra, usted desea ser reconocido(a), ser escuchado(a), sobresalir y, particularmente, ser conocido(a) por sus cualidades singulares. Necesita ser admirado(a) como una persona creíble, profesional y exitosa e, igualmente, desea asociarse con otras personas que también lo sean. Si estas personas no son creíbles, profesionales y exitosas, las impulsará a intentarlo hasta conseguirlo; de lo contrario, usted seguirá su camino. Al ser un espíritu independiente, usted desea que su trabajo sea un estilo de vida, más que un empleo, y en el mismo desea que le den rienda suelta, que le dejen el camino libre para hacer las cosas a su manera. Para usted, sus anhelos cuentan mucho, trata de alcanzarlos y por eso su vida está llena de cosas que "desea", "ansia" o "ama". Cualquiera que sea el objetivo, el cual es distinto para cada persona, su talento Significación lo(a) seguirá impulsando hacia adelante, apartándolo(a) de la mediocridad, dirigiéndolo(a) hacia lo excepcional. Es el talento que hace que usted esté constantemente en la búsqueda de nuevas metas. ),
                         %Q(El talento Significación se puede expresar así: ),
                         %Q(*María R, ejecutiva de salud:* "A las mujeres se nos dice prácticamente desde el primer día que no debemos ser demasiado orgullosas ni pretender sobresalir demasiado. Pero he aprendido que está bien tener poder, que está bien sentir orgullo, que está bien tener un ego muy grande. Y también he aprendido que necesito manejar todo eso y canalizarlo correctamente".),
                         %Q(*Catalina H., socia de una firma de abogados:* "Desde que tengo memoria he tenido la sensación de ser especial, de estar en capacidad de tomar el control y hacer que sucedan las cosas. Por allá en los años 60 fui la primera mujer socia de mi firma y todavía recuerdo una tras otra las muchas reuniones de la junta directiva en las que era la única mujer. Es extraño cuando lo pienso. Fue duro, pero creo que disfruté la presión de sobresalir. Disfruté siendo el único socio de sexo femenino. ¿Por qué? Porque sabía que sería muy difícil que me olvidaran. Sabía que todo el mundo me notaría y me prestaría atención".),
                         %Q(*José de Jesús A., médico:* "Toda mi vida he sentido que estoy en un escenario. Siempre estoy consciente de un público. Si estoy con un paciente, deseo que me vea como el mejor médico que ha tenido en su vida. Si estoy enseñando, deseo sobresalir como el mejor profesor de medicina que los estudiantes hayan tenido jamás. Quiero ganarme el premio del Educador del Año. Mi jefa es uno de mis públicos más importantes. Moriría si la desilusionara. Me asusta pensar que parte de mi amor propio está en manos de otras personas, pero es lo que me mantiene siempre alerta".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Significación",
                items: ["Reconozca la necesidad que esta persona tiene de ser independiente. No se exceda en supervisarla. ",
                        "Reconozca que vibra cuando recibe reconocimiento por sus contribuciones. Permítale maniobrar con li¬bertad, pero jamás la relegue al olvido. Asegúrese de distribuir todas las felicitaciones a través de ella. ",
                        "Bríndele la oportunidad de sobresalir, de ser conoci¬da. Disfruta la presión de ser el centro de atención. Permita que sobresalga por buenas razones o ella se encargará de hacerlo, quizás de manera equivocada. ",
                        "Ubíquela de tal manera que pueda relacionarse con personas dignas de confianza, productivas y profesio¬nales. Le agrada rodearse de los mejores.",
                        "Anímela a elogiar a otras personas destacadas de su grupo. Disfruta haciendo que otros sientan su propio éxito.",
                        "Cuando pretenda buscar la excelencia — y lo hará — ayúdela a visualizar las fortalezas que tendrá que desarrollar a fin de hacer realidad sus aspiraciones. En su papel como mentor, no le pida que disminuya sus aspiraciones; sugiérale a cambio que mantenga parámetros de referencia a fin de desarrollar las forta¬lezas relevantes.",
                        "Puesto que le atribuye tanta importancia a lo que los otros perciben en ella, su amor propio puede sufrir cuando esos otros no le conceden el reconocimiento que merece. En esos momentos, llévela a pensar en sus fortalezas y anímela a fijar nuevas metas basadas en ellas. Estas metas le imprimirán renovada energía."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Significación",
                items_confianza: ["Comparta su deseo por alcanzar grandes metas. Indague acerca de sus propias fuentes de motivación, pero hágalo también con otros. Esta también es una forma de compartir confianza.",
                                  "El impacto que Ud. logra en su entorno y en el mundo es altamente dependiente de la cantidad de personas que creen en Ud. como líder. Sea siempre honesto con Ud. mismo y con quien Ud. cree que es y la gente verá inmediatamente que su imagen es auténtica."],
                items_empatia: ["Sus aspiraciones siempre serán mayores que las de los demás. Durante su carrera hacia la cima, asegúrese de premiarse a Ud. mismo y a los demás, celebrando cada logro alcanzado. Enfatice la importancia de las metas y el valor de las contribuciones que cualquier persona pueda hacer para alcanzarlas. No olvide decirles lo importantes que son a todas aquellas personas que lo rodean y le permiten alcanzar lo que se propone. Comparta con ellos parte del premio. Hágalos sentirse parte. Su Ud. consigue que sus sociedades sean exitosas, se asegurará muchos éxitos a largo plazo. ",
                                "Aplausos, felicitaciones y confirmaciones de una tarea excelente por parte de quienes lo rodean serán su combustible para llegar a la cima. ¿De quién proviene el elogio que Ud. más valora?¿De sus padres, su pareja, sus hijos? ¿Ya les dijo lo clave que es para Ud. que ellos piensen que Ud. hace un excelente trabajo? Hágales saber siempre lo importante que es para Ud. que ellos le digan lo que opinan acerca de sus logros y su desempeño. No olvide de compartir con ellos esos momentos memorables. Insista en comentarles que el rol que ellos tienen en su vida es su principal fuente de motivación."],
                items_estabilidad: ["El impacto duradero es algo muy importante para Ud. Ud. construye cosas que hacen la diferencia más allá del aquí y ahora. Comparta estos sentimientos con otros. Ayúdelos a que conozcan que su visión es acerca de los logros consistentes y no la gloria inmediata. Ellos se sentirán más seguros al comprender que detrás de su ambición hay una gran dosis de compromiso por sus causas.",
                                    "Liderar equipos críticos o proyectos significativos saca lo mejor de Ud. Su más fuerte motivación proviene de aquellas situaciones donde hay mucho en juego. Hágales saber a sus colaboradores que cuando hay mucho riesgo involucrado, Ud. prefiere estar al mando. Ellos se aliviarán al notar que, lejos de temerle al riesgo, una parte suya se siente cómoda “jugando con fuego” y asumiendo toda la responsabilidad."],
                items_esperanza: ["Ud. pasa horas imaginando dónde quiere estar en el futuro y cómo hará para llegar ahí. Ayude a otros a pensar en términos del legado que dejarán. Pregúnteles acerca de sus expectativas, como por ejemplo, en qué áreas o temas quieren destacarse. Trabaje con ellos en la importancia de ver más allá del presente y de la rutina del día a día.",
                                  "Su talento Significación frecuentemente lo pone en una posición de exposición o popularidad. Use esta oportunidad para direccionar algo de esta atención hacia otros. Su habilidad para desarrollar los talentos de otros y prepararlos para el éxito puede llegar a ser la mejor forma de medir su Significación"]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
            {
              talento: "Significación",
              items: ["Escoja empleos o posiciones en las cuales pueda determinar sus propias tareas y acciones. Ud. disfrutará de la exposición que trae aparejada la independencia.",
                      "Su reputación es importante para Ud., entonces decida cuál debería ser y atienda cada detalle por mínimo que sea. Por ejemplo, identifique y obtenga un nombramiento que ayude a su credibilidad, escriba un artículo que le de visibilidad u ofrézcase a hablar frente a un grupo que admire sus logros.",
                      "Comparta sus sueños y metas con su familia o amigos cercanos y colegas. Sus expectativas lo mantendrán enfocado.",
                      "Manténgase enfocado en los resultados. Sus talentos de Significación pueden llevarlo a establecer metas extraordinarias. Su desempeño debe alcanzar esos resultados, o los demás podrían considerarlo un charlatán.",
                      "Ud. se desempeñará mejor cuando su actuación sea visible. Busque oportunidades que lo pongan en el centro de la escena. Manténgase alejado de los roles que lo dejen detrás de bambalinas.",
                      "El liderazgo de equipos clave o proyectos importantes saca lo mejor de Ud. Su mayor motivación aparece cuando hay mucho en juego. Que los otros sepan que cuando haya que jugar, Ud. quiere la pelota.",
                      "Haga una lista de las metas, logros y habilidades que desea, y péguela en un lugar donde la vea a diario. Use esta lista para inspirarse.",
                      "Identifique el mejor momento que tuvo de reconocimiento o elogio. Porque fue? Quien lo hizo? Que tiene que hacer para recrear ese momento?",
                      "Al menos que también tenga el talento de Auto-confianza, acepte que puede temerle al fracaso. No deje que este miedo le impida pretender la excelencia. En cambio, úselo para concentrarse en lograr que su rendimiento colme sus pretensiones.",
                      "Puede que Ud. tenga una conciencia natural acerca de lo que otros piensan de Ud. podría tener un público específico al que quiere gustar, y hará lo que sea necesario para obtener su aprobación. Tenga en cuenta que mientras que la dependencia en la aprobación de los demás puede ser problemática, no hay nada malo en desear ser querido o admirado por la gente importante en su vida."]
            }
          }
       ]}).to_json},
      {nombre: "Carisma", dominio_id: 2, libro: "Cómo ganar amigos e influir sobre las personas, Dale Carnegie", pelicula: "THE TALENTED MR. RIPLEY", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Carisma**",
                texto: [  %Q(A usted sencillamente le encanta el desafío de conocer gente nueva y lograr caerles bien. Rara vez los desconocidos lo(a) intimidan, por el contrario, lo(a) estimulan y atraen. Desea aprender sus nombres, hacerles preguntas y encontrar áreas de interés común para poder entablar una conversación y establecer una relación. Mientras que algunas personas evitan iniciar conversaciones porque temen quedarse sin algo de qué hablar, a usted esto no lo(a) detiene. No sólo es muy raro que se quede sin temas de que hablar, sino que disfruta del riesgo de iniciar conversaciones con personas desconocidas. Le da mucha satisfacción romper el hielo y establecer nuevos vínculos. Una vez que los ha establecido, se siente satisfecho(a) y concluye la conversación, para así poder iniciar una nueva. Siempre hay gente nueva por conocer, lugares para establecer nuevos contactos y nuevos grupos con quienes socializar. En su mundo no hay desconocidos, sólo amigos, muchos amigos por conocer. ),
                          %Q(El talento Carisma se puede expresar así: ),
                          %Q(*Débora C, ejecutiva editorial:* "He hecho grandes amistades con personas con quienes me he cruzado en la puerta. Es horrible, pero el Carisma es parte de mí ser. Todos los conductores de taxi me proponen matrimonio".),
                          %Q(*Margarita S., rectora de universidad:* "No creo que esté siempre a la caza de amigos, pero la gente dice de mí que soy su amiga. Yo llamo a una persona y le digo: 'Te quiero' y es verdad porque tomo cariño a las personas fácilmente. ¿Pero amigos? No tengo muchos amigos. No creo que esté buscando amigos. Busco conexiones. Soy realmente buena para eso porque sé cómo establecer puntos de contacto con la gente".),
                          %Q(*Ana G., enfermera:* "Creo que a veces soy un poco tímida. Generalmente no soy quien da el primer paso. Pero sé cómo hacer que la gente se sienta a gusto. Buena parte de mi trabajo es sólo cuestión de humor. Si un paciente no es muy receptivo, adopto el papel de comediante. A un paciente de ochenta años podría decirle: 'Hola, guapo. Siéntate. Déjame quitarte la camisa. Está bien. Quítate la camisa. ¡Vaya pectorales los que tiene este hombre!' Con los niños hay que ir lentamente y decir algo como: '¿Cuántos años tienes?' Si contesta 'diez' entonces uno dice: '¿En serio? Cuando yo tenía tu edad, tenía once', tonterías como esas para romper el hielo".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Carisma",
                items: ["Trate de ubicar a esta persona en un rol en el cual tenga la oportunidad de conocer a personas nuevas todos los días. Las personas desconocidas la llenan de energía.",
                        "Ubíquela en el punto de contacto inicial de su organización con el mundo exterior. Sabrá cómo hacer que los extraños se sientan a gusto con la organización.",
                        "Ayúdela a perfeccionar un sistema para recordar los nombres de las personas a quienes conoce. Fíjele la meta de aprenderse los nombres y algunos detalles personales de tantos clientes como le sea posible. Podrá ayudarle a la organización a crear muchas conexiones en el mercado.",
                        "A menos que también tenga otros Talentos Dominantes como Empatía y Relación, no espere que disfrute un rol en el cual deba crear relaciones estrechas con los clientes. Ella preferiría recibir y saludar, ganarse al cliente y luego pasar al siguiente.",
                        "Su Carisma ejercerá un efecto sobre usted y esta persona le agradará. Cuando piense en otras funciones y responsabilidades para ella, asegúrese de no dejarse cegar por su aprecio y mire sus verdaderas fortalezas. No permita que el Carisma lo(a) deslumbre.",
                        "De ser posible, pídale que construya prestigio para su organización dentro de la comunidad. Haga que sea esa persona quien represente a la organización en los clubes y las reuniones de la comunidad."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Carisma",
                items_confianza: ["Ud. tiene facilidad para encantar a otros. Asegúrese de hacerlo con integridad, de tal manera que los demás confíen en Ud. De lo contrario, se llenará de contactos, pero no de seguidores. ",
                                  "Es probable que las personas compartan mucha información con Ud., incluso el día que los conozca. Busque siempre la manera de preservar y protegerla, de tal manera que esas personas sean protegidas también. Confeccione un sistema de administración de contactos que le permita hacer uso eficiente de todos los detalles de esas conversaciones que Ud. tiene con ellos. Sea discreto e intente siempre no perder el contacto."],
                items_empatia: ["Ud. consigue hacerse de nuevos amigos dondequiera que vaya. Sin embargo, para Ud. es importante que varias de esas nuevas amistades se conviertan en relaciones duraderas. Piense en cómo hacer para crear conexiones más fuertes con esas personas. No ahorre tiempo con ellos. Haga esfuerzos por mantenerlos cerca. Considérelo una inversión.",
                                "Es común que los líderes construyan redes de confianza, comunicación y colaboración con un amplio espectro de personas. Ud. es capaz de acortar distancias entre grupos muy diversos. Intente construir (mentalmente) un mapa de su red de contactos y vea hasta dónde llegan sus contactos. Se sorprenderá."],
                items_estabilidad: ["Comparta el alcance de su red de contactos con otras personas. El hecho de saber que Ud. tiene conexiones en los ámbitos más diversos hará que otros se sientan más confiado, sabiendo que Ud. está al tanto de lo que pasa y que se enterará de las últimas noticias antes que nadie.",
                                    "Hable más frecuentemente con proveedores y clientes. Participe en actividades de su comunidad. Los líderes más efectivos piensan que su influencia excede las paredes de su organización. Para ello usan su red de contactos y emplean esa influencia constantemente. Disfrutar del apoyo de otros sirve para asegurar la existencia de las organizaciones, así como las oportunidades para que sigan expandiéndose. "],
                items_esperanza: ["Su talento Carisma le permite acelerar la velocidad con la se mueve su organización. Reconozca el poder de su presencia y cómo puede inspirar los intercambios de ideas. Simplemente por comenzar conversaciones que cautiven a los demás y convoquen a aquellos con más talentos, Ud. ayudará de manera notable a mejorar el desempeño individual y colectivo de las personas en su organización.",
                                  "Todas sus actividades y eventos sociales con seguridad producirán información que es valiosa para otros – clientes, colegas, jefes y todos aquellos a quienes Ud. intenta ayudar -.",
                                  "Cada vez que pueda, ayude a difundir buenas noticias y no rumores. Hágales saber a los demás todas aquellas cosas que están haciendo bien y cómo están siendo bien percibidos por ello. Comparta con ellos el amplio alcance de su influencia y ayúdelos a sentirse confirmados cada vez que ellos ayudan a que otros se sientan bien también."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Carisma",
                items: ["Elija un trabajo en el cual pueda interactuar con mucha gente a lo largo del día.",
                        "Construya deliberadamente la red de personas que lo conocen. Manténgala poniéndose en contacto con cada uno por lo menos una vez al mes.",
                        "Únase a organizaciones locales, sea voluntario, y encuentra la manera de ser incluido en las listas de la gente influyente del lugar donde vive.",
                        "Aprenda los nombres de tanta gente como le sea posible. Cree un archivo de la gente que conoce, y agregue nombres cuando se vaya familiarizando. Incluya un resumen de la información personal – como cumpleaños, color favorito, hobby, o equipo favorito.",
                        "En eventos sociales, tome la responsabilidad de ayudar a la gente tímida a sentirse cómoda.",
                        "Encuentre el modo de explicar que las redes de contactos son parte de su estilo personal. Si no lo explica, puede que otros lo confundan con falta de sinceridad y se pregunten porque es tan amigable. ",
                        "Asóciese con alguien con fuertes talentos de Relación o Empatía. Estas personas pueden fortalecer las relaciones que Ud. comienza.",
                        "Su talento Carisma le da la habilidad para “acelerarles el pulso” a quienes lo rodean. Reconozca el poder de su presencia y cómo le ayuda a abrir la puerta para interesantes intercambios de ideas. Simplemente con comenzar una conversación que sea interesante y estimulante para otros, Ud. estará provocando mejoras o preparando el terreno para que esas mejoras puedan producirse.",
                        "Los primeros momentos de cualquier evento social son cruciales en cuanto a cómo la gente se siente y cómo los recuerda. Cada vez que sea posible, sea Ud. la primera persona con quien los invitados se encuentran. Su capacidad para manejarse cómodamente en estas situaciones les transmitirá a ellos esa misma comodidad.",
                        "Practique diversas formas de comenzar conversaciones. Por ejemplo, indague acerca de los intereses de la gente, de tal manera que pueda encontrar rápidamente puntos en común."]
              }
          }
        ]}).to_json},
      {nombre: "Flexibilidad", dominio_id: 3, libro: "La brújula interior", pelicula: "THE GAME", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Flexibilidad**",
                texto: [%Q(Usted vive el momento, no ve el futuro como un destino fijo, sino que lo ve como un lugar que puede ir forjando a partir de las opciones que toma en cada instante. Así, usted va descubriendo su futuro con cada una de las opciones que se le presentan día a día. Esto no significa que no tenga planes; probablemente los tenga, pero el talento Flexibilidad le permite responder con buena cara a las demandas del momento, aun cuando le aparten de sus planes. A diferencia de algunas personas, a usted no le molestan las tareas que le piden repentinamente o las desviaciones imprevistas. De hecho espera que se den, son inevitables y, en cierto sentido, hasta las desea. En el fondo, usted es una persona que se adapta con facilidad y que puede seguir siendo productivo(a), aun cuando las exigencias del trabajo le lleven en varias direcciones a la vez.),
                        %Q(El talento Flexibilidad se puede expresar así: ),
                        %Q(*Marie T., productora de televisión:* "Me encanta la televisión en vivo porque uno nunca sabe lo que va a suceder. En un determinado momento puedo estar montando un segmento sobre los mejores regalos de vacaciones para los adolescentes y al siguiente minuto puedo estar haciendo una entrevista con un candidato presidencial. Creo que siempre he sido así. Vivo el momento. Si alguien me pregunta: '¿Qué piensas hacer mañana?', mi respuesta siempre es: 'Caray, no sé. Depende de cómo esté mi estado de ánimo'. Mi novio se vuelve loco porque hace planes para ir a los anticuarios el domingo en la tarde y en el último minuto yo cambio de opinión y digo: 'No, vamos a casa a leer los periódicos dominicales'. Terrible, ¿verdad? Pero tiene su lado positivo pues siempre estoy dispuesta a asumir lo que venga".),
                        %Q(*Linda G., gerente de proyecto:* "Donde trabajo soy la persona más calmada que conozco. Cuando alguien dice: 'Nos equivocamos en el plan. Debemos cambiar esto para mañana', mis colegas se ponen tensos y se paralizan. Por alguna razón, eso no me sucede a mí. Me agrada la presión, la necesidad de reaccionar en el momento. Me hace sentir viva".),
                        %Q(*Pedro F., instructor corporativo:* "Creo que manejo la vida mejor que la mayoría de la gente. La semana pasada encontré que alguien había roto el vidrio de mi automóvil para robar el radio. Aunque obviamente me enojé, el incidente no me echó a perder el día. Sencillamente lo aparté de mi mente y seguí adelante con las demás cosas que debía realizar ese día".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Flexibilidad",
                items: ["Esta persona vive para reaccionar y responder. Ubí-quela de tal manera que su éxito dependa de su capacidad para adaptarse a lo imprevisto y fluir con la situación.",
                        "Comuníquele sus planes, pero a menos que también sea fuerte en Enfoque no espere que le ayude a planear. Lo más probable es que le parezca tremendamente aburrido el trabajo de planificación. ",
                        "Con su naturaleza instintivamente flexible, esta persona es valiosa en casi todos los equipos de trabajo. Cuando la gente tira la toalla o los planes salen mal, ella sencillamente se adapta a las nuevas circunstancia y trata de avanzar. No será de las que se siente en la banca a lamentarse.",
                        "Será más productiva en proyectos cortos que exijan acción inmediata. Prefiere una vida llena de escaramuzas rápidas en lugar de campañas prolongadas. ",
                        "Estudie sus demás Talentos Dominantes. Si también tiene Empatía, podría ubicarla donde deba reconocer y adaptarse a las diversas necesidades de los clientes o los huéspedes. Si otro de sus Talentos Dominantes es el Desarrollo, asígnele un rol de mentor. Con su voluntad para tomar las cosas tal y como se vayan presentando podrá crear una atmósfera maravillosa en donde otras personas puedan experimentar y aprender.",
                        %Q(Esté preparado para no exigir a esta persona que acepte reuniones para hablar sobre el futuro, como son las reuniones para fijar metas o asesorar sobre la carrera. Es una persona de "aquí y ahora", para quien dichas reuniones son relativamente irrelevantes.)]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Flexibilidad",
                items_confianza: ["En ciertas ocasiones, todo lo que podrá hacer es ayudar a que las personas aprendan a confiar en ellas mismas y a encontrar maneras de solucionar sus propios problemas. Cuando alguien sienta que el poder que tienen sobre una situación puntual se ha perdido, Ud. podrá ayudarles a ver que todavía pueden modificarla a partir de cómo reaccionen frente a la misma. Cada vez que Ud. confíe en las habilidades de los demás y los ayude a creer en ellos mismos, Ud. los estará ayudando a que construyan su propia confianza.",
                                  "Ud. no se caracteriza por tomar las riendas y estar al frente de las cosas. Por el contrario, Ud. prefiere actuar como compañero de ruta. El hecho de que los demás vean que Ud. no tiene intenciones ocultas hará que ellos confíen siempre en Ud. Pregúnteles hacia donde quieren ir en sus vidas (personales y/o profesionales) y ayúdelos a acercarse a ese lugar. Ellos rápidamente se darán cuenta que Ud. está de su lado."],
                items_empatia: ["Los demás aprecian mucho el hecho de que Ud. es capaz de conectarse con ellos en el momento. Transforme esto en una prioridad y conéctese cada vez que sea posible con los sentimientos y las necesidades de los otros. Algunas cosas pueden cambiar en el futuro, pero lo que más admira la gente de Ud. es su capacidad para enfocarse en el presente, en el ahora, en lo que es real. Ud. es capaz de transmitir esa sensación de conexión cada vez que comparte tiempo con otros.",
                                "Su facilidad para “ir con la corriente” es capaz de liberar a otros de la ansiedad y de ciertas frustraciones. Esto puede actuar como remedio para muchos otros con talentos diferentes a los suyos. Cuando los demás se estresan, Ud. es capaz de poner muchas cosas en perspectiva. Ayude a otros a encontrar alivio simplemente haciéndoles entender que no es posible controlar cada uno de los aspectos de sus vidas. Libérelos para que puedan ser más felices.",
                                "Ud. tiene el don de responder rápidamente.  Su capacidad para estar atento a lo que sucede y a lo que otros pueden llegar a necesitar puede hacer sentir muy bien a las demás personas. Su forma de liderar muchas veces tiene que ver con responder a las emociones de la gente más rápido que cualquier otro tipo de demandas que puedan tener."],
                items_estabilidad: ["¿Es posible mezclar flexibilidad con estabilidad? Claro que sí! Cada vez que las personas planifican buscan estabilidad. De igual manera, cada vez que esos planes encuentran obstáculos, es necesario un poco de flexibilidad. Ayúdelos a que vean que esos desvíos son oportunidades de aprendizaje en el camino al éxito. Ayúdelos, al mismo tiempo, a mantenerse fuertes cada vez que los inconvenientes intenten dar por tierra esos planes. Enséñeles a que vean a los desvíos como un “nuevo camino”, más que como un camino peor que el original.",
                                    "Paciencia es una virtud que Ud. bien puede poseer, pero será necesario que se los recuerde a los demás de tanto en tanto. Aquellos amantes de los resultados inmediatos querrán darse por vencidos. Su trabajo será mostrarles los beneficios de los esfuerzos antes de que se dejen vencer por pequeñas frustraciones que pueden llegar a encontrar en el camino."],
                items_esperanza: ["Deles a sus colaboradores la autorización que necesiten para dejar de controlar y empezar a vivir. Inspírelos compartiendo su experiencia, su perspectiva y su sabiduría.",
                                  "La aceptación es algo que Ud. ofrece muy fácilmente a los demás. Cuando algo bueno o malo pase, muéstreles a los demás que eso ya es parte del pasado y ayúdeles a aceptar esta realidad mostrándoles que no pueden controlarlo todo."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Flexibilidad",
                items: ["Confirme su imagen de persona calma y confirmadora cuando otros se molestan con cuestiones rutinarias.",
                        "Evite aquellas funciones o roles que requieran estructura o predictibilidad, ya que rápidamente lo frustrarán o lo harán sentir, como mínimo, incómodo. En su cabeza, la estructura es sinónimo de falta de independencia.",
                        "En momentos de mucha presión, ayude a sus amigos, colegas o clientes a encontrar formas de no perder el control. Contágielos con su Flexibilidad, mostrándoles cómo mantenerse calmos y alertas a la vez.",
                        "No deje que otros abusen de su Flexibilidad. Si bien es un talento que se caracteriza por asistir a otros, esto no significa atender a cada deseo, reclamo o queja alrededor suyo.",
                        "Encuentre roles cuyo éxito dependa de situaciones de cambio constante. Carreras como periodismo, producción de TV, emergencias médicas o atención al cliente. En estas ocupaciones, los mejores son los más rápidos en responder y lo más atentos.",
                        "Realice pequeños ajustes a su Flexibilidad para estar aún más preparado. Por ejemplo, ejercite rutinas que le sirvan para estar listo para un viaje en 30 minutos o para conocer los tres primeros pasos a seguir en caso de un cambio de planes en el trabajo.",
                        "Busque a otros que puedan planificar por Ud. Los talentos de Enfoque, Estrategia o incluso Creencia son característicos en personas que pueden establecer metas de largo plazo, dejando que Ud. se destaca en cambios de último momento.",
                        "El talento de Flexibilidad es una excelente herramienta para enfrentar altibajos emocionales. Su inclinación por no convertir situaciones convencionales en dramas de telenovela le permitirá recuperarse rápidamente de algunas desilusiones o contratiempos. Ayude a otros a que comprendan la diferencia entre su actitud flexible y predispuesta a superar obstáculos y la indiferencia.",
                        "Evite tareas demasiado estructuradas. Si alguna vez debe seguir una lista, intente convertir esta actividad en algo lúdico. Trate de ser creativo.",
                        "Intente utilizar su habilidad para confirmar a otros cuando se sienten desmotivados o desilusionados con algo lo más frecuentemente posible."]
              }
          }
        ]}).to_json},
      {nombre: "Desarrollo", dominio_id: 3, libro: "Ayúdele a la gente a ganar en el trabajo, Ken Blanchard, Garry Ridge", pelicula: "PRECIOUS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Desarrollo**",
                texto: [%Q(Usted ve el potencial en los demás; de hecho, con frecuencia esto es todo lo que percibe. A su juicio, ningún individuo ha alcanzado su pleno desarrollo, nadie ha alcanzado un estado de perfección. Por el contrario, cada individuo está en un constante proceso de desarrollo. Cada persona tiene un alto potencial y por esta razón usted busca a los demás. Cuando interactúa con otros, su primordial objetivo es ayudarles a saborear él éxito. Para esto, busca la forma de retarlos y lo hace a través de proyectos interesantes que les ayuden a crecer y así mejorar día a día sus habilidades. Usted siempre está alerta para detectar pequeñas muestras de crecimiento, ya sea un nuevo comportamiento, aprendido o modificado, la leve mejoría de una destreza, un destello de excelencia o "pasos firmes" allí donde sólo había "pasos vacilantes". Para usted, esos pequeños adelantos, invisibles para algunos, son claros signos de crecimiento, de un potencial que se está alcanzando, y esto le da fortaleza, energía y satisfacción. A través del tiempo, muchos lo(a) buscarán para que les ayude y les aliente, porque sabrán que usted les ayudará de manera genuina y con gran satisfacción.),
                        %Q(El talento de Desarrollo se puede expresar así: ),
                        %Q(*Teresa S., rectora de universidad:* "Cuando llega el día de la graduación y una estudiante de enfermería cruza el escenario, generalmente es una mujer de treinta y cinco años. Recibe su diploma y, de pronto, se oyen los gritos de un grupo entre el cual hay un niño parado en una silla unas dieciocho filas atrás: '¡Bravo, mamá!' Eso me llena de alegría y siempre lloro".),
                        %Q(*Juan N., ejecutivo de publicidad:* "No soy abogado, médico o fabricante de velas. Mis destrezas son otras. Tienen que ver con comprender a la gente y sus motivaciones y me produce gran placer ver cómo las personas descubren en ellas mismas cosas que no habían creído posibles y traen a la mesa talentos que yo no poseo".),
                        %Q(*Ana G., enfermera:* "Tengo una paciente con una enfermedad pulmonar tan grave que tendrá que permanecer conectada al oxígeno el resto de su vida. Nunca tendrá la energía ni la fuerza para vivir una vida normal. Entro a su habitación y la encuentro desesperada. No sabe si no puede respirar porque está nerviosa, o si está nerviosa porque no puede respirar. Y habla de suicidarse porque no puede trabajar, no puede apoyar a su marido. Entonces le dije que pensara en lo que sí podía hacer en lugar de lo que no podía. Resulta que es muy hábil para las obras manuales, por lo que le dije: 'Mire, hay cosas que usted puede hacer y sé que le producen placer. Entonces hágalas. Es un punto de partida'. Y exclamó llorando: 'Apenas tengo energía para lavar un plato'. Y yo le dije: 'Eso es hoy. Mañana podrá lavar dos'. Para Navidad estaba haciendo toda clase de cosas y además las vendía".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Desarrollo",
                items: ["Pregunte a esta persona cuáles empleados están floreciendo en sus trabajos. Con toda seguridad detectará ese progreso imperceptible que pasará desapercibidopara los demás.",
                        "Ubique a esta persona de tal manera que pueda ayudar a otros integrantes de la organización a crecer. Por ejemplo, bríndele la oportunidad de ser mentora de una o dos personas que ella misma elija o de dictar un curso sobre un tema de la compañía como puede ser la seguridad, los beneficios o el servicio al cliente.",
                        "Esté preparado(a) para pagar el costo de que esta persona pertenezca a una organización de capacitación local.",
                        "Permítale ser quien otorgue el reconocimiento a sus compañeros de trabajo. Disfrutará seleccionando los logros que merecen dicho reconocimiento, y los compañeros que lo reciban sabrán que los elogios son auténticos.",
                        "Puede ser candidato para supervisor, líder de equipo o gerente.",
                        "Si ya ocupa un cargo ejecutivo o de gerencia, busque en su unidad de negocios a las personas que puedan trasladarse a cargos de mayor responsabilidad en la organización, puesto que esta persona habrá ayudado a su gente a crecer y a prepararse para el futuro.",
                        %Q(Refuerce el concepto que esta persona tiene de sí misma como alguien que alienta a otros a exigirse y sobresalir. Dígale, por ejemplo: "Jamás habrían roto la marca sin usted. Su estímulo y seguridad les dio la chispa que necesitaban".),
                        "Sepa que puede proteger a una persona con problemas de desempeño aun cuando dicha persona haya debido ser trasladada o despedida. Ayúdele a centrar ese instinto de ayudar a los demás para que le sirva para ayudar a la gente a lograr el éxito y no para apoyar a quienes sufren dificultades. Lo mejor que puede hacer por una persona que tiene dificultades es buscarle otra oportunidad donde realmente pueda sobresalir."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Desarrollo",
                items_confianza: ["Hacer cosas por el bien de otros es una muestra de carácter y una invitación a confiar. Ayude a otros a que vean cuánto potencial tienen y esto repercutirá positivamente en sus relaciones, así como en su autoestima.",
                                  "Si alguien siente que Ud. intenta hacer algo por ellos porque tiene intenciones ocultas, no lo tome personal. La gente puede ser desconfiada. Intente mantener la calma y demuestre con hechos sus buenas intenciones, por más que esto le tome semanas, meses o años."],
                items_empatia: ["Ud. siente satisfacción al ver a la gente crecer y desarrollarse. Dígaselos. Parte de su éxito tiene que ver con la gente note que está creciendo y eso la motive a seguir haciéndolo. Recuerde: el éxito ajeno es su fuente de placer.",
                                "Alguien dijo alguna vez “aprendemos más de aquellos que amamos” y en su caso esto puede ser perfectamente cierto. Si la gente percibe que Ud. los aprecia, ellos se sentirán apoyados y desarrollarán sus talentos y virtudes mucho más rápido."],
                items_estabilidad: ["Cuando comience a trabajar en el desarrollo de alguien, hágale notar los progresos ni bien ocurran. No dilate sus comentarios positivos, ya que estos proveen la seguridad que esas personas necesitan para dar los primeros pasos. Muéstreles lo cerca que están de dar el siguiente paso.",
                                    "A veces, ese “siguiente paso” resultará un desafío demasiado intimidante para algunos. En esos casos, explíqueles que puede ser necesario más de un intento para darlo, pero eso no significa que no sean capaces de hacerlo.",
                                    "En otros casos, la gente deberá apelar a talentos usados con menor frecuencia o, incluso, desconocidos. Celebre cuando esto ocurra. Significa que su talento Desarrollo está ayudando a que saquen lo mejor de ellos."],
                items_esperanza: ["Haga preguntas que obliguen a que los demás piensen más allá de donde están acostumbrados. Fuércelos a que usen su imaginación, a que sueñen.",
                                  "Investigue qué hacen los mejores mentores para inspirar. Copie sus métodos, no lo que hacen, ya que cada ámbito es único e irrepetible. Cítelos cuando esté frente a personas que se dejan influenciar más fácilmente cuando identifican a quien les aconseja como “famoso” o “exitoso” (o ambos).",
                                  "Ud. siempre estará tentado a aconsejar a más personas de las que puede. Como es difícil controlar esto, oriéntese a controlar el tiempo que invierte con cada una de ellas. Breves intervenciones suelen ser suficientes para llegar a la gente y convencerla de que es capaz de lograr resultados extraordinarios."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Desarrollo",
                items: ["Haga una lista de las personas a las que ha ayudado en su aprendizaje y crecimiento. Revise la lista seguido, y recuerde el impacto que ha tenido en el mundo.",
                        "Busque actividades en las que sus principales responsabilidades incluyan facilitar el crecimiento. Ensenar, entrenar o dirigir puede ser especialmente agradable para Ud.",
                        "Note  cuando otros triunfan, y dígaselos. Sea específico acerca de lo que notó. Las observaciones detalladas de los que los llevo al éxito pueden intensificar su crecimiento.",
                        "Identifique el mentor o mentores que vieron algo especial en Ud. Tómese el tiempo para agradecerles por ayudarlo a crecer, aun cuando esto implique rastrear algún antiguo profesor de escuela y enviarle a él o ella una carta.",
                        "Únase a alguien con un fuerte talento de Individualización. Esta persona puede ayudarlo a ver donde radican los mayores talentos de cada persona. Sin esta ayuda, su instinto de Desarrollo podría llevarlo a alentar a la gente a crecer en áreas en las que realmente no tienen talento.",
                        "Evite cuidadosamente apoyar a quien constantemente se debe esforzar en su tarea. En esos casos, la mejor acción de desarrollo que puede hacer es alentarlo a buscar una tarea diferente – una tarea en la que encaje.",
                        "Siempre se sentirá obligado a mentar más gente de la que puede. Para cumplir con este deseo interno mientras mantiene su objetivo primordial, considere el impacto de ser un “mentor momentáneo”. Muchas de los más profundos y memorables momentos de evolución ocurren cuando las palabras correctas son dichas en el momento justo – palabras que facilitan la comprensión, reencienden una pasión, abren los ojos a una oportunidad, y cambian el curso de una vida.",
                        "No sobre invierta en  causas perdidas. Su inclinación natural a ver lo mejor en la gente y las situaciones pueden crearle un punto ciego que le impedirá avanzar a situaciones más oportunas.",
                        "Su talento de Desarrollo puede llevarlo a estar tan inmerso en el crecimiento de los otros que Ud. Ignore su propio desarrollo. Recuerde que no puede dar lo que no tiene. Si quiere tener un mayor impacto en el bienestar y crecimiento de los otros, Ud. necesita seguir creciendo. Encuentre un mentor o coach que pueda dedicarse a Ud.",
                        "Haga una lista de la gente a que quiera ayudar a desarrollarse. Escriba las que considera como fortalezas de cada uno. Dedique un tiempo para reunirse con cada uno de ellos de manera regular – incluso si son solo 15 minutos -  y hablen acerca de sus objetivos y sus fortalezas."]
              }
          }
        ]}).to_json},
      {nombre: "Conexión", dominio_id: 3, libro: "La píldora del liderazgo, Kenneth H. Blanchard, Marc Muchnick", pelicula: "7 POUNDS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Conexión**",
                texto: [  %Q(Cuando usted tiene el talento Conexión, usted cree que todas las cosas ocurren por una razón. Usted está seguro(a) de eso, porque en su alma usted sabe que todos estamos conectados. Sí, somos individuos responsables de nuestros propios juicios y en posesión de nuestro libre albedrío; no obstante, somos parte de algo más grande. Algunos pueden definirlo como el "inconsciente colectivo"; tal vez otros lo llamen espíritu o fuerza de la vida. Cualquiera que sea la definición que elija, a usted le da confianza saber que no estamos aislados unos de otros, ni de la tierra ni de la vida que hay en ella. Este sentimiento de conexión implica ciertas responsabilidades. Si todos somos parte de un Todo, entonces cada una de nuestras acciones repercute en el otro; por lo tanto, no debemos causar daño porque nos haríamos daño a nosotros mismos; no debemos explotar a nadie porque nos explotaríamos a nosotros mismos; no debemos causar sufrimiento a nadie porque sufriríamos. Esta responsabilidad que usted asume conscientemente, da origen a su sistema de valores. Usted es considerado(a), afectivo(a) y siente la necesidad de incluir y aceptar a los demás. Teniendo la certeza de la unidad que hay en el género humano, tiende puentes de unión entre las personas de diferentes grupos o culturas. Usted sabe que hay algo más, que existe un propósito que va más allá de nuestras vidas cotidianas, y al poder percibir esto, puede alentar a los demás. Sus objetos de fe dependerán de su formación y cultura, no obstante su fe es fuerte. Esta les sostiene a usted y a sus amigos más cercanos frente a los misterios de la vida.),
                          %Q(El talento Conexión se puede expresar así: ),
                          %Q(*Nelda M., ama de casa:* "La humildad es la esencia de Conexión. Uno debe saber lo que es y lo que no es. Tengo un poco de esa sabiduría y, aunque no la tengo toda, lo poco que tengo es real. Esto no es soberbia, sino verdadera humildad. Uno está seguro de sus dones, verdaderamente seguro, pero sabe que no tiene todas las respuestas. Uno comienza a sentirse conectado con los demás porque sabe que ellos tienen la sabiduría de la cual uno carece. No es posible sentirse conectado si uno cree que lo tiene todo".),
                          %Q(*Rosa T., psicóloga:* "A veces miro mi tazón de cereal en las mañanas y pienso en los centenares de personas que hicieron posible ese desayuno: los agricultores en sus campos; los bioquímicos que fabricaron los plaguicidas; los trabajadores de las bodegas en las plantas procesadoras de alimentos; hasta los comercializadores que de alguna manera me convencieron de comprar esta caja de cereales y no otra que estaba al lado en el estante. Sé que suena raro, pero agradezco a todas esas personas, y por ese simple hecho me siento más compenetrada con la vida, más conectada con las cosas, menos sola".),
                          %Q(*Carlos M., maestro:* "En la vida suelo ver las cosas en blanco y negro. Sin embargo, cuando se trata de comprender los misterios de la vida, por alguna razón soy mucho más tolerante. Me interesa enormemente aprender sobre todas las religiones. En este momento estoy leyendo un libro en el que se comparan el judaísmo, el cristianismo y la religión de los cananitas. El budismo, la mitología griega: realmente es interesante ver la relación que existe de alguna manera entre todos estos temas".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Conexión",
                items: ["Esta persona probablemente tendrá puntos de vista sociales que defenderá fuertemente. Escúchela con atención para saber cuáles son esos puntos de vista. Si usted los acepta podrá influir en la profundidad de la relación que pueda desarrollar con ella. ",
                        "Esta persona probablemente tendrá una inclinación espiritual y quizás una fe sólida. El hecho de que usted conozca y, cuando menos, acepte su postura espiritual, hará que esta persona se sienta cada vez más a gusto de trabajar con usted. ",
                        "Aliente a esta persona a tender puentes con los distintos empleados de la organización. Es alguien que piensa intuitivamente en la conexión que hay entre las cosas, de manera que hará una gran labor enseñando a la gente las dependencias recíprocas entre unos y otros. Bien ubicada, podrá desarrollar equipos de trabajo en su compañía.",
                        "Seguramente acogerá muy bien la idea de pensar en la misión de la organización y desarrollarla. Le agrada sentirse parte de algo más grande que ella misma. Si usted también tiene un talento fuerte de Conexión, comparta con ella artículos, escritos y experiencias. De esa manera se reforzarán mutuamente su punto de vista."]

              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Conexión",
                items_confianza: ["Su filosofía de vida lo impulsa a hacer cosas que están más allá de sus propios intereses. Explicite sus creencias, comparta sus valores. Cuando Ud. comparte estas cosas, los demás toman conciencia del respeto que Ud. tiene por cada ser humano, independientemente de sus diferencias.",
                                  "Busque tareas o responsabilidades donde Ud. pueda tener contacto con gente diferente entre sí, incluido de diferentes lugares. Intente dejar de lado pensamientos del tipo “nosotros o ellos”. Ud. construirá confianza a partir de contemplar los intereses de todos por igual."],
                items_empatia: ["Ud. busca lazos de unión. Practique realizar preguntas que rápidamente le permitan encontrar puntos en común con o entre las personas que trabajan con Ud. Cuando los encuentre, intente utilizarlos como punto de partida para una nueva relación.",
                                "Como paso siguiente a los puntos en común, Ud. debería encontrar actividades donde esos puntos en común puedan transformarse en acción. Estas acciones le permitirán terminar de conocer a las personas y no quedarse solamente con las cosas que comparte.",
                                "Ud. tiene la capacidad de agrupar gente alrededor de un objetivo o sueño en común. Ud. se siente bien cuando las partes comienzan a parecerse a un todo. No deje de mostrarle a otros los lazos necesarios para que ese todo tome forma. A muchas personas les resulta difícil verlo, por lo que necesitan de su talento Conexión para lograrlo."],
                items_estabilidad: ["Su facilidad para ver el bosque más allá del árbol puede tranquilizar a ese tipo de personas que suele “ahogarse en un vaso de agua”. Ayúdelos a poner esas dificultades en perspectiva.",
                                    "La gente se siente más segura cuando está rodeada de cosas que le resultan familiares. Su capacidad para conectar cosas, personas, ideas y trabajo les ayudará a sentir que forman parte de una red, que trabaja unida y que no están solos frente a la adversidad."],
                items_esperanza: ["Muchas veces se sorprenderá al ver lo mucho que otros demoran en ver conexiones que Ud. detecta inmediatamente. Ayúdelos a ver el mundo a través de sus ojos. Cuénteles cuál es su “truco” para encontrar similitudes y para construir un todo que se enriquezca a partir de las diferencias entre las partes. Muéstreles cómo ellos pueden también formar parte de un todo y tener una visión más amplia de las cosas.",
                                  "Ud. es muy consciente de las barreras y limitaciones que suele imponer la estructura organizacional, pero esto no lo detiene. Muchas de estas limitaciones son ajenas a su capacidad de conectar más allá de las fronteras y esto le permite crear equipos interdisciplinarios que transcienden áreas o departamentos.",
                                  "Ayude a otros a ver las conexiones que tienen entre sus talentos, sus actos e incluso su misión. Cuando la gente cree en lo que hace y siente que forma parte de algo que la trasciende suelen comprometerse mucho más fácilmente."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Conexión",
                items: ["Considere actividades donde Ud. pueda escuchar y aconsejar. Puede volverse bueno para ayudar a los demás a ver conexiones y propósito en la vida diaria.",
                        "Explore modos específicos de expandir su sentido de conexión, como comenzar un club de lectura, asistir a un retiro o unirse a una organización que practique la Conexión.",
                        "Dentro de su organización, ayude a sus compañeros de trabajo a ver como sus esfuerzos son parte necesaria del todo. Puede ser un líder construyendo equipos y ayudando a la gente a sentirse importante.",
                        "Ud. Conoce las fronteras y limites creadas dentro de las organizaciones y comunidades, pero las trata como flexibles y fluidas. Use su talento de Conexión para derribar aquellos muros que dificultan el compartir información.",
                        "Ayude a la gente a identificar las conexiones entre sus talentos, sus acciones, su misión y sus logros. Cuando la gente cree en lo que está haciendo y se siente parte de algo mayor, el compromiso al logro se incrementa.",
                        "Asóciese con alguien que tenga un fuerte talento de Comunicación. Esta persona puede ayudarlo a elegir las palabras para describir ejemplos de conexiones en el mundo real.",
                        "No pierda mucho tiempo tratando de convencer a otros de ver el mundo como una telaraña interconectada. Reconozca que su sentido de conexión es intuitivo. Si los demás no comparten su intuición, los argumentos racionales no lograran persuadirlos.",
                        "Su filosofía de vida lo obliga a moverse más allá de sus propios intereses y los intereses de su entorno inmediato y sus esferas de influencia. Como tal, Ud. Puede ver mayores implicancias para su comunidad y el mundo. Explore maneras de comunicar estas percepciones a los demás.",
                        "Asuma responsabilidades globales o interculturales que le permitan capitalizar su entendimiento de los temas comunes inherentes a la humanidad. Construya habilidades universales, cambie la mentalidad de aquellos que piensan en términos de “nosotros” y “ellos”.",
                        "El talento de Conexión puede ayudarlo a ver más allá de la capa superficial de las personas y descubrir su interior. Tengo esto en cuenta en particular cuando trabaje con alguien cuyo ambiente sea muy diferente al suyo. Ud. Tiene el talento natural de ver más allá de los rótulos y enfocarse en las necesidades esenciales de los otros."]
              }
          }
        ]}).to_json},
      {nombre: "Empatía", dominio_id: 3, libro: "Meta-Management 2, Fredy Kofman", pelicula: "SCHINDLER'S LIST", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Empatía**",
                texto:[ %Q(Usted siente las emociones de quienes lo(a) rodean como si se tratara de sus propios sentimientos. De forma natural ve al mundo a través de los ojos de los demás, comparte sus vivencias y perspectivas, aunque a veces pueda no estar de acuerdo con éstas. Empatía no se refiere necesariamente a la lástima o compasión que puede sentir por las situaciones difíciles que pasa todo el mundo. Tampoco significa que usted acepta las decisiones que cada persona toma, sino que con su talento Empatía usted es capaz de entenderlas. Esa capacidad instintiva de comprensión es poderosa. Usted escucha las preguntas que aún no se han expresado, anticipa las necesidades de otros. Cuando a los demás se les dificulta encontrar las palabras adecuadas, usted tiene la palabra idónea y la expresa en el tono correcto. Usted ayuda a las personas a reconocer y expresar mejor sus sentimientos dándole voz a su vida emocional. Por esta razón la gente lo(a) busca.),
                        %Q(El talento Empatía se puede expresar así:),
                        %Q(*Alicia J., administradora:* "Hace poco estuve en una reunión de junta directiva donde una persona presentó una idea crucial para ella y para la vida de ese grupo. Cuando terminó, nadie había escuchado su opinión, nadie le había puesto atención realmente. Fue un momento de intensa desmoralización para ella. Lo vi en su cara y no fue ella misma durante un par de días. Finalmente decidí hablarle, utilizando palabras que le ayudaran a describir lo que sentía. Le dije: 'Algo anda mal', y comenzó a hablar. Le dije, entre otras cosas: 'Realmente la comprendo. Sé cuán importante era esto para usted y veo que está alterada'. Finalmente ella pudo poner en palabras lo que sentía y me dijo: 'Usted fue el único que escuchó lo que dije y que me ha manifestado algo al respecto'),
                        %Q(*Alberto H., administrador:* "Cuando tomamos decisiones en nuestro equipo, siempre pregunto: '¿Qué dirá fulano al respecto?' '¿Qué dirá sutano?' En otras palabras, me pongo en la posición de los demás y pienso en los argumentos desde otro punto de vista a fin de poder ser más persuasivo".),
                        %Q(*Janet P., maestra:* "Nunca jugué baloncesto porque en mi época no era un deporte femenino, pero creo saber en qué momento cambia la atmósfera durante un partido y siento urgencia de decirle al entrenador: 'Anímelos, los está perdiendo'. La empatía también funciona en grupos grandes: uno siente a la multitud".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Empatía",
                items: ["Pídale a esta persona que le ayude a saber cómo se sienten ciertos empleados de su organización. Es sensible a las emociones de los demás.",
                        "Antes de lograr que se comprometa con una determinada decisión, pregúntele cómo se sienten ella y los demás acerca de todo el asunto. Para esta persona, las emociones son tan reales como otros factores más prácticos, y deben tomarse en consideración al tomar las decisiones.",
                        "Preste atención, pero no exagere su reacción cuando esta persona llore. Las lágrimas son parte de su vida. Puede sentir la alegría o la desgracia de otra persona con mayor intensidad que la persona misma.",
                        "Ayude a esta persona a ver su Empatía como un don especial. Es algo tan natural en ella que puede pensar que el resto del mundo siente como ella, o sentirse avergonzada por la intensidad de su sentimiento. Muéstrele cómo utilizar este talento para beneficio de todos.",
                        %Q(Ponga a prueba la capacidad de esta persona de tomar decisiones por instinto y no por lógica. Es probable que no pueda explicar por qué una determinada acción es la correcta, pero de todas maneras acertará muchas veces. Pregúntele: "¿Qué siente respecto de lo que debemos hacer?"),
                        "Póngala a trabajar con personas positivas y optimistas. Detectará estos sentimientos y se sentirá motivada. Y aléjela al mismo tiempo de los pesimistas y los cínicos, quienes le producirán depresión.",
                        "Cuando los empleados o los clientes tengan dificultades para entender la razón de una acción, pida ayuda a esta persona. Podrá comprender lo que ellos no pueden captar."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Empatía",
                items_confianza: ["Ayude a otros a direccionar emociones en situaciones problemáticas. Respete sus sentimientos y déjelos expresarse en la manera que ellos prefieran. Reconozca esas emociones de manera honesta y esto será el punto de partida para construir confianza.",
                                  "La confianza es un tesoro para Ud. Sus colaboradores notarán esto inmediatamente, por lo que deberá estar preparado para escuchar sus deseos, quejas y preocupaciones de manera frecuente. Su deseo genuino de ayudarlos será muy valorado por ellos."],
                items_empatia: ["Ud. siente placer cuando otros se alegran. Por lo tanto, es muy probable que Ud. esté cerca de las personas cuando estas triunfan o tienen éxito en algo. Aproveche estos momentos para elogiar y para hacerles saber que Ud. está orgulloso de ellos. Las personas detectarán que su felicidad es genuina y lo harán sentir parte del logro.",
                                "Su talento Empatía le permitirá comprender los sentimientos de otros incluso antes de que ellos mismos lo hagan. En ocasiones así, haga preguntas que guíen, sin hacerles sentir que algo está mal por no sentir lo que Ud. ya siente por ellos. Ayúdelos a tomar conciencia de sus sentimientos y lo que estos representan."],
                items_estabilidad: ["Atento a los sentimientos de los demás, Ud. tiene facilidad para rápidamente detectar los estados de ánimo de los lugares inmediatamente. Su talento Empatía le permitirá tener las herramientas para realizar pequeños ajustes, sin que los otros interpreten que sus sentimientos o estado de ánimo está fuera de lugar. Ud. tiene la capacidad de canalizar esto y llevarlo a buen puerto.",
                                    "La paciencia y el entendimiento son su sello distintivo. Tómese todo el tiempo para escuchar y no apresure sus conclusiones. Darle tiempo a las personas para que elaboren sus ideas y las puedan expresar a la velocidad adecuada es una excelente forma de proveer estabilidad y tranquilidad."],
                items_esperanza: ["Es probable que otros lo elijan como su mentor o consejero. Haga explícito su reconocimiento hacia ellos por haberlo elegido. Siéntase honrado. Intente guiarlos o inspirarlos utilizando las mismas palabras con las que ellos describen lo que sienten o quieren.",
                                  "Su talento Empatía le permite anticipar eventos y reacciones. Debido a que Ud. es un fino observador de los sentimientos ajenos, es muy probable que Ud. intuya muchas cosas que sucederán en su organización antes de que estas sean de público conocimiento. Canalice esta información hacia emociones positivas para crear en el grupo una mayor sensación de optimismo y esperanza."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Empatía",
                items: ["Ayude a sus amigos y compañeros a reconocer cuando un colega está pasando por un mal momento. Recuerde, la mayoría de la gente no tiene su habilidad de reconocer situaciones sensibles.",
                        "Actúe en forma rápida y segura cuando otros se comportan de manera no saludable con ellos mismos o los demás. El entender el estado emocional de alguien no significa que Ud. deba justificar ciertas conductas. Tenga en cuenta que cuando su empata se convierte en compasión pueden verlo en “posición de víctima”.",
                        "Asóciese con alguien con un fuerte talento de Mando o Impulso. Esta persona puede ayudarlo a actuar, aun cuando los sentimientos de la gente puedan ser heridos.",
                        "Considere ayudar a otros siendo su mentor o confidente. Dado que la confianza es primordial para Ud., es probable que la gente se sienta cómodaacercándose a Ud. en caso de necesidad. Su discreción y deseo genuino de ayudar serán altamente valorados.",
                        "En ocasiones, su empatía hacia otros puede sobrepasarlo. Establezca rituales que pueda usar al final de su día para marcar que el trabajo ha terminado. Esto lo ayudara a proteger sus emociones y prevenir el burnout.",
                        "Identifique un amigo que tenga fuertes talentos de Empatía y valide sus observaciones con él/ella.",
                        "Debido a su sensibilidad acerca de los sentimientos de los otros, fácilmente mide el tono emocional de una habitación. Use sus talentos para construir puentes de entendimiento y soporte mutuo. Su empatía resulta especialmente importante durante tiempos difíciles porque demuestra su preocupación, generando de esa manera lealtad.",
                        "Ser testigo de la felicidad de otros le produce placer. Es por eso que es probable que encuentre oportunidades para remarcar los éxitos de los demás y enfatizar positivamente sus logros. En cada oportunidad, diga unas palabras de aliento y reconocimiento. Al hacerlo, dejara una profunda y valiosa impresión.",
                        "Porque Ud. es un observador de los sentimientos de los demás, es probable que intuya lo que va a suceder antes de que otros lo noten. A pesar de que intuiciones pueden parecer nada más que “corazonadas”, tome nota de ellas. Pueden convertirse en un activo valioso.",
                        "Hay veces en que la empatía no necesita de palabras. Un gesto amable puede ser todo lo que alguien necesita para sentirse reconocido. Utilice su talento de Empatía para reconfortar a los demás sin hablar, una mirada, una sonrisa o una palmada en la espalda."]
              }
          }
        ]}).to_json},
      {nombre: "Armonía", dominio_id: 3, libro: "Sí de acuerdo Como negociar sin ceder, Roger Fisher,Bruce Patton,William Ury", pelicula: "REMEMBER THE TITANS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Armonia**",
                texto: [ %Q(Su objetivo es lograr un común acuerdo. Según su parecer, poco puede obtenerse del conflicto y del enfrentamiento, y por eso los minimiza. Cuando sabe que la gente que lo(a) rodea tiene opiniones diferentes, usted trata de encontrar un terreno común. Intenta disuadirlos para evitar la confrontación y buscar la armonía. De hecho, la armonía es uno de sus valores fundamentales. No puede entender cómo la gente desperdicia su tiempo tratando de imponer sus opiniones a los demás. ¿No seríamos más productivos si mantuviéramos al margen nuestras opiniones y buscáramos consenso y apoyo? Para usted esto es lo mejor, y vive de acuerdo con esa convicción. Usted guarda silencio cuando otros pretenden dictar sus objetivos, argumentos y convicciones. Cuando otros deciden tomar otra dirección, usted, para que haya armonía, está dispuesto(a) a modificar sus propios objetivos para unírseles, siempre y cuando sus valores intrínsecos no choquen. Cuando otros comienzan a discutir, defendiendo sus teorías o conceptos preferidos, usted se aparta de la discusión y prefiere hablar sobre cosas prácticas, realistas, en las que todos podrían coincidir. Para usted, todos estamos en el mismo barco y necesitamos de ese barco para llegar a donde queremos ir. Es un buen barco y no es necesario zarandearlo sólo con el fin de probar que puede hacerlo.),
                         %Q(El talento Armonía se puede expresar así: ),
                         %Q(*Margarita C,  monja benedictina:* “Me  agrada  la gente. Me relaciono fácilmente porque soy buena para adaptarme. Asumo la forma del recipiente en el cual me vierten, de manera que no me irrito con facilidad".),
                         %Q(*Carlos M., profesor:* "No me gusta el conflicto en la clase, pero he aprendido a dejar que las cosas sigan su curso en lugar de tratar de ponerles freno inmediatamente. Cuando comencé a enseñar, si alguien decía algo negativo me preguntaba: '¿Por qué tuvo que decir eso?' y de inmediato trataba de desechar el comentario. Ahora sencillamente trato de oír la opinión de otra persona en la clase para poder tener distintos puntos de vista sobre un mismo tema".),
                         %Q(*Enrique Q., técnico:* "Recuerdo como si fuera hoy las peleas entre los niños de la escuela cuando yo tenía diez u once años. Por alguna razón, sentía la urgencia de intervenir y tratar de encontrar un común acuerdo. Yo era el pacifista".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Armonía",
                items: ["En la medida de lo posible, aparte a esta persona del conflicto. No la incluya en reuniones en las que seguramente habrá conflicto porque no es buena para enfrentar a otras personas.",
                        "Determine la forma de llegar a acuerdos con ella y revisen juntos dichos acuerdos periódicamente. Rodéela de otras personas fuertes en el talento Armonía. Siempre tendrá mayor claridad, será más productiva y más imaginativa cuando sabe que tiene apoyo. No pierda tiempo discutiendo temas polémicos con esta persona. No disfruta del debate sólo por debatir. Centre sus conversaciones en asuntos prácticos sobre los cuales puedan tomarse medidas claras.",
                        "No espere siempre que muestre su desacuerdo con usted aunque usted esté equivocado. En aras de la armonía, esta persona podrá aceptar sus ideas a pesar de no considerarlas buenas. Por consiguiente, usted necesitará otras personas que instintivamente digan lo que piensan a fin de ayudarse a pensar con claridad.",
                        "En ocasiones, cuando un desacuerdo impida el progreso, esta persona podrá encontrar una salida. No resolverá necesariamente el tema del debate, pero ayudará a los demás a identificar puntos de común acuerdo. Estos puntos de común acuerdo pueden ser el primer paso para reanudar una dinámica productiva de trabajo.",
                        "Es una persona que necesita estar segura de lo que hace. Ayúdele a encontrar un respaldo autorizado (opinión de un experto) para las medidas que toma."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Armonía",
                items_confianza: ["Ud. muestra respeto por los demás cada vez que valora su aporte y les ayuda a ser escuchados. A veces, Ud. necesitará señalar que el punto de vista de cada persona es rescatable y merecedor de respeto e, incluso, acuerdo. Aprenda a mostrarle a otros de manera breve y efectiva, lo valioso que es escuchar a todos.",
                                  "Las voces más fuertes no deberían las más escuchadas. En algunas ocasiones, Ud. tendrá que interrumpir el debate y colaborar para que cada persona sea escuchada. Cuando le toque hacerlo, asegúrese que se cree una atmósfera de confianza y respeto necesarios para que aquellos con más dificultades para expresarse se sientan lo suficientemente seguros como para hacerlo. Insistir con la idea de que las mejores decisiones son aquellas que se toman luego de haber escuchado la mayor cantidad de opiniones posible generará confianza en Ud. y en su criterio justo a la hora de dar oportunidades de hablar a todos los que deseen hacerlo."],
                items_empatia: ["Su talento Armonía hace la vida de las personas más placentera. Ud. es capaz de reducir la fricción y los conflictos y eso, a su vez, reduce el stress. Invierta algo de tiempo en comprender realmente el propósito de su organización. Cuando las tensiones aumenten, recuérdeles a los demás que hay una misión común de la que todos se deben ocupar, independientemente de las diferencias que hayan surgido últimamente. Además, como una forma de calmante para los conflictos, sus iniciativas harán que los demás sientan que deben ocuparse de las tareas que tienden al bien de todos. En esas circunstancias, muchos acudirán a Ud. porque saben que Ud. considera las opiniones de todos y valora sus puntos de vista.",
                                "Buscar características en común entre las personas es una característica natural que Ud. posee. Su búsqueda permanente de la armonía entre individuos y grupos es una muestra de que a Ud. le interesan y mejora tanto las relaciones personales como las grupales. ¿Cuántos puntos en común puede encontrar por interacción? Cuéntelos y vea si puede mejorar esto con el tiempo. Mientras más grande sea la cantidad de puntos en común, mayor será la oportunidad de establecer relaciones duraderas y significativas."],
                items_estabilidad: ["Ud. naturalmente provee paz y entendimiento entre la gente. Su estilo permite que todos estén conectados con el grupo, aun cuando haya diferencias de opinión. Recuérdeles a todos que la fortaleza de un grupo yace en su habilidad para presentar nuevas ideas de manera respetuosa. Su capacidad para acercar a todos aquellos con ideas diferentes ayuda a que todos los miembros de su equipo se sientan más seguros; independientemente de cuál sea el tema tratado, el equipo permanecerá intacto.",
                                    "Ud. es capaz de calmar las aguas y hacer que todos se tranquilicen. Ud. se encarga de asegurar que nadie se sienta herido por palabras sin sentido en medio de una discusión acalorada. Crear esa atmósfera de dignidad y respeto ayudará a que todos se sientan a salvo cuando sea su momento de opinar."],
                items_esperanza: ["Cree ámbitos de interacción o foros donde la gente pueda dar su opinión y sea escuchada. Esto ayudará a que las personas paulatinamente se van involucrando más en sus proyectos o iniciativas. De esta manera, Ud. permitirá que todos vayan mejorando su desempeño de manera gradual y sostenida.",
                                  "Adquiera habilidades y herramientas que le ayuden a depurar su talento para resolver conflictos sin agitar más las situaciones. Intente ir incorporando elementos a su set de herramientas de resolución de conflictos e invite a otros a que compartan ese camino con Ud. Aliente a otros a transformarse en expertos en encontrar soluciones mediante el consenso. Aprenda y enseñe al mismo tiempo. "]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Armonía",
                items: ["Use su talento Armonía para una red de personas con distintos puntos de vista. Confíe en estas personas cada vez que necesite expertise. Su apertura frente a estas muy diversas perspectivas le ayudará a crecer.",
                        "Cuando dos personas discutan, pregúntele a otros del grupo qué opinión tienen al respecto. Cada vez que Ud. aumenta la cantidad de voces en una conversación, más chances hay de encontrar puntos en común donde puedan estar de acuerdo. Recuerde: Ud. acerca a la gente.",
                        "Evite cualquier tipo de rol donde tenga que confrontar con gente a diario. El sector comercial o las “llamadas en frío” a clientes lo frustrarán y/o pondrán de mal humor.",
                        "Practique diversas formas de resolver conflictos sin confrontación. Si no pule sus herramientas, se encontrará huyendo de los conflictos en lugar de enfrentarlos, lo que podría propiciar un comportamiento del tipo pasivo-agresivo.",
                        "Asóciese con gente que posea los talentos Mando o Impulso. Cuando todos sus esfuerzos para disolver conflictos se agoten, ellos lo ayudarán a enfrentarlos sin titubear.",
                        "Cree ámbitos de interacción o foros donde la gente pueda dar su opinión y sea escuchada. Esto ayudará a que las personas paulatinamente se van involucrando más en sus proyectos o iniciativas.",
                        "Sea consciente de que su inclinación por crear armonía dondequiera que Ud. vaya puede lograr el efecto contrario en muchas personas. La gente con talento Logro, por ejemplo, pueden sentir que se está perdiendo el tiempo y estarán ansiosos por tomar una decisión. Aprenda a comunicar brevemente la importancia de escuchar a los demás siempre.",
                        "Entienda que siempre habrá personas que intentarán sacar ventaja de sus intentos por crear armonía. A veces, cuando a todas las personas se les da la oportunidad de hablar y expresar sus puntos de vista, algunos pueden aprovechar para “promocionarse” o conversar acerca de temas que no tienen nada que ver con el que se está planteando en ese momento. En circunstancias como esa, no dude en interrumpir a quien lo esté haciendo y retome el curso normal de la conversación. El balance entre escuchar y ser eficiente es clave para lograr armonía.",
                        "Durante las discusiones, busque el lado práctico de las cosas. Ayude a otros a que también lo hagan. Este suele ser el punto de partida para muchos acuerdos.",
                        "El respeto es una de sus fortalezas. Ud. tiene facilidad para apartarse de cualquier cuestión cuando entiende que alguien con más experiencia puede participar en el asunto. Fomente este lado suyo, siendo proactivo al invitar a otros a que sumen su experiencia en los asuntos donde Ud. no se siente lo suficientemente experto."]
             }
          }
        ]}).to_json},
      {nombre: "Inclusión", dominio_id: 3, libro: "Fish, Stephen C. Lundin, Harry Paul, John Christensen", pelicula: "INVICTUS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Inclusión**",
                texto: [ %Q(La filosofía en torno a la cual usted orienta su vida es la de incluir a todas las personas y hacer que se sientan parte del grupo. En el polo opuesto están quienes tienen la tendencia a formar grupos exclusivos, filosofía con la cual usted no comulga. Desea ampliar el grupo de tal manera que se beneficie el mayor número de personas. Detesta ver a alguien mirando desde afuera y piensa: "¡Qué fea sensación debe sentir esa persona por el aislamiento!". Entonces dice: "Ampliemos el grupo"; usted desea atraerlos para que ellos se sientan aceptados, se sientan mejor. Es natural para usted aceptar a los demás, independientemente de la raza, el sexo, la nacionalidad, la personalidad, las creencias o la posición social. Por esta razón usted emite muy pocos juicios, ya que estos hieren los sentimientos de las personas. ¿Por qué hacerlo si no hay necesidad? Su tendencia natural de aceptar a las personas puede no basarse en percibir que existen diferencias y que deben ser respetadas. Lo elemental es que todos somos semejantes, ya que cada uno es igualmente importante y único, por lo tanto nadie debe ser ignorado. Cada uno de nosotros debe ser incluido, es lo menos que merecemos.),
                         %Q(El talento Inclusión se puede expresar así: ),
                         %Q(*Ernesto B., consultor de recursos humanos:* "Desde que era niño, aunque era muy tímido, siempre me aseguraba de invitar a los demás a jugar. No me gustaba que nadie se quedara por fuera cuando escogíamos equipos o bandos en la escuela. En efecto, recuerdo que cuando tenía diez u once años tenía un amigo que no pertenecía a nuestra iglesia pues era católico. Un día estábamos en un banquete de la iglesia y él se presentó en la puerta porque generalmente celebrábamos ahí una actividad juvenil. Yo me puse de pie inmediatamente y lo llevé hasta donde estaba mi familia y lo senté a la mesa".),
                         %Q(*Jeremías D., abogado defensor:* "Cuando comencé a trabajar como abogado conocía a la gente y hacía amistad con ella casi desde el primer momento, pero luego descubría que alguna persona tenía problemas aunque ya había asistido a mis reuniones y era parte de mi círculo social. Guillermo, mi socio, se pregunta siempre qué es lo que me mueve a incluir a las personas. Y a mí me toca averiguar qué fue lo que me indujo a simpatizar con las personas en el primer momento y a disfrutar tanto de su compañía. Entonces en ese aspecto Guillermo y yo nos concentramos... porque una vez que incluyo a alguien en mi círculo, no soy de los que después le cierra las puertas".),
                         %Q(*Ivan D., instructor corporativo:* "En clase sé cuando alguien se aisla y entonces hago lo necesario para atraerlo nuevamente a las deliberaciones del grupo. La semana pasada hablamos largamente sobre el tema de las evaluaciones del desempeño y noté que una señora permanecía en silencio. Entonces le dije: 'Mónica, usted se ha sometido a evaluaciones. ¿Tiene algo que decir al respecto?' Creo que esto me ha ayudado como instructor, porque cuando desconozco una respuesta, muchas veces es la persona a quien induzco a hablar quien me la brinda".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Inclusión",
                items: ["A esta persona le interesa que todos se sientan parte del equipo. Pídale que trabaje en un programa de orientación para los empleados nuevos. Sentirá mucho entusiasmo ante la idea de buscar formas de dar la bienvenida a los nuevos.",
                        "Pídale que dirija un grupo especial formado para reclutar personas de las minorías para la organización. Esta persona tiene una sensibilidad natural hacia quienes han sido excluidos.",
                        "Cuando haya actividades de grupo, pídale que se cerciore de que todos hayan sido invitados. Se esforzará para que ninguna persona o ningún grupo sea olvidado.",
                        "También puede aprovechar el talento Inclusión para trabajar con los clientes. Esta persona, bien ubicada, podrá ser muy eficaz para demoler las barreras entre los clientes y la compañía.",
                        "Puesto que probablemente no apreciará los productos o servicios hechos para unos cuantos clientes selectos, ubíquela para que trabaje en productos o servicios pensados para un mercado amplio. Disfrutará planeando las formas de abrir completamente el mercado.",
                        "En ciertas situaciones podría ser apropiado pedirle que se constituya en el eslabón entre la organización y las entidades sociales de la comunidad."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Inclusión",
                items_confianza: ["Su actitud opuesta al elitismo inspira respeto. Los demás confían frecuentemente en su capacidad para encontrar factores comunes en los grupos y permitir que todos hagan su aporte.",
                                  "Su tendencia a aceptar a otros y a sus aportes es automática. Ud. nunca discute los pros y contras de contar con alguien. Ud. simplemente los suma. Parte de la confianza que Ud. necesita que otros depositen en Ud. vendrá al mostrarles a otros el respeto que Ud. tiene por los aportes que todos pueden hacer en un grupo."],
                items_empatia: ["Todos necesitamos un amigo con talento Inclusión para sentir parte de un nuevo grupo, un trabajo o incluso en una fiesta. Ud. es capaz de conectar a la gente sin estar en el medio, sino simplemente encargándose de conectar las cosas en común de los demás.",
                                "Utilice esta habilidad en su trabajo con lo que recién se incorporan a la organización. Muéstreles el camino. Ayúdelos a recorrer los primeros metros. Cuando descubra algún talento en ellos, coméntelos inmediatamente con aquellos que llevan un tiempo trabajando con Ud."],
                items_estabilidad: ["La estabilidad comienza a fortalecerse a partir de la noción de que nadie será excluido. Ser consistente con sus invitaciones y abierto a un amplio espectro de gente serán las claves para que los demás sepan que para Ud. ellos son siempre bienvenidos.",
                                    "Su actitud “siempre hay lugar para uno más” será de suma utilidad cuando alguien se sume a su equipo, ya que promueve la inclusión y desalienta la competencia innecesaria."],
                items_esperanza: ["Sea un “coach inclusivo”. Comparta sus ideas para ayudar a otros a sentirse bienvenidos. Si Ud. logra que se sientan de esa manera, es probable que ellos comiencen a hacer aportes significativos y que ellos, a su vez, hagan sentir de la misma manera a otra persona. En poco tiempo Ud. habrá logrado crear una cadena de esperanza y buen clima.",
                                  "Tenga en cuenta que la gente muchas veces se pondrá en contacto con otros a través de Ud. Ud. los conectará y hará de nexo para que ellos puedan desarrollarse y, al mismo tiempo, sean ellos quienes creen una red de relaciones."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Inclusión",
                items: ["Considere actividades donde pueda ser responsable de representar voces que generalmente no son escuchadas. Ud. Puede obtener una gran satisfacción de ser el portavoz de dichas personas.",
                        "Busque oportunidades de conectar gente de diversas culturas y ambientes. Ud. puede ser un líder en esta área.",
                        "Ayude a aquellos nuevos en la organización o grupo a integrarse al conocer nuevas personas. Ud. siempre será un experto en hacer que la gente se sienta rápidamente aceptada e incluida.",
                        "Como anti-elitista puede chocar con aquellos que sienten que se han ganado el derecho al poder y ciertos beneficios. En vez de cuestionar sus reclamos, use su perspicacia para ayudar a que todos encuentran un terreno común y valoren sus contribuciones.",
                        "Reconozca la dualidad que siente cuando debe dar malas noticias. Busque  colegas que puedan ayudarlo a justificar su posición para no tener que disculparse o suavizar demasiado su mensaje.",
                        "No toda la gente es amable o simpática. Mientras que muchos de sus amigos o compañeros pueden alejarse de la gente difícil, Ud. tiene una capacidad natural para preocuparse por todas las personas. Que los demás sepan que pueden acudir a Ud. si sienten que han llegado al límite con una persona problemática.",
                        "Escoja roles en los que está continuamente trabajando e interactuando con gente. Disfrutara el desafío de hacer que todos se sientan importantes.",
                        "Asóciese con alguien que tenga el talento dominante de Impulso o Mando. Esta persona puede ayudarlo cuando tenga que dar malas noticias que puedan herir los sentimientos de alguien.",
                        "Sepa que la gente se relacionara a través suyo. Ud. es un conducto para la información. Ud. puede interactuar con todas las partes y todas las personas de un grupo y mantenerlas conectadas efectivamente entre ellas.",
                        "Explique lo que todos tenemos en común. Ayude a los demás a entender que para respetar nuestras diferencias (nuestra diversidad), primero debemos apreciar lo que compartimos (nuestras similitudes)."]
              }
          }
        ]}).to_json},
      {nombre: "Individualización", dominio_id: 3, libro: "Ahora, descubra sus fortalezas, Marcus Buckingham, Donald O. Clifton", pelicula: "DEAD POETS' SOCIETY", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Individualización**",
                texto: [ %Q(Por su talento de Individualización, a usted le fascina encontrar las cualidades únicas de cada persona. Se impacienta con la generalización, los agrupamientos O la tipificación de las personas. Para usted, éstas oscurecen lo que hay de especial y único en cada individuo. Por lo mismo, usted presta mucha atención a las diferencias que existen entre las personas. Instintivamente observa en cada uno su estilo, su motivación, su manera particular de pensar y el modo como establece sus relaciones. Con este talento escucha las experiencias únicas de la vida de cada persona, lo cual explica el modo de interacción que usted tiene con la gente. Por eso usted sabe elegir el regalo exacto de cumpleaños, sabe si una persona prefiere que la elogien en público o en privado y sabe adaptar su estilo didáctico a las necesidades particulares de cada uno. Siendo un(a) agudo(a) observador(a) de las aptitudes de otros, usted puede obtener lo mejor de ellos. Usted sabe que al compartir con las personas las aptitudes específicas que usted ha visto en ellas, querrán profundizar más al respecto. También el talento de Individualización le ayuda a crear equipos productivos. Mientras algunos buscan la "estructura" o el "proceso" perfecto de un equipo, usted sabe instintivamente que el secreto de los grandes equipos es la distribución de funciones que cada miembro debe desempeñar. De esta forma, cada uno podrá dedicarse más y más a aquello que mejor hace.),
                         %Q(El talento de Individualización se puede expresar así: ),
                         %Q(*Guillermo T., gerente hotelero:* "Carlos es uno de nuestros mejores trabajadores, pero de todas maneras necesita hablar conmigo todas las semanas. Es el tipo de persona que necesita un poco de aliento y control y siempre sale de la reunión con el entusiasmo renovado. Por otro lado, a Roberto no le gusta reunirse conmigo con frecuencia, de manera que no hay necesidad de molestarlo. Y cuando nos reunimos, realmente lo hago por mí, no por él".),
                         %Q(*Maritza J., ejecutiva editorial:* "¿Ha visto las burbujas que encierran los diálogos de los personajes de las tiras cómicas? Pues al salir de mi oficina me gustaría verlas flotando sobre las cabezas de todo el mundo para saber lo que piensan. Suena raro, pero me sucede todo el tiempo.),
                         %Q(*Iván D., gerente de ventas:* "Soy bastante nuevo en esta función, pero recuerdo una de las primeras reuniones en la que nos atascamos y dábamos vueltas y vueltas alrededor de un solo tema. Me sentí muy frustrado y de pronto pensé: 'Ninguna de estas personas me ha visto furioso. Veamos cómo reacciona cada una cuando me vean enojado'. Entonces me puse furioso y fue muy interesante ver la forma como algunos aceptaron mi conducta, otros la consideraron desafiante y otros armaron una tormenta. Estas reacciones me sirvieron para aprender algo útil acerca de cada uno, algo que podría utilizar más adelante".),
                         %Q(*Andrea H., diseñadora de interiores:* "Cuando uno le pregunta a una persona cuál es su estilo, no le es fácil responder. Por eso prefiero preguntar '¿Cuál es su rincón predilecto de la casa?' Esta pregunta le ilumina el rostro al interrogado y le permite saber exactamente a dónde llevarme. A partir de eso puedo comenzar a entender quién es la persona y cuál es su estilo".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Individualización",
                items: ["Solicite a esta persona que participe en el comité de selección para diversos cargos. Seguramente será buen juez de las fortalezas y debilidades de cada candidato.",
                        "Pida su ayuda para mejorar la productividad de la organización mediante la asignación de los roles indicados para cada quien conforme a sus fortalezas y debilidades.",
                        "Solicítele que diseñe programas de remuneración por desempeño que permitan a cada empleado utilizar sus fortalezas para maximizar su remuneración.",
                        "Cuando tenga dificultades para comprender el punto de vista de un determinado empleado, pídale ayuda a esta persona. Ella podrá mostrarle el mundo a través de los ojos de ese empleado.",
                        "Cuando tenga problemas de desempeño con los empleados, consulte con ella para ver lo que puede hacerse. Su intuición sobre las medidas apropiadas para cada individuo será correcta.",
                        "Pídale que dicte un curso de capacitación interna o que sirva de mentora para un par de empleados nuevos. Podrá tener el instinto para comprender la manera ligeramente diferente de aprender de cada persona.",
                        "Observe sus demás Talentos Dominantes. Si entre ellos están también el Desarrollo y el Organización, podría tener el potencial para ser gerente o supervisor. Si su fuerza está en el Mando y el Carisma, probablemente será muy eficaz para convertir clientes potenciales en clientes reales."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Individualización",
                items_confianza: ["En algunas ocasiones, Ud. sabe más acerca de algunas personas que lo que le gustaría saber. Mantenga siempre la discreción y comparta sus pensamientos solamente en conversaciones privadas. Es la otra persona quien decide si alguno puede hacerse público o no, no Ud.",
                                  "La gente confía en su talento para encontrar características únicas en las personas. Continúe fortaleciendo la confianza que otros depositan en Ud. Hágalo enfocándose en encontrar los talentos ajenos y viendo el lado positivo de las cosas.",
                                  "Defienda su inclinación natural a tratar a cada persona de manera única, de acuerdo a sus gustos, necesidades, fortalezas y estilo. Quizás para algunos esto sea una forma de favoritismo, pero Ud. debe tener la capacidad de defender su postura y encontrar argumentos objetivos, ya sean de desempeño o de calidad interpersonal, para sustentar su opinión."],
                items_empatia: ["Mucha gente puede sorprenderse por la profundidad con la que Ud. los conoce. Más de una vez habrá escuchado “¿Cómo supiste?” cuando alguien se sorprendió con su capacidad de registrar y analizar información acerca de ellos. A medida que Ud. construya mejores relaciones con la gente, ellos serán capaces de confirmar muchos de estos pensamientos acerca de ellos, que en su mayoría se deben a su talento Individualización.",
                                "Ud. suele elegir el regalo perfecto para cada persona. Este es un don poco frecuente. Asegúrese de utilizarlo lo más frecuentemente posible, aunque no sean regalos de valor monetario. Su talento le permitirá darse cuenta cuándo el otro espera un saludo, una nota de agradecimiento u otro regalo que no sea un objeto físico. "],
                items_estabilidad: [" La estabilidad en su caso proviene de su capacidad para estar siempre atento. Atento a necesidades, estados de ánimo o cambios repentinos en la salud de la gente. Nunca deje de confirmar estas impresiones con la gente que las genera.",
                                    "“Todas las generalizaciones son falsas, incluso esta” es probable que sea una de sus frases preferidas. Su talento Individualización lo convierte en un ferviente opositor a las frases hechas y la “sabiduría popular”. Ud. busca la frase apropiada para cada ocasión. Ayude a los otros a hacer lo mismo con sus talentos y habilidades."],
                items_esperanza: ["Algunas personas son más predecibles para Ud. que lo que son para ellos mismos. Use su talento para hacerles notar a los otros esos patrones de comportamiento que Ud. tan fácilmente descubre y que a ellos tanto les cuesta ver. Hágales descubrir sus “lados ciegos” sin ponerlos en ridículo. Intente encontrar los patrones que son constructivos para quienes lo rodean y ellos le agradecerán por ayudarlos a ser mejores personas. ",
                                  "Ud. sabe perfectamente que la gente es más productiva cuando sus ambientes de trabajo con compatibles con sus talentos. Deles lugar a que construyan esos lugares y elogie los buenos desempeños para que se repitan.",
                                  "Su talento Individualización le permite encontrar talentos incluso en grupos, ámbitos o culturas relativamente uniformes. No deje de usar su talento para organizar esfuerzos conjuntos, ya sea en su comunidad o en su propio trabajo."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Individualización",
                items: ["Intente encontrar tareas relacionadas con la psicología, la docencia, la supervisión o incluso, las ventas donde pueda poner su talento Individualización en marcha lo más frecuentemente posible.",
                        "Conviértase en un experto en describir cuáles son sus fortalezas y su propio estilo. Por ejemplo, intente responder a las siguientes preguntas: “¿Cuál fue el mejor elogio que recibió? ¿Cuán seguido prefiere tener reuniones con su jefe? ¿Cuál es el mejor método para construir relaciones? ¿Cuál es la mejor manera de aprender?”. Luego hágales las mismas preguntas a sus colegas y amigos. En el proceso, ayúdelos a planear su futuro apoyándose en sus fortalezas y en lo que mejor saben hacer.",
                        "Ayude a otros a que descubran que la verdadera diversidad radica en diferencias casi imperceptibles entre las personas, no en su raza, sexo o nacionalidad.",
                        "Explíqueles que es apropiado, justo y efectivo tratan a cada persona de forma diferente. Aquellos que no poseen su talento Individualización es probable que no vean algunas de estas diferencias o que las vean como injusticia o falta de equidad. Para convencerlos, deberá insistir describiendo su perspectiva con el mayor lujo de detalles que sea posible.",
                        "Descubra cuáles son aquellas cosas que los que están en su equipo mejor saben hacer. A partir de ahí, ayúdelos a fortalecer sus talentos y habilidades, así como sus conocimientos. Explíqueles cuáles son las razones que hay detrás de su interés, cuénteles acerca de su interés por identificar aquellas cosas únicas en cada persona.",
                        "Ud. tiene habilidad para describir los gustos de las personas, así como aquellas cosas que a la gente no le gusta tanto. Esto lo pone en una posición muy particular. Use su talento de Individualización para encontrar aquellos gustos que son únicos en cada persona. Celebre esas diferencias.",
                        "Haga que sus amigos y colegas tomen conciencia de las necesidades particulares de cada persona. Muy pronto, muchos de ellos acudirán a Ud. para que les explique qué motiva a otros.",
                        "Si realiza presentaciones en público, utilice las experiencias particulares de la audiencia a su favor. Use su talento de Individualización para conocer acerca de las historias más originales y no olvide utilizarlas la próxima vez.",
                        "Ud. se mueve cómodamente en un amplio rango de estilos y culturas, y es intuitivo para personalizar sus interacciones. Haga uso de estos talentos de manera concienzuda y proactiva liderando proyectos diversos y comunitarios.",
                        "Sus talentos de Individualización lo pueden ayudar a tomar un camino diferente al interpretar datos. Mientras otros buscan similitudes, Ud. puede identificar rangos distintivos. Sus interpretaciones sumarán una valiosa perspectiva,"]
              }
          }
        ]}).to_json},
      {nombre: "Optimismo", dominio_id: 3, libro: "Aprenda Optimismo, Martin E. P. Seligman", pelicula: "PATCH ADAMS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Optimismo**",
                texto: [ %Q(Usted es muy generoso(a) para dar elogios, siempre está sonriente y siempre trata de ver el lado bueno de una situación. Algunos piensan que no tiene preocupaciones y otros desearían ser tan optimistas como usted. Cualquiera que sea la opinión, la gente busca su compañía, porque su entusiasmo es contagioso y esto hace que el mundo sea mejor. Las personas que carecen de su energía y optimismo, encuentran que su mundo es aburrido, peor aún, cargado de presiones. Con su talento de Optimismo usted parece encontrar la forma de mejorar el ánimo de otras personas, inyectando energía en cada proyecto, celebrando cada logro, buscando formas de hacer que todo sea más excitante y tenga mayor vitalidad. Es posible que algunos escépticos rechacen su energía, pero rara vez lo(a) desalentarán, porque su talento de Optimismo no lo permitirá. Usted siempre tiene la convicción de que es bueno estar vivo(a), de que el trabajo puede ser entretenido y de que no importa qué obstáculos encuentre en su camino, uno nunca debe perder el sentido del humor.),
                         %Q(El talento de Optimismo se puede expresar así: ),
                         %Q(*Teresa L., auxiliar de vuelo:* "Son tantas las personas que van en un avión que, con los años, he optado por elegir a una o dos en cada vuelo para hacer que la experiencia sea algo especial para ellas. Claro está que soy cortés con los demás y les sirvo con el mismo profesionalismo con el cual yo querría ser tratada, pero por encima de todo trato de que una persona, una familia o un grupo pequeño se sienta especial gracias a mis chistes, a mi conversación o a los juegos que invento para ellos". ),
                         %Q(*Andrés B., ejecutivo de marketing de Internet:* "Soy una de esas personas que goza creando emociones. Leo revistas todo el tiempo y cuando encuentro algo simpático — una tienda nueva, un nuevo brillo para los labios, lo que sea — voy por ahí contándole a todo el mundo. 'Ah, tienen que visitar esta tienda. Es sensacional. Miren estas fotos'. Pongo tanto entusiasmo cuando hablo, que la gente sale convencida de que debe hacer lo que yo digo. No es que sea un gran vendedor. No lo soy. En realidad, detesto cerrar la venta. No me gusta molestar a la gente. Es sólo que mi gusto por lo que digo hace que la gente piense: 'Caramba, debe ser cierto'.),
                         %Q(*Salomón G., gerente de comunicaciones:* "Creo que el mundo está plagado de gente negativa. Necesitamos más personas positivas, personas que piensen únicamente en lo bueno que tiene este mundo. Las personas negativas me agobian. En mi último trabajo había un tipo que entraba a mi oficina todas las mañanas a descargar sus problemas en mí. Yo lo evitaba adrede. Cuando lo veía venir corría a esconderme en el baño o en algún otro sitio. Me hacía sentir como si el mundo fuera un lugar espantoso, y detestaba esa sensación".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Optimismo",
                items: ["Esta persona aporta dramatismo y vitalidad al lugar de trabajo. Trate de ubicarla tan cerca de los clientes como sea posible. Imprimirá a su organización un aire más positivo y dinámico.",
                        "Pídale que ayude a planear eventos para atender a los mejores clientes de su organización, tales como lanzamientos de productos nuevos o grupos de usuarios.",
                        "El talento Optimismo no implica que la persona permanezca siempre de buen humor. Sí implica que con éste y su actitud hará que la gente sienta más entusiasmo por el trabajo. Recuérdele esta fortaleza y anímela a utilizarla.",
                        "Las personas cínicas le agotarán su energía rápidamente. No espere que disfrute animando a las personas negativas. Se desempeñará mejor alrededor de personas esencialmente positivas que sólo necesitan un pequeño empujón.",
                        "Su entusiasmo es contagioso. Piense en eso cuando la ubique en un equipo para un proyecto.",
                        "Es persona a quien le encanta celebrar. Al cumplirse determinados hitos, solicítele ideas para reconocer y celebrar esos logros. Será más creativa que los demás.",
                        "Preste atención a sus demás Talentos Dominantes. Si posee además un talento Desarrollo, podrá ser excelente como instructora o maestra, porque lleva entusiasmo al aula de clase. Si uno de sus Talentos Dominantes es el Mando, podrá sobresalir en ventas porque está armada con una poderosa combinación de firmeza y energía."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Optimismo",
                items_confianza: ["Algunas personas están tan habituadas a escuchar lo negativo primero, que mostrarán sus sospechas cada vez que Ud. realice un comentario optimista. Nunca deje de hacer este tipo de comentarios. Insista. Con el tiempo ellos comenzarán a darse cuenta de que son genuinos y Ud. realmente ve las cosas de esa manera.",
                                  "Asegúrese de que sus elogios suenen siempre genuinos. La investigación muestra que es más dañino un elogio falso que una crítica mal hecha. Si Ud. lo cree, dígalo. Si no, muestre respeto por la inteligencia de los demás y no caiga en la tentación de regalar falsas alabanzas"],
                items_empatia: ["Su talento Optimismo hará que Ud. tenga gran facilidad para elogiar. Sea generoso. Son muy pocas las personas que creen que están recibiendo demasiados elogios. La mayoría lo agradecerá, siempre y cuando sea, como ya comentamos, genuino y específico. Esto hará que cada interacción con Ud. sea una experiencia grata para los demás.",
                                "En tiempos de crisis, su Optimismo puede ser como un faro en la tormenta para otros. Nunca subestime esta capacidad. Trate de hacerle saber a la gente que puede acercarse a Ud. si eso los reconforta.",
                                "Sea siempre la persona con buen humor. Su talento Optimismo está alejado del sarcasmo y la burla. Esta característica tan positiva es un elemento clave a la hora de mejorar la atmósfera de su ámbito laboral."],
                items_estabilidad: ["Ud. tiene un talento natural para aumentar la confianza de la gente. Cada vez que vea a alguien hacer lo correcto o hacer algo correctamente, no deje pasar la oportunidad de decírselo. Esto los ayudará a sentirse más seguros de sí mismos.",
                                    "Su talento Optimismo le permite adaptarse a cosas que están lejos de ser perfectas. Como muestra de ello, Ud. alienta a otros a que progresen, en lugar de exigirles perfección. Esto le permitirá a sus colaboradores sentir que pueden cometer errores durante los procesos que les permitirán alcanzar mejores resultados."],
                items_esperanza: ["Algunas personas suelen necesitar un “momento de fama”, un éxito que los haga sentir verdaderas estrellas. Permita que su talento Optimismo prepare el terreno para que esto pase y haga que esos “15 minutos de fama” de sus colaboradores sean memorables. ",
                                  "Su optimismo ayuda a que otros miren al futuro de una mejor manera. Pídales que compartan con Ud. aquellas reflexiones que tengan que ver con las oportunidades que ellos ven. Decir en voz alta las expectativas que uno tiene suele ser el primer paso para convertirlas en realidad.",
                                  "A veces los sentimientos son el resultado de una acción. Otras veces pueden ser la causa de la misma. Insista en celebrar, musicalice sus momentos de trabajo más pesado. Este impacto positivo en las emociones de la gente puede llegar a hacer la diferencia entre una tarea a medio terminar y una con un resultado sobresaliente.",
                                  "Ya que Ud. tiene la capacidad de crear ambientes optimistas, asegúrese de protegerlos y darles continuidad. Aíslelos de los quejosos crónicos. Desvíe la negatividad. Realice tareas que fomenten la actitud positiva y elogie los comportamientos optimistas de sus colaboradores."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Optimismo",
                items: ["Probablemente se luzca en cualquier tarea en la cual le paguen por recalcar lo positivo. Como docente, vendedor, comerciante, o líder, Ud. usará lo mejor de sus habilidades para hacer una tarea excelsa.",
                        "Suele ser más entusiasta y energético que la mayoría de la gente. Cuando otros se sienten desalentados o reacios a correr riesgos, su actitud les dará el ímpetu necesario para seguir adelante. Con el tiempo, los demás lo buscaran para que les de ese “empujón”.",
                        "Planifique eventos para sus amigos y compañeros. Por ejemplo, encuentre el modo de transformar los pequeños logros en eventos, realice celebraciones que todos esperen en forma regular , o aproveche al máximo los feriados o fiestas nacionales.",
                        "Explique que su entusiasmo no es mera inocencia. UD. sabe que pueden suceder cosas malas, pero simplemente prefiere enfocarse en las cosas buenas.",
                        "Ud. podría sentirse bien alentando a los demás. Demuestre libremente su apreciación por otros, y asegúrese de que su elogio sea concreto. En consecuencia, trate de trasladar sus sentimientos en algo específico, tangible, y expresiones personales de gratitud y reconocimiento.",
                        "Al compartir sus talentos de Optimismo, asegúrese de protegerlos y  estimularlos. Si lo necesita, aléjese de quejosos crónicos y trate de pasar tiempo en ambientes positivos y alegres que lo estimularán y aumentarán su optimismo.",
                        "No simule que los problemas no le interesan.  Los demás necesitan saber que aunque Ud. encuentra lo buena en casi cualquier situación, no es ingenuo. Admita los desafíos,  y comunique las razones de su optimismo. Su actitud positiva se verá reforzada cuando los demás se den cuenta que está basada en la realidad. ",
                        "Como la gente contará con Ud. para ayudarla a sobrellevar las frustraciones diarias, cuente con buenas historias, chistes y refranes. Nunca subestime el efecto que puede tener en los demás.",
                        "Evite las personas negativas. Lo tirarán abajo. En cambio, busque gente que comparte con Ud. la visión del drama y el humor en el mundo. Se energizarán mutuamente.",
                        "Deliberadamente ayude a los demás a ver las cosas buenas que tienen y van bien para ellos. puede hacer que mantengan su mirada en los positivo. "]
              }
          }
        ]}).to_json},
      {nombre: "Relación", dominio_id: 3, libro: "Quién le cubre la espalda?, Keith Ferrazzi", pelicula: "SLEEPERS", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Relación**",
                texto: [ %Q(Su talento Relación describe su actitud hacia las relaciones, es decir, le atrae hacia la gente que ya conoce. No necesariamente rehuye situaciones para conocer gente nueva,   posiblemente  la  combinación  de  este  talento con otros le ayude a expandir su círculo de amistades. Primordialmente, usted obtiene placer y se fortalece al estar con los amigos más cercanos. La intimidad no le incomoda, de hecho, una vez establecido el contacto inicial, deliberadamente trata de profundizar esa relación. Para usted la amistad debe ser recíproca, quiere que sus amigos le conozcan bien y usted conocerlos bien y compartir sentimientos, objetivos, temores y sueños. Usted sabe que ese tipo de cercanía implica un cierto grado de riesgo —pueden aprovecharse de usted— pero está dispuesto a correrlo ya que para usted confiar en la otra persona es indispensable para lograr una amistad genuina. Cuanto más comparten entre sí, más se arriesgan juntos. Cuanto más se arriesguen juntos, podrán demostrar que su afecto es genuino. Estos son sus pasos hacia una verdadera amistad y usted los acepta sin reservas.),
                         %Q(El talento Relación se puede expresar así: ),
                         %Q(*Antonio D., piloto:* "Antes volaba con la infantería de marina y, caray, teníamos que estar seguros de la palabra 'amigo' allí. Teníamos que sentirnos tranquilos de confiar en alguien más. No sé cuántas veces puse mi vida en manos de otra persona. Volábamos ala con ala y yo podía morir si mi amigo no lograba llevarme de regreso a salvo"),
                         %Q(*Jazmín J., empresario:* "Definitivamente escojo muy bien a mis amigos. Cuando conozco a una persona, al principio no le dedico mucho tiempo. Ella no me conoce, yo no la conozco, de manera que nos limitamos a ser amables. Pero si las circunstancias nos permiten llegar a conocernos mejor, es como si rebasara un umbral y de repente me siento dispuesta a dar más de mí. Comparto más de mí misma, me arriesgo por la otra persona, hago cosas que nos acercan un poco más, y demuestro que me interesa. Es curioso, porque no busco más amistades en mi vida. Tengo suficientes. Sin embargo, con cada persona que conozco, tan pronto rebaso el umbral, siento la urgencia de profundizar más y más. Ahora tengo diez personas trabajando para mí y puedo decir que con cada una tengo una buena amistad".),
                         %Q(*Gisela T., auxiliar de vuelo:* "Tengo muchos conocidos maravillosos, pero realmente no son muchos mis verdaderos amigos a quienes quiero. Y me siento bien así. Mis mejores ratos los paso con la gente más cercana a mí, como mi familia. Somos una familia irlandesa católica muy unida y nos reunimos cada vez que podemos. Es una familia grande — tengo cinco hermanos y hermanas y diez sobrinos y sobrinas — pero todos nos reunimos una vez al mes y gozamos infinitamente. Yo soy la excusa para reunidos a todos cuando llego a Chicago, aunque no haya cumpleaños o aniversarios o alguna otra cosa, y estamos juntos durante tres o cuatro días. Realmente disfrutamos mucho nuestra mutua compañía".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Relación",
                items: ["Manifieste directamente su interés por esta persona. Este lenguaje directo no le parecerá inapropiado y, por el contrario, será bien recibido. Es una persona que organiza su vida alrededor de sus relaciones cercanas, de manera que querrá saber en qué terreno pisa con usted.",
                        "Disfrutará desarrollando lazos auténticos con las personas con quienes trabaja. Puesto que se necesita tiempo para forjar esas relaciones no la ubique en roles que la aparten constantemente de sus compañeros y clientes.",
                        "Ayúdela a conocer las metas de sus colegas. Podrá establecer más fácilmente sus vínculos con las otras personas si conoce sus metas.",
                        "Confíele información confidencial. Es leal, atribuye gran importancia a la confianza y no lo traicionará.",
                        "Pídale que construya relaciones de verdadera confianza con las personas cruciales a quienes usted desea conservar. Ella puede ser uno de los lazos humanos que una a las personas buenas con la organización.",
                        "Preste atención a sus demás Talentos Dominantes. Si también manifiesta evidencia de los talentos Enfoque, Organización o Autoconfianza, podría servir para dirigir a otros. Los empleados siempre trabajan con más ahínco para alguien en quien pueden confiar y que desea su éxito. Esta persona puede establecer fácilmente esa clase de relaciones.",
                        "La generosidad suele ser una de sus fortalezas. Hágale ver esa generosidad y muéstrele de qué manera le sirve para ejercer influencia sobre los demás y relacionarse con quienes la rodean. Esa persona apreciará el que usted haya tomado nota y, por consiguiente, la relación entre ambos se fortalecerá."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Relación",
                items_confianza: ["Las relaciones importantes generan confidencias. Cada vez que alguien confíe algo a Ud., recuerde que la discreción es muy importante siempre. “Una sola fisura puede vaciar todo un embalse” dice el refrán. ",
                                  "Ud. sabe perfectamente que a medida que se profundiza una amistad se corren más riesgos, pero Ud. elige correr esos riesgos todo el tiempo en nombre de esas amistades. Dígalo. Reconózcalo en voz alta. Hágales saber a sus amigos que la profundidad de la relación lo hace sentir confiado y Ud. honrará esa confianza con más compromiso y discreción."],
                items_empatia: ["Asegúrese de tener suficiente tiempo “mano a mano” con la gente que es clave en su vida. Solidifique relaciones y cree suficiente energía emocional para compartir con todos aquellos que son importantes para Ud. Esto puede ser muy duradero. No pierda oportunidades de decirles lo mucho que a Ud. le importan.",
                                "Su fuerte talento Relación le permite dar y recibir más afecto y amistad que muchas otras personas. Dígales a todos los que pueda que su relación con ellos trae felicidad a su vida. Pregúnteles si hay algo que Ud. pueda hacer para hacerles sentir a ellos de la misma manera. Muéstreles que Ud. quiere lo mejor para ellos. Muestre empatía e interés en el bienestar de sus amigos y seres queridos lo más frecuentemente posible."],
                items_estabilidad: ["Las amistades cercanas y de muchos años son sumamente satisfactorias para Ud. Esto puede ser cierto incluso dentro de su propia familia, en su círculo íntimo o incluso en su empresa. Dígales a los demás que Ud. espera que estas relaciones duren toda la vida. Intente construir expectativas mutuas acerca del apoyo, entendimiento y estabilidad necesarios para sostenerlo.",
                                    "Ud. está más a gusto en ámbitos informales. Sin embargo, a medida que las organizaciones crecen en tamaño y complejidad, sus sistemas se van haciendo cada vez más formales. Incluso frente a esta realidad, Ud. puede ayudar a que otros se sientan a gusto, intentando recrear algunas de las condiciones flexibles que tenía la organización en sus orígenes. Cree una isla informal en medio del extenso mar de la formalidad."],
                items_esperanza: ["Ud. prefiere dar antes que tomar. Sin embargo, para asegurarse de poder seguir dando, Ud. tiene que encontrar maneras de garantizar que Ud. siga recibiendo en aquellos momentos cuando más da. Identifique quiénes son los que mejor le hacen sentir y agende tiempo con ellos. Esto le dará más energía para compartir con todos aquellos quienes Ud. les proporciona esperanza.",
                                  "Ud. construye relaciones que duran. Esto le da una perspectiva única acerca de la vida y los logros de las demás personas. Ayúdelos a ver el bosque. Señáleles sus logros y cómo han construido un camino lleno de cosas positivas a lo largo de los años. Muéstreles todas las formas posibles en las que sus vidas han hecho una diferencia positiva para ellos."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Relación",
                items: ["Elija un trabajo donde se fomenten las amistades. Ud. no estará demasiado cómodo en ámbitos muy formales. Si va a una entrevista de trabajo, haga preguntas acerca del estilo con el que se trabaja en ese lugar, así como sobre la cultura del mismo.",
                        "Intente conocer lo máximo posible a las personas que va sumando a su vida. A Ud. le gusta saber acerca de la gente y a mucha le gente le entusiasma que la gente sepa más acerca de ellos. Esto suele ser un buen catalizador para relaciones basadas en la confianza.",
                        "No olvide hacerles saber a los demás que a Ud. le interesan mucho más las características de la personalidad de la gente, que su status o su título. Este es uno de sus más grandes talentos y es probable que sirva como modelos para otros.",
                        "Muéstrese como una persona que se preocupa por los demás. Ud. podría ser un buen mentor en su empresa o compartir actividades con colegas que no necesariamente pertenecen a su mismo sector.",
                        "No importa cuán ocupado esté, no pierda el contacto con sus amigos. Ellos son su combustible.",
                        "Sea honesto con ellos. Lo mejor que puede hacer por sus amigos es ayudarlos a que tengan éxito y se sientan realizados. Ser honesto a la hora de darles feedback o ayudarlos a que salga de una situación complicada es una de las mejores maneras de mostrar empatía.",
                        "Es probable que Ud. prefiera ser visto como una persona, un amigo, un compañero, antes que como un colega, un jefe o un título cualquiera. Hágales saber a los demás que Ud. prefiere que lo llamen por su nombre de pila.",
                        "Ud. suele no ser muy demostrativo acerca de los aspectos más importantes de su personalidad hasta que los otros lo hacen primero. Recuerde: construir relaciones no es una calle de una sola mano. Sea proactivo al respecto. Abrase más rápidamente y los demás verán una faceta suya más genuina y confiable.",
                        "Hágase tiempo para su familia y sus amigos más cercanos. Ud. necesita estar más tiempo con ellos para poder alimentar correctamente su talento Relación. Agende más actividades que lo pongan de buen humor y lo hagan sentir mejor.",
                        "Haga esfuerzos por sociabilizar con colegas y compañeros de trabajo fuera del horario laboral. Esto puede ser tan sencillo como un café o un corto almuerzo. Esto ayuda a que Ud. esté más conectado en el trabajo, pero también repercutirá en el trabajo en equipo y la cooperación."]
              }
          }
        ]}).to_json},
      {nombre: "Análisis", dominio_id: 4, 
      libro: "El proceso decisorio, Santiago LAZZATTI", 
      pelicula: "JFK", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Análisis**",
                texto: [%Q(Su talento de Análisis lo(a) lleva a desafiar constantemente a los demás: “Demuéstralo, dime por qué lo que argumentas es cierto", frente a este tipo de cuestionamiento, a alguno(a) s les pasará que sus brillantes teorías se caerán y desmoronaran. Para usted, éste es precisamente el reto. No desea necesariamente destruir las ideas de otras personas, sino que exige que sus teorías sean solidas. Se ve a sí mismo(a) como una persona objetiva e imparcial. Le gustan los datos porque representan información objetiva, no tienen un plan oculto, son sólo eso, datos. Armado(a) con esos datos, usted busca modelos y conexiones. Desea comprender cómo ciertos patrones o modelos interactúan. ¿Cómo se combinan? ¿Cuál es el resultado? ¿Encaja ese resultado con la teoría, o con la situación a la cual se enfrenta? Estas son algunas de sus preguntas. Usted desglosa todos los componentes hasta revelar la causa o causas que son la raíz del problema. Algunos le consideran lógico(a) y riguroso(a). Con el tiempo, algunas personas se acercarán a usted por su agilidad mental para exponerle "ideas en gestación'' o "fantasías" de otras personas. Ojalá no transmita el resultado de su análisis con rudeza; de lo contrario, es posible que estas personas eviten compartir sus propias "fantasías" con usted.),
                        %Q(El talento de Análisis se puede expresar así:),
                        %Q(*José G, administrador escolar:* "Tengo la capacidad innata de ver las estructuras, los patrones y los formatos aun antes de que existan. Por ejemplo, mientras oigo hablar a la gente sobre redactar una propuesta para solicitar ayuda económica para un proyecto, mi cerebro instintivamente procesa el tipo de ayudas disponibles y la manera como la discusión se ajusta a la elegibilidad, hasta visualizar el formato en el cual la información se debe presentar en el formulario de solicitud para   que sea clara y convincente".),
                        %Q(*Joaquín T., ejecutivo de recursos humanos:* "Cuando afirmo algo, necesito saber que puedo respaldarlo con hechos y con un argumento lógico. Por ejemplo, si al-guien dice que nuestra compañía no paga tanto como otras, siempre pregunto: ¿Por qué dice eso?' Si me responden: 'bueno, vi un aviso en la prensa que ofrece a los ingenieros mecánicos cinco mil más de lo que se paga aquí', mi pregunta siguiente es: '¿Pero dónde van a trabajar esos profesionales? ¿Depende el salario del sitio geográfico? ¿Qué clase de compañías son las que buscan? ¿Son compañías productoras como la nuestra? ¿Y Cuántas personas hay en su muestra? ¿Son tres personas y una de ellas hizo un trato realmente bueno con lo cual subió todo el promedio?' Necesito hacer muchas preguntas para asegurarme de que lo que otros afirman es la verdad y no se basa en un solo elemento de juicio que pueda ser engañoso".),
                        %Q(*Laura J., rectora escolar:* "Muchas veces hay diferencias en el desempeño de un grupo de alumnos entre un año y otro. Son los mismos estudiantes pero sus calificaciones son diferentes de un año al otro. ¿Cómo es que sucede esto? ¿En cuál edificio estudian? ¿Cuántos alumnos se han matriculado para todo el año académico? ¿Cuáles profesores se les asignaron y cuáles fueron los estilos de enseñanza utilizados? Me encanta hacer esa clase de preguntas para comprender lo que sucede realmente".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Análisis",
                items: ["Siempre que esta persona deba participar en una decisión importante, destine tiempo para considerar los problemas con ella, pues querrá conocer todos los factores que afectan la decisión.",
                        "Cuando tenga que explicarle una decisión que ya ha sido tomada, recuerde plantearle claramente la lógica de la decisión. Usted sentirá que está dando más explicaciones de la cuenta, pero esta persona necesita ese nivel de detalle para comprometerse con la decisión.",
                        "Siempre que tenga la oportunidad, elogie a esta persona por su capacidad para razonar. Ella está orgullosa de su mente disciplinada.",
                        "Cuando deba defender una decisión o un principio, muestre a esta persona las cifras. Ella atribuye instintivamente más credibilidad a la información en la cual aparecen números.",
                        "Recuerde que es una persona que necesita cifras exactas producto de una investigación seria. Nunca trate de presentarle datos a medias como evidencia.",
                        "Una de las cosas que le encantan a esta persona es encontrar patrones en los datos. Bríndele siempre la oportunidad de explicarle detalladamente un patrón. Esto la motivará y contribuirá a solidificar su relación con ella.",
                        "Aunque usted no siempre estará de acuerdo con ella, tome muy en serio su punto de vista. Probablemente lo habrá reflexionado detenidamente.",
                        "Puesto que la exactitud en el trabajo es tan importante para ella, hacer las cosas a la perfección quizás le parezca más importante que cumplir con un plazo. Por consiguiente, a medida que se aproxima la fecha límite, verifique con ella si cuenta con el tiempo ne-cesario para hacer bien las cosas."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Análisis",
                items_confianza: ["Piense en lo que Ud. apoya. Debido a que las personas confían en su mente analítica, es probable que sigan las recomendaciones que Ud. pueda hacerles sin objeciones. No hay ningún problema con esto, pero a veces, lo que es bueno para Ud., no necesariamente lo es para otros. Ayúdelos a desmenuzar todos los factores que pueden derivar en el éxito de una acción o producto, en función de las necesidades, deseos o gustos de ellos, no los suyos. Hágales entender que Ud. quiere lo mejor para ellos y ellos confiarán en Ud.",
                                  "Ud. frecuentemente sabe encontrar lo honesto, lo real, lo genuino y los demás confían en su capacidad para hacerlo. Hágales saber a quienes Ud. lidera que ese don está disponible para lo que ellos necesiten. Hágalo extensivo a ellos y todos confiarán más en Ud."],
                items_empatia: ["Todos aquellos que aman analizar ideas minuciosamente se sentirán atraídos por su talento Análisis. Estimule los debates, abra las conversaciones a más personas. Confronte sus ideas de manera amigable, generando un proceso de exploración conjunta. Cuando encuentre a alguien que disfrute de esta clase de “juegos”, intente forjar una amistad alrededor de este proceso de crecimiento mutuo.",
                                "Estar cuando la gente lo necesita en tiempos de crisis es, quizás, la forma más evidente de demostrar empatía. En esos momentos donde algunos puedan mostrarse confundidos por el exceso de información, su talento Análisis puede entrar en juego y ayudarlos a distinguir lo que es útil y relevante de aquello que no lo es."],
                items_estabilidad: ["Los datos son una fuente de seguridad para muchas personas. Si Ud. es capaz de respaldar sus decisiones con buena información, les será más fácil a sus colaboradores seguir los planes que Ud. tiene para ellos. La manera en que Ud. es capaz de analizar cada detalle representa para muchos una fuente de tranquilidad. Ellos entienden que si Ud. se decide por un camino a seguir, seguramente ya analizó todos los posibles escenarios que lo involucran.",
                                    "Su apoyo a las ideas de sus colaboradores es una fuente irremplazable de confianza. Esto les permitirá tomar mejores decisiones e ir construyendo un buen criterio propio. Cuando Ud. piense que los demás están tomando buenas decisiones, dígaselos. Su confirmación es clave para que ellos se sientan seguros y confiados para llevar adelante proyectos de manera independiente."],
                items_esperanza: ["Aliente a aquellos que están haciendo algo difícil que Ud. piensa que es correcto. No les dé tiempo a que adivinen lo que Ud. piensa o siente. Hágaselos saber. Felicítelos cada vez que toman una decisión acertada. Si Ud. cree que tendrán éxito en lo que están haciendo, dígaselos inmediatamente.",
                                  "Si otros necesitan de su apoyo para tomar decisiones, ofrézcales dividir el proceso en varias etapas y muéstreles el camino que Ud. recorre para seleccionar la información necesaria para tomarlas. Sea paciente. Al principio, algunos no podrán seguirlos. Deles tiempo. Muchos de ellos adoptarán su método y serán sus discípulos. Si alguno desea adoptar su método, pero tiene dificultades para completar el proceso, trabaje junto a ellos para ayudarlos a comprender su análisis.",
                                  "Ser la guía para alguien puede ser beneficioso para Ud. también. Asóciese con gente que tenga talentos orientados a la acción. Ud. puede ayudarlos a pensar más profundamente, al mismo tiempo que ellos lo ayudarán a convertir sus ideas en acción. Seguramente será un proceso beneficioso para ambos."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Análisis",
                items: ["Busque trabajos donde Ud. pueda ser remunerado por analizar datos, encontrar patrones u organizar ideas. Carreras como marketing, finanzas, investigación médica, administración de bases de datos o análisis de crédito.",
                        "Independientemente de cuál sea su ocupación, identifique siempre cuáles son sus fuentes confiables de información. Trate de encontrar libros, sitios de Internet, o incluso bibliotecas de donde Ud. pueda obtener lo que necesita para destacarse.",
                        "Su cabeza será siempre una máquina de analizar información. Es probable que los demás no siempre lo noten. No olvide comunicarlo. Compartir algunos de sus pensamientos le servirá a otros para valorar más su trabajo.",
                        "Asegúrese siempre de encontrar formas de convertir todo el cúmulo de información que maneja en acción. Si cree que no es capaz de hacer esto solo, busque ayuda. No deje que el Análisis se transforme en parálisis.",
                        "Toma clases, haga un curso, capacítese de tal forma que ejercite su talento. Si es posible, estudie algo que involucre a personas cuya lógica despierte en Ud. admiración y respeto.",
                        "Ofrezca su talento de Análisis tan frecuentemente como sea posible. Muchas organizaciones – no necesariamente empresas – encontrarán su capacidad de organizar datos e ideas sumamente valiosas.",
                        "Asóciese con aquellos que tienen el talento de Impulso. La impaciencia de ellos es el mejor combustible para poner sus ideas y análisis de las mismas en acción lo más rápidamente posible.",
                        "Es probable que Ud. tienda a mostrarse escéptico hasta que alguien aporte pruebas sólidas acerca de un tema en particular. Ese escepticismo es una forma de asegurar validez, pero sepa que eso puede despertar en otros cierta incomodidad, ya que podrían tomarlo de manera personal. Ayúdelos a que entiendan que ese escepticismo es con la información y los datos y no con ellos.",
                        "Busque siempre patrones de datos. Esto es particularmente útil a la hora de tratar de identificar causas raíz u orígenes de ciertas tendencias.",
                        "Ayude a otros a que comprendan que muchas de sus ideas requieren más y mejor información. Al mismo tiempo, esta nueva información puede ser la fuente de más ideas."]
              }
          }
        ]}).to_json},
      {nombre: "Contexto", dominio_id: 4, libro: "La revolución necesaria, Peter M Senge", pelicula: "GANDHI", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Contexto**",
                texto: [ %Q(Usted mira al pasado, para comprender el presente y para predecir el futuro. Desea saber el origen de todo. Para ello, lee libros de historia, biografías y formula preguntas entre sus amistades para conocer su pasado. Usted recurre al pasado porque es ahí donde están las respuestas. Desde su perspectiva, el presente le resulta inestable y confuso por tantas opiniones disonantes. El presente recobra su estabilidad, únicamente remontándose a una época anterior en la cual se trazaron los primeros planos. Aquélla era una época más simple, una época de fundación. A medida que mira hacia atrás, puede ir conociendo cómo surgieron esos esquemas originales, cuáles fueron las intenciones iniciales y cómo, a partir de ese momento, esos esquemas o intenciones se adornaron tanto que hoy son casi irreconocibles; pero gracias a su talento Contexto los trae nuevamente a la luz. Ese conocimiento le da confianza porque le permite entender y de esa manera darle sentido a la estructura subyacente. Esto le convierte en un(a) buen(a) compañero(a) porque comprende cómo sus colegas llegaron a ser lo que son. Contrario a lo que se esperaba, usted se vuelve más sabio(a) respecto al futuro y confirma que "siempre cosechamos lo que sembramos". Cuando se encuentra con gente y/o con situaciones nuevas, le toma algo de tiempo adaptarse, pero permítase ese tiempo. Esfuércese por formular todas aquellas preguntas sobre el pasado que tanto le interesan. Permita que surja el origen de todo, que los planos queden al descubierto. Sin lo anterior, no descubrirá lo mejor de sí mismo(a). ),
                         %Q(El talento Contexto se puede expresar así: ),
                         %Q( *Adán Y., diseñador de software:* "A mi gente le digo: 'Evitemos el vuja de'. Y entonces me corrigen: 'No se dice así. ¿No debería ser deja vu?' Y yo les respondo, -.   'No, vuja de significa que estamos condenados a repetir, los errores del pasado y eso es lo que debemos evitar. Debemos mirar el pasado para ver qué fue lo que nos llevó a equivocarnos, y no cometer los mismos errores nuevamente'. Parece obvio, pero muchas personas no miran su pasado, o no confían en que fue válido, o algo por el estilo. Entonces para ellas es un vuja de permanente".),
                         %Q(*Jésica K., analista de medios:* "Tengo muy poca empatía, de modo que no me relaciono con la gente a través de su estado emocional del momento. Pero puedo relacionarme a través de su pasado. En efecto, ni siquiera puedo comenzar a entender a las personas sin antes saber dónde crecieron, quiénes eran sus padres, qué estudiaron en la universidad".),
                         %Q(*Rodrigo P., gerente de contabilidad:* "Hace poco trasladé toda la oficina a un nuevo sistema de contabilidad y la única razón por la cual el proceso tuvo éxito fue porque hice honor al pasado. Cuando las personas construyen un sistema contable invierten en él sangre, sudor y lágrimas. Dan todo su ser. Se identifican personalmente con él. De manera que si llego a decirles de un momento a otro que pienso cambiarlo, es como si les dijera que les pienso arrebatar a un hijo. Ése era el nivel de emoción al que debía enfrentarme. Tuve que respetar esa conexión, esa historia, o de lo contrario me habrían rechazado de plano.)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Contexto",
                items: ["Cuando solicite a esta persona que haga algo, tómese el tiempo necesario para explicar el razonamiento sobre el cual basó su decisión. Esta persona necesita comprender el trasfondo de un curso de acción para poder comprometerse.",
                        "Cuando la presente a los empleados nuevos, pídales que le hablen acerca de sus historias antes de sentarse a trabajar.",
                        "Durante las reuniones recurra siempre a esta persona para repasar lo que se ha hecho y lo que se ha aprendido hasta el momento. Por instinto, esta persona querrá que los demás conozcan el contexto de las decisiones.",
                        "Es persona que piensa en términos de estudios de caso, es decir, lo que se hizo en una situación semejante, qué sucedió y cuáles lecciones se extrajeron. Esta persona podrá utilizar su talento para ayudar a otros a aprender, especialmente cuando es importante recurrir a estudios de caso. Sin importar el tema, pídale que recopile anécdotas reveladoras, que destaque la lección más importante de cada una de ellas, y quizás construya un curso alrededor de esos casos.",
                        "Lo mismo puede hacer con relación a la cultura de la organización. Pídale que recopile anécdotas de personas que hayan sido ejemplos vivos y piedras angulares de la cultura de la organización. Esas anécdotas, relatadas en boletines, cursos de capacitación, a través de la Red, vídeos, entre otros, fortalecerán la cultura de la organización."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Contexto",
                items_confianza: ["Relacione cada vez que pueda sus historias personales con las vidas de aquellos que Ud. piense que puedan interesarles. Mostrarse lo suficientemente vulnerable como para mostrar cosas de su pasado puede ser una excelente manera de ganarse la confianza de otros.",
                                  "Incentive a otros a compartir más historias y anécdotas y celebre los momentos en los cuales otros permitan que Ud. conozca detalles íntimos de sus vidas."],
                items_empatia: ["Ud. está interesado en las raíces, la historia y los momentos formativos de las vidas de aquellos que están cerca de Ud. Para Ud., una buena forma de iniciar una conversación sería algo así como “Cuénteme acerca de ese punto donde su vida dio un giro”. Haga preguntas que logren despertar en los demás el interés por contar historias atrapantes. Al mostrar interés en ellas, Ud. estará demostrando a su vez, que esas personas le interesan.",
                                "Recuerde la máxima cantidad de detalles posibles de todas las historias que alguna vez escuchó y úselas como puntos de conexión con esa persona.  En ciertas ocasiones, Ud. recordará esos detalles en público y esa persona agradecerá la confianza y empatía."],
                items_estabilidad: ["La estabilidad está íntimamente vinculada al talento Contexto. La sensación de que nada en el Universo es nuevo significa que hemos experimentado muchas de estas cosas antes y continuaremos haciéndolo. Haber sobrevivido a desafíos en el pasado habla de nuestra resiliencia y nos da la confianza necesaria para encontrar nuevas maneras de triunfar.",
                                    "La historia nos enseña paciencia y poner las cosas en perspectiva fomenta el entendimiento y la seguridad. Intente construir su perspectiva histórica del tema en cuestión. Ayude a que los demás vean al pasado como un maestro del cual se pueden aprender valiosas lecciones."],
                items_esperanza: ["Haga preguntas del tipo “¿Cómo llegó a esa decisión?” y “¿Alguna vez tuvo que lidiar con una situación similar a esa en el pasado?”.  Sus buenas preguntas y su forma cálida de guiar a la gente pueden proveer la perspectiva necesaria para que otros logren ver mejor una situación y, de esa manera, ayudarlos a evitar cometer errores recurrentes. Ud. puede ayudar a las personas a que reconozcan las fortalezas que ya han demostrado y que serán capaces de seguir demostrando en el futuro.",
                                  "Ayude a las personas a que encuentren sentido a sus vidas y a las circunstancias en las que se encuentran mostrándoles como vincular su presente (e incluso su futuro) con su historia personal. Trabaje con ellos en construir una cronología de sus vidas que incluya los momentos, decisiones y logros más significativos. Pregúnteles qué pudieron aprender en cada uno de esos hitos. Colabore con ellos para que puedan ver qué pueden hacer como consecuencia de todas las cosas que aprendieron.",
                                  "Reducir ideas complejas a sus elementos más básicos y fundamentales le ayudará a Ud. a entender propósito o la lógica detrás de ellas. Siga la evolución de una idea o plan desde su concepción hasta el presente cuando alguien ponga en duda o cuestione el propósito del mismo. Esto servirá para fortalecer la misión de su equipo.",
                                  "Recuérdeles a sus colegas que los valores y las metas de su organización están basados en la sabiduría que proviene del pasado. Mantenga viva la historia de su empresa contando una y otra vez aquellas historias que capturan su esencia. Estas anécdotas pueden servir como guía o inspiración en el presente mediante una mejor comprensión de lo vivido en el pasado. ¿Cree que puede ser un buen guardián de la sabiduría de su organización comenzando una colección de historias y recuerdos? Las generaciones futuras se lo agradecerán."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Contexto",
                items: ["Antes de comenzar la planificación de un nuevo proyecto, aliente a los involucrados a estudiar proyectos anteriores. Ayúdelos a comprender la siguiente afirmación: “quien olvida su pasado, repite sus errores.”",
                        "Si esta en un rol que requiera enseñar, arme sus clases alrededor de casos de estudio. Ud. disfrutará la búsqueda del caso apropiado, y sus alumnos aprenderán de los mismos. Use su comprensión de los hechos del pasado para ayudar a los otros a entender su futuro.",
                        "En el trabajo, ayude a su empresa a fortalecer su cultura organizacional a través del folclore. Por ejemplo, reúna símbolos e historias que representan lo mejor del pasado, o sugiera nombrar un premio en homenaje a alguien que personifique las tradiciones históricas de la organización.",
                        "Asóciese con alguien con talentos de Futuro o Estrategia. La fascinación de esta persona por lo que “podría ser” evitará que Ud. se quede atascado en el pasado, mientras que su entendimiento del contexto evitará que él o ella ignoren las lecciones del pasado. Juntos tienen más posibilidades de crear algo duradero.",
                        "Acepte el cambio. Recuerde que su talento de Contexto no requiere que Ud. “viva en el pasado”. En cambio, puede convertirse en alguien conocido como un factor de cambio positivo.  Su sentido natural de contexto debería permitirle identificar más fácilmente que a la mayoría los aspectos del pasado que deben ser descartados, y aquellos que deben conservarse para construir un futuro sustentable.",
                        "Compare éxitos pasados con hechos reales para crear una imagen vivida de lo que “podría ser” en el futuro. Las imágenes de la vida real que Ud. recrea pueden crear confianza y compromiso emocional.",
                        "UD. sabe que la mejor manera de predecir comportamientos futuros es estudiar los comportamientos del pasado. Analice junto a sus amigos y colegas las acciones del pasado que pueden haber contribuido a sus éxitos actuales, de manera de ayudarlos a tomar   mejores decisiones en el futuro. Esto los ayudará a poner las decisiones en un contexto global.",
                        "Lea novelas históricas, de hechos verídicos, o biografías. Ud. descubrirá diferentes puntos de vista que lo ayudarán a entender el presente. Ud. podrá pensar más claramente.",
                        "Compare hechos y situaciones históricas con desafíos del presente. Identificar puntos en común puede hacerle ver nuevas perspectivas o la solución a sus problemas.",
                        "Busque mentores que tengan conocimientos de historia. Escuchar sus memorias puede iluminar su proceso de pensamiento."]
              }
          }
        ]}).to_json},
      {nombre: "Futuro", dominio_id: 4, libro: "La revolución de la riqueza, Peter Senge", pelicula: "MINORITY REPORT", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Futuro**",
                texto: [ %Q(Si su talento es Futuro, usted es el tipo de persona a la cual le encanta mirar hacia el horizonte. La frase ''No sería genial si..." es recurrente en su vida. El futuro le fascina. Tal como si viera una proyección en la pared, usted observa en detalle lo que el futuro podría depararle. Esa imagen detallada le hace avanzar, introduciéndole en el mañana. Si bien el contenido exacto de la imagen dependerá de sus otros talentos e intereses, ya sean un mejor producto, un equipo, una vida o un mundo mejor, estos siempre serán objeto de inspiración para usted. Es un(a) soñador(a) que tiene visiones de lo que podría ser y ama esas visiones. Cuando el presente se muestra demasiado frustrante y la gente a su alrededor es demasiado pragmática, en su imaginación evoca visiones del futuro y éstas le dan energía a usted y posiblemente también a los otros. De hecho, muy a menudo la gente acudirá a usted para que les describa sus visiones del futuro. Desean ver una imagen que pueda ampliar sus observaciones y por lo tanto, sus espíritus. Usted puede describir esa imagen. Practique, escoja sus palabras cuidadosamente y hágalo de la forma más vivaz posible. Ellos querrán aferrarse a la esperanza que usted les dé. ),
                         %Q(El talento de Futuro se puede expresar así: ),
                         %Q(*Daniel B., administrador escolar:* "En todas las situaciones soy la persona que dice: '¿Alguna vez se les ocurrió pensar en...? Me pregunto si podríamos... No creo que no se pueda hacer. Lo que sucede es que nadie lo ha hecho antes... Busquemos la forma de hacerlo'. Siempre estoy buscando alternativas, caminos para escapar de la inercia de lo establecido. En efecto, lo establecido ni siquiera existe. Uno siempre está avanzando o retrocediendo. Ésa es la realidad de la vida, al menos como yo la veo. Y en este momento creo que mi profesión está retrocediendo. Las escuelas estatales se están quedando atrás en servicios con respecto a las privadas, a las escuelas con permisos especiales, la enseñanza en el hogar, la educación por la Internet. Debemos liberarnos de nuestras tradiciones y crear un futuro diferente".),
                         %Q(*Claudia F., médica internista:* "Aquí en la Clínica Mayo estamos lanzando un grupo denominado los Hospitalarios. En lugar de que los pacientes pasen de un médico a otro durante su permanencia en el hospital, sueño con una familia de profesionales con quince o veinte médicos de distintos géneros y razas, y veinte o veinticinco enfermeras. Habrá cuatro o cinco servicios nuevos en el hospital, la mayoría de los cuales trabajarán con los cirujanos brindando atención paraoperatoria así como atención especial para los ancianos hospitalizados. Aquí estamos redefiniendo el modelo de atención. No nos ocupamos de los pacientes sólo mientras están en el hospital. Si una persona viene para un reemplazo de rodilla, un integrante del equipo de Hospitalarios la vería antes de la cirugía, haría el seguimiento a partir del día de la intervención mientras permanezca en el hospital, y luego la vería para un control posoperatorio a las seis semanas. Les brindaremos a los pacientes una experiencia completa de atención a fin de que no se pierdan al pasar de mano en mano. Y para obtener el dinero, sencillamente vi todo el panorama en mi mente y se lo describí una y otra vez al director de mi departamento. Creo que lo describí de una manera tan vivida que no tuvo otra alternativa que otorgarme los fondos necesarios".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Futuro",
                items: ["Cuando sostenga conversaciones sobre la carrera o el desempeño de esta persona, recuerde que ella vive para el futuro. Pídale que le hable de la visión que tiene de su carrera, sobre la organización y sobre el mercado en general.",
                        "Permítale el tiempo necesario para pensar, planear y escribir sobre los productos y servicios que se requerirán en el futuro. Cree para ella oportunidades que le permi-tan compartir su punto de vista en boletines y reuniones de la compañía o en convenciones de la industria. ",
                        "Envíele todos los datos o artículos que considere de interés para ella, pues necesita materia prima para su molino futurista.",
                        "Asígnela al comité de planificación de la organización. Pídale que presente su visión, sustentada con datos, sobre lo que podrá llegar a ser la organización en tres años. Haga que repita esta exposición cada seis meses aproximadamente. De esta manera podrá completarla con más datos y nociones nuevas. Estimúlela hablándole frecuentemente de las cosas que podrían hacerse. Hágale muchas preguntas. Hágala describir lo más vívidamente posible el futuro que tiene en mente.",
                        "Cuando la organización necesite que su gente acepte el cambio, pídale que ponga ese cambio dentro del contexto de las necesidades futuras de la organización. Pídale que haga una exposición o escriba un artículo en donde ponga los cambios en perspectiva. Ella podrá ayudar a los otros a vencer la incertidumbre y desarrollar tanto entusiasmo como el de ella por las posibilidades del futuro."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Futuro",
                items_confianza: ["Cada vez que ayude a alguien, imagine lo que está por venir, sin olvidar que esa visión siempre debe estar atada a la realidad. Mucha gente no tiene la facilidad que Ud. posee para ver cómo serán o cómo se verán las cosas dentro de varias décadas. Por esto, intente utilizar ejemplos y proveer la mayor cantidad de detalles posible. Una actitud realista le ayudará a construir confianza en sus ideas visionarias.",
                                  "Dada su habilidad natural para mirar hacia adelante, a veces esto puede significar que Ud. detecte cosas en el horizonte que no son nada agradables. A pesar de que Ud. disfruta más hablar de posibilidades que de problemas, también es capaz de ayudar a la gente a que vea y se anticipe a ciertos problemas, como a sortear las dificultades que se vayan presentando en el camino. Muchas personas se sentirán más confiadas al percibir que Ud. tiene esa capacidad de anticiparse y advertirles acerca de posibles riesgos."],
                items_empatia: ["Una de las mejores maneras de establecer una conexión con otro ser humano es escuchar. Consulte con la gente que Ud. conduce acerca de los sueños que ellos tienen. Pídales que describan cómo es el futuro ideal para ellos. En algún punto de la historia de estas personas, su talento Futuro encontrará la manera de conectar con ellas. Construya a partir de esa conexión mediante preguntas, comentarios y cualquier otra manera de agregar claridad a las ideas y sueños que tienen. Esas personas se sentirán más próximas a sus ideas y compartirán más sensaciones acerca de su visión de futuro tan clara y definida.  ",
                                "Ud. ve el futuro de una manera más clara que los demás, por lo que en algunos momentos de su vida, Ud. se encontrará soñando por otros. Explíqueles que esto no es para nada difícil para Ud. y que probablemente no lo sea para ellos si lograsen enfocarse en alguna idea que logre transportarlos. Quizás Ud. pueda ver talentos en ellos que ellos mismos aún no han descubierto. Invertir tiempo y energía en pensar acerca de posibilidades y qué es lo mejor para otros muestra afecto y cuidado de su parte y demuestra una gran característica de Ud. como líder. "],
                items_estabilidad: ["La gente suele exagerar el temor al presente debido a que no puede ver más allá y enfocarse en lo que les depara el futuro. Ud. tiene el don de la perspectiva. Sus pensamientos no están limitados por las circunstancias actuales. Intente compartir con sus colaboradores esa calma que le genera saber que el presente no es tan horrible y que el futuro traerá respuestas a muchos de sus interrogantes.",
                                    "Cada vez que piense en el futuro, asegúrese de confirmar con sus colaboradores los sentimientos que ellos tienen al respecto. Esto es importante, ya que si su visión es a muy largo plazo o muy incierta, ellos pueden sentir algún temor o incomodidad. Pregúnteles cómo se sienten en esos escenarios virtuales que Ud. plantea. Ayúdelos a encontrar un lugar en esas nuevas realidades, ya que solo ellos pueden controlar su propio destino."],
                items_esperanza: ["Debido a que Ud. tiene el don de pensar a futuro con facilidad, no debería sorprenderse cada vez que alguien le pide consejos acerca de qué camino tomar o qué opción, dentro de una serie de alternativas, deberían elegir. Es más, es probable que por esta razón Ud. haya sido guía de otros a lo largo de su vida, sin haber consignado completamente este rol. Cuando lo haga, asegúrese de escuchar e indague acerca de los motivos por los cuales lo buscan. Intente compatibilizar sus ideas futuristas con los temores o dudas ajenas del presente.",
                                  "Su capacidad para crear imágenes del futuro será siempre una fuente de inspiración para mucha gente. Cuando describa estas imágenes con palabras, asegúrese de usar metáforas que vinculen lo futuro con conceptos que la gente pueda relacionar hoy. Muestre estas ideas (o estrategias) mediante gráficos o planes de acción paso a paso para lograr que la gente vea sus intenciones lo más claramente posible. "]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Futuro",
                items: ["Elija roles en los que pueda contribuir con sus ideas acerca del futuro. Por ejemplo, puede sobresalir en situaciones de emprendimientos o start-ups.",
                        "Tómese el tiempo para pensar el futuro. Cuanto más tiempo dedique a considerar ideas sobre el futuro, mas gráficas serán éstas. Si las ideas son más gráficas, Ud. será más convincente.",
                        "Busque audiencias que aprecien sus ideas sobre el futuro. Ellos esperarán que convierta esas ideas en realidades, y esas expectativas lo motivarán.",
                        "Encuentre un amigo o colega que tenga también un fuerte talento Futuro. Tenga una hora al mes para debates sobre el “futuro”. Se empujarán mutuamente a mayores niveles de creatividad.",
                        "Asóciese con alguien con un marcado talento de Impulso. Esta persona le recordará que el futuro no se descubre, sino que Ud. lo crea con las acciones que hace hoy.",
                        "Ud. inspira a los demás con sus imágenes del futuro, sin embargo su pensamiento puede ser demasiado amplio para que lo comprendan. Cuando exprese su visión, asegúrese de describir en detalle con palabras y metáforas gráficas. Haga sus ideas y estrategias más concretas a través de gráficos, planes detallados paso a paso, o maquetas para que los otros puedan captar su idea fácilmente.",
                        "Rodéese de gente que esté ansiosa de poner sus ideas en práctica. Ellos se sentirán estimulados con su talento Futuro, y Ud. podrá aprovechar esa energía para convertir sus visiones en realidad.",
                        "Esté preparado para darle soporte lógico a su pensamiento futurístico. Sus emocionantes visiones de futuros éxitos serán mejor recibidas si están basadas en posibilidades reales.",
                        "Su talento Futuro podrían ayudarlo a ser una guía o mentor para otros. A diferencia de Ud. , ellos pueden no tener la habilidad de ver más allá del horizonte. Si Ud. puede ver que podría ser o hacer alguien, no asuma que dicha persona está al tanto de ese potencial. Comparta lo que ve tan detalladamente cómo le sea posible. Al hacerlo, puede motivar a alguien a avanzar.",
                        "Meditar acerca del futuro es natural en Ud. Lea artículos acerca de tecnología, ciencia, e investigue para obtener conocimientos que nutran su imaginación."]
              }
          }
        ]}).to_json},
      {nombre: "Ingenio", dominio_id: 4, libro: "El éxito de los perezosos, Ernie J. Zelinski", pelicula: "TEMPLE GRANDIN", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Ingenio**",
                texto: [ %Q(A usted le fascinan las ideas. ¿Qué es una idea? Es la mejor manera de explicar la mayoría de los sucesos. A usted le encanta descubrir dentro de lo complejo un concepto de elegante sencillez para explicar por qué las cosas son lo que son. Una idea es un vínculo y su mente siempre está buscando esos vínculos o relaciones. Le intriga cómo los fenómenos aparentemente dispares pueden conectarse. Una idea es una perspectiva nueva sobre desafíos que le son familiares. Usted disfruta de darle un vuelco al mundo que todos conocemos, examinándolo desde un ángulo nuevo, desconocido, y al presentarlo resulta esclarecedor para los otros. Lo(a) seducen todas esas ideas, porque son profundas, novedosas, esclarecedoras, contradictorias y osadas. Por todas estas razones, cada vez que se le ocurre una idea nueva usted se carga de energía. Le conocen como una persona con pensamiento creativo, original, conceptual y/o ingenioso. No importa como lo(a) clasifiquen los demás, a usted lo que más le importa son las ideas, y éstas le resultan emocionantes.),
                         %Q(El talento de Ingenio se puede expresar así: ),
                         %Q(*Salvador B., escritor:* "Mi mente siempre está buscando conexiones entre las cosas. Hace poco andaba buscando la Mona Lisa en el museo del Louvre cuando al doblar una esquina me tropecé con las luces de miles de cámaras fotografiando el pequeño retrato, por alguna razón guardé esa imagen en mi mente. Después vi el aviso de PROHIBIDO TOMAR FOTOS CON FLASH y también almacené esa imagen en mi mente. Pensé que había algo raro porque recordaba haber leído que la fotografía con flash daña las pinturas. Después, transcurridos unos seis meses, leí que la Mona Lisa había sido robada por lo menos dos veces en este siglo. Y fue entonces cuando encajaron todas las piezas. La única explicación de todos esos hechos es que la Mona Lisa exhibida en el Louvre no es la auténtica. La verdadera fue robada y el museo, temeroso de reconocer su negligencia, está exhibiendo una copia falsa. No sé si sea cierto, pero la verdad es que la historia no podría ser mejor".),
                         %Q(*Andrea H. diseñadora de interiores:* "En mi mente todo debe encajar o de lo contrario comienzo a sentirme muy extraña. Para mí, cada mueble representa una idea. Cumple una función específica, tanto independientemente como en conjunto con el resto de los elementos de la decoración. La 'idea' de cada pieza es tan fuerte en mi mente que debe ser obedecida. Si me voy a sentar en una habitación donde las sillas de alguna manera no desempeñan su función específica porque son del tipo equivocado o miran en una dirección equivocada o están muy cerca de la mesa de centro, comienzo a sentirme físicamente incómoda y mentalmente dispersa. Posteriormente, no logro alejar el asunto de mi mente. Me despierto a las tres de la mañana y recorro mentalmente la casa de la persona, reorganizando los muebles y cambiando el color de las paredes. Esto comenzó a sucederme cuando era muy pequeña, quizás a los siete años".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Ingenio",
                items: ["Esta persona tiene ideas creativas. Ubíquela donde sus ideas sean valoradas.",
                        "Será especialmente eficaz diseñando ya sea estrategias de ventas, campañas de marketing, soluciones de servicio al cliente o productos nuevos. Cualquiera que sea su campo, aproveche al máximo su destreza para diseñar.",
                        "Puesto que florece con las ideas, trate de nutrirla con ideas nuevas que quepan dentro del enfoque de su organización. No sólo sentirá más entusiasmo por su trabajo sino que se valdrá de esas ideas para generar otras nociones y descubrimientos propios.",
                        "Anímela a pensar en ideas o nociones útiles que se puedan compartir con sus mejores clientes. Según la investigación de la Organización Gallup, está claro que cuando una compañía enseña deliberadamente a sus clientes algo, el nivel de lealtad aumenta.",
                        "Esta persona disfruta el poder de las palabras. Siempre que encuentre una combinación de palabras que refleje perfectamente un concepto, una idea o un pa-trón, comuníqueselo. Esto la estimulará a pensar. ",
                        "Ella necesita saber que todas las piezas encajan. Cuando tome decisiones, dedique tiempo a demostrarle la forma como cada decisión emana de la misma teoría o concepto.",
                        "En las pocas ocasiones en que una decisión no encaje dentro del concepto global, asegúrese de explicarle que se trata de una excepción o un experimento. Sin esta explicación, esta persona comenzará a preocuparse de que la organización está perdiendo coherencia"]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Ingenio",
                items_confianza: ["El propósito en el que Ud. basa su deseo constante por idear cosas nuevas puede ser una fuente de confianza para ayudar a otros a que tomen buenas decisiones. No olvide explicar los “porqués” que hay detrás de sus elecciones. Ayude a que los demás vean que sus ideas son para mejorar lo que ya existe, aunque también para romper con lo antiguo y encontrar soluciones novedosas.",
                                  "Hago todo de manera simple. Sus ideas pueden llegar a confundir a algunas personas. Donde Ud. ve simplicidad, ellos pueden ver complejidad. Haga esfuerzo para encontrar formas simples de explicar lo complejo, aunque esto implique dejar de lado algunos detalles. Ayúdeles a conectar lo que es con lo que puede ser."],
                items_empatia: ["Es probable que los demás aprecien su creatividad y su búsqueda continua de nuevas ideas. Invítelos a que recorran el camino con Ud. Pídales que sueñen con Ud. Comparta su entusiasmo por lo novedoso, ya que, aunque sea en forma parcial, esto le ayudará a compartir con otros e incluso forjar nuevas amistades.",
                                "Asóciese con personas que tengan un gran sentido de la practicidad. Ellos podrán simplificar sus ideas para poder ser llevadas a la práctica. Ud. puede ser su inspiración, mientras que ellos pueden convertir sus sueños en realidad. Sus diferencias pueden formar una gran sociedad. No olvide mostrar su agradecimiento por el gran aporte que ellos hacen."],
                items_estabilidad: ["La estabilidad y el ingenio pueden verse como incompatibles. Ud. permanentemente busca romper con lo establecido y encontrar nuevas maneras de hacer las cosas. Explicite cuantas veces sea necesario que Ud. no intenta destruir nada, simplemente busca construir algo mejor. Ud. entiende mejor que nadie que la seguridad no se garantiza por mantener las cosas como están, sino por prepararse lo mejor posible para el futuro.",
                                    "Ud. debe arriesgarse para sentirse a gusto. Aun así, Ud. puede calmar a sus colaboradores, explicándoles que esos riesgos han sido analizados y no son algo imprudente. Fomente la confianza de ellos en sus ideas intentado explicarles la lógica que subyace detrás de ellas. Manténgalos informados acerca de los avances y novedades. "],
                items_esperanza: ["Ud. encaja perfecto en cualquier departamento de investigación y desarrollo (I+D). Ud. respeta a aquellos en su organización que han demostrado ser visionarios a lo largo de sus carreras. Pase más tiempo con gente imaginativa, participe en procesos de “tormenta de ideas”. Invite a estas reuniones a personas que Ud. sepa que frecuentemente tienen buenas ideas. Construya equipos con ellos. Genere ámbitos donde las ideas producto de su talento Ingenio sirvan para inspirar a los demás.",
                                  "Busque a personas fuera de su ámbito laboral que estén dispuestas a compartir buenas ideas y a escuchar las suyas. Los conocimientos de estas personas en ámbitos que para Ud. son desconocidos pueden ser muy inspiradores. Aprovecha la sinergia de ideas que podría generarse."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos: 
              {
                talento: "Ingenio",
                items: ["Busque una carrera en la cual sea reconocido y le paguen por sus ideas, como marketing, publicidad, periodismo, diseño o desarrollo de nuevos productos.",
                        "Es probable que Ud. se aburra rápidamente, entonces haga pequeños cambios en su trabajo o vida cotidiana. Experimente. Juegue mentalmente con Ud. mismo. Todo esto lo ayudara a mantenerse estimulado.",
                        "Finalice sus pensamientos e ideas antes de comunicarlos. Al no poseer su talento de Ingenio, otros pueden no “conectar los puntos” de una interesante pero incompleta idea y por ello descartarla.",
                        "No todas sus ideas serán igualmente practicables o útiles. Aprenda a editar sus ideas, o encuentre un amigo confiable o colega que pueda “probar” sus ideas e identificar probables problemas.",
                        "Entienda cual es el combustible de su talento de INGENIO. Cuándo tiene las mejores ideas? Cuando está hablando con otras personas? Cuando está leyendo? Cuando esta simplemente escuchando u observando? Tome nota de las circunstancias que parecen producir sus mejores ideas, y recréelas. ",
                        "Planifique tiempo para leer, porque las ideas y experiencias de otros pueden convertirse en materia prima para nuevas ideas. Planifique tiempo para pensar, porque pensar le da energía.",
                        "Ud. encaja naturalmente con la investigación y el desarrollo; Ud. aprecia la mentalidad de los visionarios y soñadores. Pase tiempo con compañeros imaginativos, y participe en sus sesiones de brainstorming.",
                        "Asóciese con alguien con fuerte talentos de Análisis. Esta persona lo cuestionará y desafiará, fortaleciendo sus ideas.",
                        "Algunas veces otros pierden interés en Ud. porque no pueden seguir su estilo de pensamiento abstracto y conceptual. Haga sus ideas más concretas a través de dibujos, use analogías o metáforas, o simplemente explique sus conceptos paso a paso. ",
                        "Alimente su talento de Ingenio a través del conocimiento. Estudie campos e industrias diferentes a la suya. Aplique ideas de afuera, y conecte ideas dispares para generar nuevas."]
              }
          }
        ]}).to_json},
      {nombre: "Curiosidad", dominio_id: 4, libro: "Conocimiento Inventado, Fritze", pelicula: "PI", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Curiosidad**",
                texto: [ %Q(Con su talento Curiosidad a usted le gusta coleccionar una diversidad de cosas. Es posible que coleccione información tal como palabras, hechos, libros y citas. Tal vez coleccione objetos tangibles como mariposas, antigüedades, autos de colección, estampillas o camisetas de equipos de fútbol. Sin importar lo que coleccione, lo hace porque le interesa. Por su mentalidad, muchas cosas le resultan interesantes. El mundo es excitante para usted, precisamente por su variedad y complejidad infinitas. Si lee mucho, no es necesariamente para refinar sus teorías, sino más bien para agregar información a sus archivos. Si le gusta viajar, es porque cada lugar nuevo le ofrece objetos, situaciones y hechos nuevos, que usted adquiere y entonces guarda. ¿Por qué vale la pena guardarlos? En ese momento suele ser difícil decir exactamente cuándo o por qué podría necesitarlos, pero usted piensa: ¿y en el futuro? Su respuesta es que uno nunca sabe cuándo podrían ser útiles. Teniendo en cuenta todos esos posibles usos, usted realmente se siente mal desechando cosas, de manera que sigue adquiriendo, acumulando y guardando objetos e ideas. Le resulta interesante, le mantiene la mente actualizada y tal vez, un día, algunas de esas cosas e ideas demostrarán su valor.),
                         %Q(El talento Curiosidad se puede expresar así:),
                         %Q(*Elena O.,  escritora:* “Desde  niña  deseaba  saberlo todo. Jugaba a hacer preguntas. '¿Cuál es mi pregunta de hoy?'. Inventaba las preguntas más extrañas y salía a buscar los libros en los que pudiera encontrar las respuestas. Muchas veces excedí mis alcances consultando libros que no entendía en lo absoluto, pero los leía porque tenían mi respuesta en alguna parte. Mis preguntas se convirtieron en mi herramienta para pasar de una información a otra".),
                         %Q(*Juan R., ejecutivo de recursos humanos:* "Soy de las personas que piensa que la Internet es el mejor invento desde la rueda. Antes vivía frustrado, pero ahora cuando deseo saber cómo se está comportando la bolsa en determinado campo, o cuáles son las reglas de un cierto juego, o cuál es el producto interno bruto de España, o cualquier otra cosa, sencillamente enciendo el computador y comienzo a buscar hasta que encuentro lo que quiero".),
                         %Q(*Carlos F., vendedor:* "Yo mismo me asombro de la cantidad de "basura" que guardo en mi mente y me encanta jugar Jeopardy, Trivial Pursuit y juegos parecidos. No me importa deshacerme de las cosas, siempre y cuando que sean materiales, pero detesto desperdiciar el conocimiento o las cosas aprendidas o no poder leer algo completo si lo disfruto".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Curiosidad",
                items: ["Centre el talento Curiosidad natural de esta persona pidiéndole que investigue un tema de importancia para la organización. Disfruta el conocimiento derivado de la investigación.",
                        "Ubíquela en roles con un gran componente de investigación.",
                        "Preste atención a sus demás Talentos Dominantes. Si también es fuerte en talento Desarrollo, podría sobresalir como maestro o instructor al salpicar sus lecciones con hechos y anécdotas curiosas. ",
                        "Manténgala informada de las noticias de la organización. Es persona que necesita estar al tanto de todo. Hágale llegar libros, artículos y documentos que considere que deseará conocer y leer. ",
                        "Estimúlela a utilizar la Internet. La utilizará para encontrar la información que crea necesitar. No toda esta búsqueda de información tendrá utilidad inmediata, pero será importante para su autoestima. ",
                        "Ayúdela a desarrollar un sistema para archivar la información recopilada. Este sistema garantizará que la pueda recuperar cuando ella y la organización la necesiten.",
                        %Q("Durante las reuniones, cerciórese de pedirle información. Busque oportunidades para decir algo positivo sobre su buena memoria, como: "Es asombroso. Parece tener siempre a mano los hechos que necesitamos".)]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Curiosidad",
                items_confianza: ["Asegúrese que la información que maneja sea actualizada y precisa. Esto le permitirá transformarse en una autoridad confiable. Revise sus múltiples fuentes de información de manera periódica y ayude a otros a distinguir entre hechos y opiniones.",
                                  "Cada vez que Ud. le facilita a las demás personas la información que ellos necesita, se gana el respeto de ellos como una persona en quien pueden confiar. El empeño que Ud. pone en su trabajo a la hora de investigar u ordenar datos es percibido como calidad y eso hace que los demás confíen aún más en sus conclusiones."],
                items_empatia: ["Ud. no es un líder convencional. Ud. inspira a los demás cada vez que se muestra como una persona con recursos y atento a los hechos más recientes. Hágales saber que Ud. disfruta cuando las personas le hacen preguntas desafiantes. Use su talento Curiosidad para conectar con otros y muéstrese disponible en caso de que alguien necesite su ayuda.",
                                "Cada vez que Ud. conozca a personas que compartan sus intereses, piense más allá de la oportunidad de aprendizaje y concéntrese en las posibilidades que podría brindarle esa nueva relación. Esto incluso podría ser el comienzo de una amistad. Use su talento Curiosidad como un punto de partida e invite a estas personas a actividades que Ud. desee compartir."],
                items_estabilidad: ["Sus conocimientos son como cimientos para la estabilidad. Cuando las demás personas ven que Ud. ha investigado un tema con la profundidad que lo caracteriza, ellos confían en que las decisiones que se tomarán son las más convenientes. No olvide compartir con ellos algunos detalles de su investigación. Inclúyalos cada vez que pueda.",
                                    "Ud. no es un mero coleccionista de datos. Ud. recopila información para tenerla disponible cuando sea necesario. Cada vez que Ud. trabaja en el soporte y la documentación de tareas, aun siendo estas un poco riesgosas, Ud. transmite una imagen de estabilidad que los demás saben apreciar."],
                items_esperanza: ["Su cabeza actúa como una esponja, por lo que debe recordar siempre que, así como para una esponja el propósito no es retener líquidos de forma permanente, lo mismo debe ocurrir con la información que Ud. recaba. Si bien Ud. disfruta recopilar datos, esa información cobra mucho más sentido una vez que Ud. la comparte y, sobre todo, lo hace en un marco de trabajo en equipo.",
                                  "Expóngase frente a los pensamientos e ideas de otros. Involúcrese en discusiones serias de tanto en tanto. Mediante este proceso, Ud. se transformará en un aprendiz que, a su vez, es capaz de enseñar."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Curiosidad",
                items: ["Busque tareas o roles donde tenga la oportunidad de encontrar información novedosa todos los días. La docencia, el periodismo y la investigación son áreas donde es más probable que esto ocurra.",
                        "Arme su propio sistema de organización de información, de tal manera que Ud. tenga acceso a ella cuando lo desee. Esto puede ir desde algo tan simple como una carpeta con recortes de artículos periodísticos hasta algo tan sofisticado como una base de datos programada en función de sus gustos y necesidades.",
                        "Asóciese con aquellos que poseen talentos Enfoque y/o Disciplina. Una persona con alguno de esos talentos puede ayudarlo a mantenerse enfocado en una tarea puntual, ya que su inclinación natural siempre será desviarse hacia lugares más novedosos.",
                        "Su mente es abierta y absorbente. Su cabeza actúa como una esponja, por lo que debe recordar siempre que, así como para una esponja el propósito no es retener líquidos de forma permanente, lo mismo debe ocurrir con la información que Ud. recaba. Si bien Ud. disfruta recopilar datos, esa información cobra mucho más sentido una vez que Ud. la comparte y, sobre todo, lo hace en un marco de trabajo en equipo.",
                        "La cantidad de información que Ud. maneja es probable que lo posicione como experto en esos temas. No tema ser reconocido como una autoridad en la materia.",
                        "Tenga presente que Ud. debe ser mucho más que un mero recolector de datos. En algún punto, esa información debe transformarse en acción. Confirme con los demás cuáles son los datos y estadísticas que ellos más valoran y asegúrese que los tengan siempre disponibles.",
                        "Identifique sus áreas de especialización e intente encontrar nuevas fuentes de información acerca de ellas.",
                        "Hágase el tiempo para leer libros (o artículos) que resulten estimulantes.",
                        "Haga crecer su vocabulario intencionalmente. Busque nuevas palabras y sus significados e intente encontrar nuevas oportunidades para usarlas.",
                        "Intente identificar los momentos más adecuados para compartir mucha de la información que Ud. maneja con otros. Hágase el tiempo para responder a aquellas preguntas que ellos pudieran tener."]
              }
          }
        ]}).to_json},
      {nombre: "Intelecto", dominio_id: 4, libro: "Flow, Csikszentmihalyi, Mihaly", pelicula: "A BEAUTIFUL MIND", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Intelecto**",
                texto: [ %Q(A usted le gusta pensar, disfruta de la actividad y el ejercicio mental. Es posible que su necesidad de actividad mental esté enfocada hacia algo específico. Por ejemplo, puede tratar de resolver un problema, desarrollar una idea o comprender los sentimientos de otras personas. Cualquiera que sea el enfoque de su pensamiento, éste dependerá de sus otros talentos e intereses. Aunque también es muy posible que esa actividad mental carezca de un enfoque específico. El talento Intelecto no define el objeto de su pensamiento, simplemente describe que a usted le gusta pensar. Usted es una persona introspectiva y por lo tanto disfruta de estar sola para poder dedicarle tiempo a la meditación y a la reflexión. En cierto sentido usted mismo(a) es su mejor compañía, ya que constantemente se hace preguntas e intenta encontrar sus propias respuestas, evaluándolas. Esa introspección, o bien podría causarle una sensación de descontento, cuando compara lo que realmente está haciendo con todos los pensamientos e ideas que concibe, o bien podría dirigirse a asuntos más pragmáticos como los acontecimientos del día o alguna llamada o cita pendiente. A donde sea que esta actividad mental lo(a) dirija, ésta siempre será una constante en su vida.),
                         %Q(El talento Intelecto se puede expresar así: ),
                         %Q(*Lorena H., gerente de proyecto:* "Imagino que todas las personas que me conocen casualmente suponen que soy muy extrovertida. No niego el hecho de que me encanta la gente, pero se sorprenderían al saber cuánto tiempo necesito estar a solas, cuánta soledad necesito para poder funcionar en público. Realmente me encanta estar conmigo misma. Adoro la soledad porque da la oportunidad a mi mente difusa de gestar otras cosas. Es ahí donde nacen mis mejores ideas. Mis ideas necesitan hervir para llegar a su punto. Uso esta frase desde que estaba joven: 'Ya añadí mis ideas y tengo que esperar hasta que estén en su punto'".),
                         %Q(*Miguel P., ejecutivo de marketing:* "Es raro, pero siento la necesidad de que haya ruido a mi alrededor o de lo contrario no me puedo concentrar. Hay partes de mi cerebro que deben permanecer ocupadas; si no es así, se distrae con tantas cosas que termino no pudiendo hacer nada. Si puedo ocupar mi cerebro con la televisión o con el alboroto de mis hijos, entonces me puedo concentrar mucho mejor".),
                         %Q(*Jorge H., gerente de planta y ex preso político:* "Solían meternos al calabozo como castigo, pero yo no sufría tanto como los demás. Es de esperarse que la soledad fuera insoportable, pero no lo era en mi caso. Utilizaba el tiempo para reflexionar sobre mi vida, averiguar la clase de hombre que era y lo que era realmente importante para mí, como mi familia y mis valores. De una extraña manera, el aislamiento en el calabozo me tranquilizaba y me fortalecía".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Intelecto",
                items: ["Aproveche el hecho de que pensar hace vibrar a esta persona. Por ejemplo, cuando necesite explicar la razón para hacer algo, pídale que la medite y produzca para usted la explicación perfecta.",
                        "No dude en desafiarla a pensar. No se sentirá amenazada por ello sino que, por el contrario, lo interpretará como señal de que usted le presta atención, lo cual la motivará.",
                        "Anímela a destinar períodos prolongados a la reflexión. Hay quienes creen que es improductivo pensar, pero en el caso de esta persona no es así. El resultado para ella será mayor claridad y seguridad en sí misma.",
                        "Cuando tenga libros, artículos o propuestas que deban evaluarse, pídale a esta persona que los lea y le escriba un informe. A ella le encanta leer.",
                        "Converse detenidamente con ella sobre sus fortalezas. Probablemente disfrute esa introspección y el descubrimiento de lo que lleva adentro.",
                        "Permítale presentar sus ideas a otras personas del departamento. La presión de tener que poner en palabras sus pensamientos la obligará a perfeccionarlos y aclararlos.",
                        "Esté dispuesto(a) a buscarle un complemento fuerte en el talento Impulso que la empuje a poner en práctica sus pensamientos e ideas."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Intelecto",
                items_confianza: ["Cuando Ud. analiza cuidadosamente la forma de pensar de las personas y les da una opinión respetuosa al respecto, Ud. en realidad los está ayudando a no cometer siempre los mismos errores. Eso hará que ellos sientan que Ud. los quiere ayudar genuinamente.",
                                  "Su capacidad intelectual hará que muchos lo respeten por eso. Esto no es suficiente. Pruébese a Ud. mismo que el pensamiento sin acción no siempre es útil. Use su talento Intelecto para hacer la diferencia y recién ahí sentirá que ese respeto es bien merecido."],
                items_empatia: ["Compartir charlas o debates con otros es su manera de darle sentido a muchas cosas en su vida. Esta es una excelente manera de construir relaciones. Si realiza preguntas provocativas, asegúrese que los demás conocen sus intenciones, ya que su talento de Intelecto puede ser interpretado como agresividad o violencia por aquellos que no están acostumbrados a confrontar ideas. Aquellos que valoran esa cualidad en Ud. lo buscarán frecuentemente para poner sus ideas a prueba y así ayudarles a construir mejores planes.",
                                "Si bien Algunos preferirán que Ud. piense con ellos, otros querrán que Ud. piense por ellos. Estos casos, esa será una forma que estas personas encontrarán para acercarse a Ud., ya que siempre les mostrará una visión distinta de las cosas. Para aquellos muy orientados a la acción Ud. puede ser el compañero perfecto, ya que les ayudará a completar ideas básicas y de esa manera, mejorarán sus probabilidades de tener éxito."],
                items_estabilidad: ["En algunas ocasiones, Ud. deberá ir más despacio para que otros lleguen a comprender sus ideas. En esos casos, rebobine y comience su historia desde más atrás, con ideas más simples y vaya construyendo la idea más compleja paso a paso. Esto, al mismo tiempo, le ayudará a que otros, al haber comprendido mejor, apoyen más sus iniciativas.",
                                    "Tenga paciencia al explicar sus necesidades de soledad y más espacio para pensar. Hágales saber que esto solamente refleja un estilo y que no es personal. Cuénteles cómo este tipo de momentos de privacidad frecuentemente deriva en una buena idea o un plan exitoso."],
                items_esperanza: ["Estimule a otros a que use todo su capital intelectual guiándolos en sus conversaciones hacia áreas de pensamiento más sofisticadas. Esté alerta al hecho de que para algunas personas esto puede ser muy intimidatorio. No se desaliente. Intente llevarlos hacia un terreno común, donde ellos no se sientan incómodos y Ud. no sienta que está perdiendo el tiempo. Convénzalos para que utilicen ese “nuevo” modo de pensar para soñar con un futuro promisorio para sus propias vidas.",
                                  "Muchas veces Ud. ayudará a otros a finalizar sus proyectos simplemente con criticar o elogiar alguna idea. Cuando lo haga, tenga todo el proceso en mente e intente poner su Intelecto a trabajar en metas o proyectos a largo plazo."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Intelecto",
                items: ["Considere comenzar o continuar sus estudios en Psicología, literatura o filosofía. Siempre encontrará temas que lo estimularan.",
                        "Liste sus ideas en un log o diario. Estas ideas servirán de molienda para su molino mental, y pueden resultar en valiosas observaciones.",
                        "Establezca deliberadamente relaciones con gente a la que considere “grandes pensadores”. Su ejemplo lo inspirara a enfocarse en sus propios pensamientos.",
                        "La gente puede pensar que usted está en las nubes o desconectado cuando cierra la puerta o pasa tiempo a solas. Ayúdelos a entender que esto es simplemente un reflejo de su estilo de pensamiento, y que no resulta de una indiferencia hacia las relaciones, sino del deseo de brindar a las mismas lo más que puede.",
                        "Ud. esta de lo mejor cuando tiene tiempo de seguir un camino intelectual y ver adónde conduce. Involúcrese en la dase inicial de los proyectos e iniciativas, más que en la ejecución. Si se suma en las partes finales del proceso, puede hacer descarrilar lo que ya se ha decidido y sus observaciones pueden llegar demasiado tarde.",
                        "Involucrar gente en debates intelectuales y filosóficos es una de las maneras en las que encuentra sentido a las cosas. Esto no es el caso para todos. Asegúrese de canalizar sus preguntas provocativas a aquellos que como Ud. encuentran entretenido el ir y venir de los debates.",
                        "Planifique tiempo para pensar: puede ser energizante para Ud. Utilice estas ocasiones para inspirarse y reflexionar.",
                        "Tómese tiempo para escribir. Escribir puede ser la mejor manera para que Ud. cristalice e integre sus pensamientos.",
                        "Encuentre gente a la que le guste conversar acerca de los mismos temas que a Ud. Organice grupos de conversación que toquen los temas que le interesan.",
                        "Anime a las personas a su alrededor a usar todo su potencial intelectual reformulando preguntas para ellos y llevándolos a dialogar. A la vez tenga en cuenta que algunos pueden encontrar esto intimidante y necesitaran tiempo para reflexionar antes de exponerse."]
              }
          }
        ]}).to_json},
      {nombre: "Aprendizaje", dominio_id: 4, libro: "Conocimiento para la acción, Chris Argyris", pelicula: "GOOD WILL HUNTING", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Aprendizaje**",
                texto: [ %Q(A usted le encanta aprender. La materia objeto de su interés estará determinada por sus otros talentos y experiencias, pero cualquiera que sea el tema, siempre se sentirá atraído(a) por el proceso de aprendizaje. El proceso, más que el contenido o el resultado, es lo que lo(a) entusiasma en particular. Le exalta la travesía continua y deliberada de la ignorancia al conocimiento. La emoción de las primeras tareas, los esfuerzos iniciales para recitar o practicar lo que ha aprendido, el desarrollo de la confianza ante una técnica dominada: ese es el proceso que le atrae. Su entusiasmo le lleva a embarcarse en experiencias de aprendizaje constantes, aun en su vida de adulto, ya sean lecciones de yoga o de piano o clases de posgrado en una universidad. Este talento le permite prosperar en situaciones de trabajo dinámicas, en las cuales se le pida que asuma proyectos a corto plazo que requieran que aprenda sobre un tema nuevo, dentro de un periodo breve, para luego pasar al siguiente. El talento de Aprendizaje no significa necesariamente que usted busque convertirse en experto en una materia, ni que su único objetivo sea recibir el respeto que acompaña a un profesional o a un académico. El resultado del aprendizaje tiene menos importancia para usted que el proceso de aprender en sí.),
                         %Q(El talento de Aprendizaje se puede expresar así: ),
                         %Q(*Ana M., editora en jefe:*"Me pongo nerviosa cuando no estoy aprendiendo algo. El año pasado, aunque disfrutaba mi trabajo, sentía que no aprendía lo suficiente. Entonces decidí tomar clases de "tap". Suena raro, ¿verdad? Sé que nunca me subiré a un escenario, pero me encanta concentrarme en la técnica del zapateo, mejorar un poco cada semana y pasar del nivel de principiante al intermedio. Eso me encanta".),
                         %Q(*Mauricio A., gerente de operaciones:* "Cuando tenía siete años, mis profesores les decían a mis padres: Mauricio no es el niño más inteligente de la escuela pero es como una esponja para aprender y seguramente llegará lejos porque se esfuerza y absorbe las cosas nuevas continuamente'. En este momento estoy iniciando un curso de inglés para viajeros de negocios. Sé que seguramente es demasiado aspirar a conversar en inglés y adquirir un conocimiento profundo del idioma, pero por lo menos deseo poder viajar a los países anglosajones y conocer el idioma".),
                         %Q(*Aarón S., asesor de ejecutivos:* "Uno de mis clientes es tan inquisitivo que se enloquece al no poder hacer todo lo que desea. Yo soy diferente. No soy curioso en el sentido amplio de la palabra. Prefiero ahondar en las cosas para llegar a ser competente en ellas y después utilizar lo aprendido en el trabajo. Por ejemplo, hace poco uno de mis clientes deseaba que viajara con él a Niza, en Francia, por un compromiso de negocios, de modo que comencé a leer sobre la región, a comprar libros y a buscar más información en la Internet. Todo me pareció interesante y disfruté el estudio, pero no lo habría hecho de no haber sabido que haría un viaje de negocios".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Aprendizaje",
                items: ["Ubique a esta persona en roles que la obliguen a mantenerse actualizada en un campo de cambios acelerados. Disfrutará el desafío de mantener sus competencias.",
                        "Independientemente del rol, esta persona se mostrará deseosa de aprender hechos, destrezas o conocimientos nuevos. Busque nuevas alternativas para que aprenda y se mantenga motivada, porque de lo contrario podría comenzar a buscar un ambiente más abundante en oportunidades de aprendizaje. Por ejemplo, si el trabajo mismo no ofrece oportunidades de aprender, anímela a tomar cursos de su interés en la universidad o en la asociación local. Recuerde que no necesariamente deberá ascenderla como consecuencia; esta persona sencillamente necesita estar aprendiendo. Es el proceso de aprender y no el resultado el que la hace vibrar.",
                        "Ayúdele a seguir la pista de su progreso identificando hitos o niveles alcanzados en su aprendizaje. Celebre esos logros.",
                        %Q(En este mismo orden de ideas, anime a esta persona a convertirse en "maestra del oficio" o "experta residente" en su campo. Ayúdele a encontrar los cursos pertinentes. Asegúrese de darle un reconocimiento por su aprendizaje por medio de certificados y placas.),
                        "Ubique a esta persona al lado de un verdadero maestro que la obligue a aprender más y más. ",
                        "Pídale que organice grupos internos de discusión o exposiciones. Quizás no haya otra mejor forma de aprender que enseñando a los demás. ",
                        "Ayúdele a conseguir apoyo económico para continuar con sus estudios."]
              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Aprendizaje",
                items_confianza: ["Sea lo suficientemente honesto para admitir que Ud. todavía está aprendiendo. Mostrarse vulnerable y abierto acerca de su propio aprendizaje lo pondrá a la altura de los demás y mostrará que las expectativas son mutuas.",
                                  "Respete todo aquel conocimiento que sea superior al suyo. Muchos líderes sienten que deben saber más (acerca de todo) que sus colaboradores. Esto es irrealista e improductivo; impide el progreso. Muestre respeto a través de su interés y aprecio por lo que los otros saben y son capaces de aprender. Escúchelos y confíe en ellos como expertos en esos temas. "],
                items_empatia: ["Co-aprendizaje es una experiencia a descubrir. Cuando se embarque en un nuevo proceso de aprendizaje, siempre considere la posibilidad de compartir la experiencia con alguien. Cuando Ud. invita a alguien a unirse a Ud., está abriendo la puerta para crear lazos fuertes y vínculos duraderos.",
                                "Aprecie y celebre el aprendizaje de otros, ya sea en un proyecto, en un examen o en una simple tarea rutinaria. Hágales saber que Ud. valora el esfuerzo que es necesario para el desarrollo personal de ellos. Haga énfasis en el resultado, pero no olvide rescatar lo valioso de los procesos. Confirme el valor del aprendizaje. "],
                items_estabilidad: ["Cuando Ud. invierte en el crecimiento de otros, es como si Ud. dijera “Ud. es importante para mí”. Esto ayuda a otros a confirmar que Ud. está interesado en el largo plazo y quiere compartir esa aventura con ellos. Dígale a sus colaboradores que espera que lo acompañen durante todo ese proceso.",
                                    "Todo aprendizaje lleva tiempo. Su paciencia confirmará el punto anterior y será una forma de acompañarlos y confirmar el valor que ellos tienen para Ud."],
                items_esperanza: ["Sea consciente que su entusiasmo por el aprendizaje puede ser compartido por muchos otros en su organización. Alimente esta pasión creando programas que lo promuevan.",
                                  "La investigación afirma el vínculo entre el aprendizaje y un buen desempeño. Cuando la gente tiene la oportunidad de aprender y desarrollarse encontrará más oportunidades para hacer bien su trabajo y obtener buenos resultados. Premie los procesos de aprendizaje como una forma de preparar el terreno de los logros más duraderos."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Aprendizaje",
                items: ["Afine su manera de aprender. Por ejemplo, Ud. puede aprender mejor enseñando; si es así, busque oportunidades de hacer presentaciones. Puede que aprenda mejor a través de la reflexión; si es así, encuentre el tiempo de tranquilidad para ello.",
                        "Desarrollo modo de evaluar el progreso de su aprendizaje. Si hay diferentes niveles o etapas de aprendizaje en su disciplina o tarea, tómese el tiempo para celebrar el avance a cada nivel. SI no hubiera dichos niveles, créelos para Ud. (por ej. Leer cinco libros de la materia  o hacer tres presentaciones del tema).",
                        "Sea un catalizador para el cambio. Otros pueden ser intimidados por nuevas reglas, nuevas habilidades, o nuevas circunstancias. Su predisposición a absorber todas las novedades pueden aplacar sus temores y alentarlos a actuar. Tómese esta responsabilidad seriamente.",
                        "Busque roles que requieran alguna forma de habilidad técnica. Ud. disfrutará el proceso de adquirir y mantener este expertise.",
                        "Dentro de lo posible, mueva su carrera hacia un campo en el que haya cambios constantes de tecnologías o regulaciones. Se sentirá energizado por el desafío de mantenerse al día.",
                        "Investigaciones avalan la relación entre el aprendizaje y el rendimiento. Cuando la gente tiene la oportunidad de aprender y crecer, son más productivos y leales. Busque modos de medir  el grado en el cual están satisfechas las necesidades de aprendizaje para crear objetivos individuales y premiar los logros en el aprendizaje.",
                        "En el trabajo, saque provecho de los programas que subsidian su aprendizaje. Su organización puede estar dispuesta a pagar parte o todos sus cursos o certificaciones. Pregúntele a su gerente acerca de becas u otras oportunidades.",
                        "Honre su deseo de aprender. Aproveche las oportunidades de educación para adultos de su comunidad. Tenga la disciplina de inscribirse al menos en un nuevo curso cada año.",
                        "El tiempo vuela y la atención se intensifica cuando está inmerso en estudiar o aprender. Permítase “estar inmerso” programando sesiones de aprendizaje durante los períodos en los que no será interrumpido por temas urgentes."]
              }
          }
        ]}).to_json},
      {nombre: "Estrategia", dominio_id: 4, libro: "Por qué ganan los que ganan, Alberto Levy", pelicula: "RUNAWAY JURY", 
      docx_json: ({ 
        documentos: 
        [
          { 
            nombre: "perfil_de_fortalezas",
            datos:
              { 
                titulo:"**Estrategia**",
                texto: [  %Q(El talento de Estrategia le permite ordenar la confusión y descubrir el mejor camino para seguir adelante. Como los demás talentos, no se trata de una capacidad que pueda ser enseñada. Es un proceso de pensamiento singular, que le permite contar con una perspectiva especial del mundo. Esta perspectiva le permite captar diferentes modelos o patrones donde otros no pueden ver más que una opción o la complejidad. Atento(a) a estos patrones, usted contempla las diferentes alternativas, peguntándose siempre qué pasaría si la opción elegida no es la correcta. O bien qué pasaría si hubiera sucedido otra cosa; estas preguntas recurrentes le ayudan a anticipar y a evaluar los posibles obstáculos. Guiado(a) desde esa posición, usted puede seleccionar el camino más indicado. Así mismo va descartando aquellos caminos que no conducen a ningún lado, los que causan resistencia y los que son confusos. Así, usted elimina, define su estrategia y actúa. Las características de su talento se resumen en actuar después de anticipar dificultades y de escoger alternativas.),
                          %Q(El talento de Estrategia se puede expresar así: ),
                          %Q(*Liliana G., gerente de una planta de producción:* "Es como si siempre pudiera ver las consecuencias antes que los demás. Siento la necesidad de decirles a los otros: Alcen los ojos, miren el camino. Hablemos de dónde estaremos el año entrante para que no tengamos los mismos problemas dentro de un año'. Es algo que me parece obvio, pero algunas personas sencillamente están tan inmersas en las cifras del mes que todo lo manejan desde esa perspectiva''.),
                          %Q(*Viviana T., productora de televisión:* "Cuando era niña me encantaban los problemas de lógica. Esos de 'si A implica B y B es igual a C, ¿es A igual a C?' Aún hoy sopeso permanentemente las repercusiones para ver a dónde llevan las cosas. Creo que eso hace que sea muy buena entrevistadora. Sé que nada ocurre por accidente: cada señal, cada palabra, cada tono de voz significa algo. Entonces me mantengo alerta a esas señales y las sopeso mentalmente, veo hacia dónde conducen y después planeo mis preguntas para aprovechar lo que he visto en mi cabeza".),
                          %Q(*Simón T., ejecutivo de recursos humanos:* "Realmente necesitábamos atraer al sindicato hacia nuestro lado en algún momento. Yo vi la oportunidad alrededor de un tema muy propicio. Pude ver que avanzaban en una dirección que les generaría toda clase de problemas si se empeñaban en seguir por ahí. Y se empeñaron, y cuando llegaron, allí estaba yo esperándolos. Creo que de manera natural puedo predecir lo que otra persona va a hacer. Entonces cuando esa persona reacciona, puedo responder inmediatamente porque ya le he dicho anteriormente: 'Bien, si ellos hacen esto, nosotros haremos esto otro. Si ellos hacen esto otro, nosotros haremos aquello'. Es como cuando uno navega en un velero. Uno toma un rumbo pero evade por aquí, vira por allá, planeando y reaccionando, planeando y reaccionando".)]
              }
          },
          {
            nombre:"manejar_las_fortalezas",
            datos: 
              {
                talento: "Estrategia",
                items: ["Ubique a esta persona a la cabeza de su organización. Su capacidad para prever los problemas y sus soluciones será de gran valor. Por ejemplo, solicítele que examine todas las posibilidades a fin de encontrar el mejor camino que debe seguir su departamento. Sugiera que le informe la mejor estrategia.",
                        %Q(Incluya a esta persona en la planificación de la organización. Pregúntele: "Si esto sucede, ¿qué podemos esperar?", "Si aquello sucede, ¿qué podemos esperar?"),
                        "Permítale siempre el tiempo suficiente para pensar sobre una situación antes de pedirle su opinión. Necesita visualizar un par de escenarios en su mente antes de manifestar lo que piensa.",
                        "Reconozca la fortaleza de esta persona en talento Estrategia enviándola a un seminario sobre planificación estratégica o futurismo. El contenido aguzará sus ideas.",
                        "Es probable que esta persona tenga una buena capacidad para poner sus ideas y pensamientos en palabras. Para perfeccionar su pensamiento, pídale que presente sus ideas a sus compañeros de trabajo o que las ponga por escrito para distribuirlas internamente.",
                        "Cuando oiga o lea sobre estrategias que funcionaronen su campo, comuníquelas a esta persona. Esto la estimulará a pensar."]

              }
          },
          {
            nombre:"liderazgo_basado_en_fortalezas",
            datos: 
              {
                talento: "Estrategia",
                items_confianza: ["Cada vez que tome una decisión, discuta opciones de una manera detallada, aunque amable, con todos aquellos que estén involucrados. Ayúdelos a que aprendan a confiar en su proceso de examinación de todas las alternativas y, a partir de eso, trabajar en pos de la solución óptima para esa situación.",
                                  "Esté atento a sus propios sesgos. ¿Es capaz de sopesar alternativas lo más objetivamente posible o se inclina con facilidad hacia sus deseos personales o las opciones más cómodas para Ud.? Dele a cada opción lo que corresponda. Recurra a otros para asegurarse que sus decisiones son tomadas por las razones apropiadas. Los demás respetarán su integridad y su deseo de máxima objetividad posible."],
                items_empatia: ["Use su Pensamiento Estratégico en sus relaciones. Haga una lista que incluya a aquellas personas que tienen más influencia positiva en su vida. Trate de encontrar cosas específicas que Ud. pueda hacer para invertir más tiempo y esfuerzo en cada una de esas relaciones.  ",
                                "¿Cuáles son sus metas para su familia? ¿Y sus amigos? ¿Qué metas tienen ellos? Use su Talento Estrategia con estos “socios íntimos” de su vida. ¿Alguno de ellos tiene sueños, pero encuentra obstáculos para alcanzarlos? ¿Alguno de ellos se encuentra estancado, sin opciones? Ud. seguramente puede ayudarles a que rodeen esos obstáculos y encuentren un mejor camino. Muéstreles a ellos que a Ud. le importa ayudándoles a descubrir sus posibilidades."],
                items_estabilidad: ["Invierta más tiempo en estudiar las estrategias que utilizan los líderes más efectivos que Ud. más respeta y admira. Es muy probable que Ud., al nutrirse de esta información, sea capaz de utilizar eficazmente en sus propias estrategias. Asegúrese de que los demás sepan que Ud. no está cerrado en sus propias ideas, sino que sus opciones y elecciones están basadas en la debida investigación. Cuando ellos detecten que Ud. valora tanto los buenos consejos como la perspectiva histórica de los temas, ellos apreciarán más la solidez de sus argumentos e ideas.",
                                    "Si bien muchas personas eligen soluciones ya probadas, Ud. valora las posibilidades que encierran aquellas ideas no testeadas que encierran mucho potencial. Destine tiempo para poder analizar todos los escenarios posibles y posiciónese como líder en ese tema. Explique a los demás que si bien hacer foco en lo probado puede parecer seguro, en muchas ocasiones es necesario abrir nuestras mentes a nuevas soluciones. Para ello, hágales saber de todo el tiempo que Ud. ya invirtió en analizar cuidadosamente aquellas alternativas no probadas con anterioridad. Su análisis “a mente abierta” les dará a los demás una sensación de certidumbre acerca de su inclinación por buscar siempre la mejor solución posible."],
                items_esperanza: ["Asegúrese de estar al tanto de todas aquellas cosas novedosas para sus planes y sus emprendimientos. Su visión metódica, pero muy innovadora de las cosas es lo suficientemente crítica como para detectar aquellas novedades que pueden terminar siendo contraproducentes para sus tareas. Esfuércese en explicarles a aquellos que defiendan la novedad por la novedad misma, los inconvenientes que Ud. ve en implementarlas en sus tareas y ellos aprenderán a confiar más en su juicio crítico.",
                                  "Su Pensamiento Estratégico será necesario para mantener una visión realista acerca de nuestros objetivos para impedir que se conviertan en una quimera. Guíe a las personas en su organización a que vean todos los caminos posibles para transformar un sueño en realidad. Algunas visiones claras son capaces de eliminar obstáculos e inspirar a otros a avanzar hacia sus metas.",
                                  "Dese a conocer como un recurso a ser consultado en todo momento por aquellos que pudiesen tropezar con alguna barrera o problema puntual. Ud. es naturalmente capaz de ver una salida donde otros pensarían que no hay ninguna. De esa manera, Ud. no solo los alentará, sino que al mismo tiempo los estará guiando hacia el éxito."]
              }
          },
          {
            nombre: "ideas_para_la_accion",
            datos:
              {
                talento: "Estrategia",
                items: ["Tómese el tiempo para reflexionar o meditar sobre las metas que quiere alcanzar hasta que los patrones y problemas relacionados con ellas estén claros. Recuerde que este tiempo de reflexión es clave para el pensamiento estratégico.",
                        "Ud. puede ver las consecuencias con más claridad que los demás. Aproveche esta habilidad para planear las soluciones alternativasen detalle. No tiene mucho sentido saber que va a pasar si no está listo cuando llegue el momento,",
                        "Encuentre un grupo que Ud. crea que realiza un trabajo importante y contribuya con su pensamiento estratégico. Ud. puede liderar con sus ideas.",
                        "Su pensamiento estratégico será necesario para evitar que ideas posibles se conviertan en castillos en el aire. Considere todos los caminos posibles para convertir las ideas en realidades. La previsión inteligente puede evitar obstáculos antes de que aparezcan.",
                        "Hágase conocer como un recurso de consulta para quienes se encuentran trabados por un problema puntual o complicados por un impedimento u obstáculo particular. Al Ud. ver naturalmente una solución cuando otros están convencidos de que no la hay, los guiara al éxito.",
                        "Probablemente Ud. anticipa problemas potenciales más fácilmente que otros. Aunque su percepción de posibles peligros pueda ser vista como negatividad de su parte, Ud. debe compartir sus opiniones para evitar esas dificultades. Para evitar malas interpretaciones, no señale solo los posibles problemas sino también el modo de prevenirlos o solucionarlos. Confíe en sus pronósticos, y úselos para asegurar que el éxito de sus esfuerzos.",
                        "Ayude a los otros a entender que su pensamiento estratégico no es un intento de menoscabar sus ideas, sino en cambio una propensión natural a evaluar todos los aspectos de un plan en forma objetiva. En vez de ser un negativista, Ud. lo que trata es de analizar la manera de lograr que los objetivos se cumplan, sin importar los obstáculos. Sus talentos le permitirán tener en cuenta las perspectivas de los demás sin perder de vista su meta final.",
                        "Confíe en sus instintos tanto como sea posible. Aunque puede que no logre explicarlos racionalmente, sus intuiciones son creadas por un cerebro que naturalmente anticipa y planifica. Tenga confianza es estas percepciones.",
                        "Asóciese con alguien que tenga el talento de Impulso. Entre la necesidad de actuar de esta persona y su necesidad de planificación, se puede lograr una poderosa sociedad.",
                        "Asegúrese de estar involucrado en el inicio de nuevas iniciativas y emprendimientos. Su innovador pero a la vez planificado enfoque pueden ser críticos en la generación de nuevos proyectos porque evitara que los creadores desarrollen una visión falsa del proyecto."]
              }
                
          }
        ]}).to_json}
  ]
)