-- CONVERTIR A UTF-16LE USANDO NOTEPAD++ PARA QUE MUESTRE LOS SIMBOLOS Y ACENTOS 
phrases = {
    phrases = {
        -- ========================================
        -- DESPEJADO
        -- ========================================

        {
            highlight = { "Despejado" },
            title = "Despejado.",
            subline = "Ni una nube che",
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "lindo" },
            title = "Esta lindo.",
            subline = "Como para andar en calzones.",
            min = 20,
            max = 30,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "no" },
            title = "Esto no es normal.",
            subline = "Creo que vamos a morir.",
            min = 30,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "calor" },
            title = "Hace calor.",
            subline = "Se puede derretir tu silla.",
            min = 23,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "evapora" },
            title = "Se evapora mi saliva.",
            subline = "Dos palabras: Aire Acondicionado.",
            min = 25,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "mal" },
            title = "La vas a pasar mal.",
            subline = "Espero que ande el ventilador.",
            min = 24,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "ropas" },
            title = "Fuera ropas.",
            subline = "El nudismo no debe ser tan malo.",
            min = 24,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "global" },
            title = "Calentamiento global.",
            subline = "Si, echemosle la culpa.",
            min = 30,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "tropical" },
            title = "Clima tropical.",
            subline = "Creo que hay monos en las ventanas.",
            min = 35,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "calor" },
            title = "Mucho calor.",
            subline = "Lo que mata es Buenos Aires.",
            min = 33,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "lorca" },
            title = "Se viene el lorca.",
            subline = "Mandá ventilador al 2020.",
            min = 25,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "derretimos" },
            title = "Nos derretimos.",
            subline = "Poné el aire.",
            min = 35,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "Caluroso." },
            title = "Caluroso.",
            subline = "Si, hace calor.",
            min = 24,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "calor" },
            title = "Calor.",
            subline = "¿Ya llegamos al infierno?",
            min = 34,
            condition = "clear sky",
            color = "FFAE42"
        },
        {
            highlight = { "insoportable" },
            title = "Calor insoportable.",
            subline = "Ni ChatGPT tiene te salva hoy.",
            min = 25,
            condition = "clear sky",
            color = "FFAE42"
        },
        
        -- Mild Clear/Sunny (15-25°C)
        {
            highlight = { "peronista" },
            title = "¡Un día peronista!",
            subline = "Que no se corte la luz...",
            min = 20,
            max = 26,
            condition = "clear sky",
			icon = "01d",
            color = "FFAE42"
        },
        
        -- Cool Clear (5-15°C)
        {
            highlight = { "Frescolari" },
            title = "Frescolari.",
            subline = "Brrrrrrr",
            min = 5,
            max = 15,
            condition = "clear sky",
            color = "FFAE42"
        },

        -- ========================================
        -- NUBLADO
        -- ========================================
		
        {
            highlight = { "nublado." },
            title = "Está nublado.",
            subline = "¿Lloverá?",
            condition = "overcast clouds",
            color = "FFAE42"
        },
        {
            highlight = { "gris" },
            title = "Está gris.",
            subline = "Nuboso.",
            condition = "broken clouds",
            color = "FFAE42"
        },
        {
            highlight = { "Nublado" },
            title = "Nublado.",
            subline = "Como el cerebro de unos cuantos.",
            condition = "overcast clouds",
            color = "FFAE42"
        },
        {
            highlight = { "agua" },
            title = "Se viene el agua.",
            subline = "Parece más tarde.",
            condition = "overcast clouds",
            color = "FFAE42"
        },
		
        -- ========================================
        -- ALGO NUBLADO
        -- ========================================
		
        {
            highlight = { "Algo" },
            title = "Algo nublado.",
            subline = "Si, asi de tibio.",
            condition = "scattered clouds",
			icon = "03d",
            color = "FFAE42"
        },
		{
            highlight = { "nublado" },
            title = "Un poco nublado.",
            subline = "Maso-meno'",
            condition = "scattered clouds",
			icon = "03n",
            color = "FFAE42"
        },
		{
            highlight = { "Algunas" },
            title = "Algunas nubes.",
            subline = "Casi ni se notan.",
			icon = "03d",
            condition = "few clouds",
            color = "FFAE42"
        },
		{
            highlight = { "nubes" },
            title = "Noche con algunas nubes.",
            subline = "Solo algunas.",
			icon = "02n",
            condition = "few clouds",
            color = "FFAE42"
        },


        -- ========================================
        -- LLUVIA
        -- ========================================

        {
            highlight = { "ligera" },
            title = "Lluvia ligera.",
            subline = "Igual moja, eh.",
            condition = "light rain",
            color = "FFAE42"
        },
        {
            highlight = { "paraguas" },
            title = "Llevá paraguas.",
            subline = "O mejor, no salgas.",
            condition = "moderate rain",
            color = "FFAE42"
        },
        {
            highlight = { "lloviendo" },
            title = "Ta' lloviendo.",
            subline = "Tambien podes mirar por la ventana.",
            condition = "heavy intensity rain",
            color = "FFAE42"
        },
        {
            highlight = { "fuerte" },
            title = "Lluvia fuerte.",
            subline = "¿Lavaste el auto?.",
            condition = "very heavy rain",
            color = "FFAE42"
        },
        {
            highlight = { "Diluvio" },
            title = "Diluvio.",
            subline = "¡Dioses estar enojados!",
            condition = "extreme rain",
            color = "FFAE42"
        },
        {
            highlight = { "paraguas" },
            title = "Llevá paraguas.",
            subline = "O mejor, no salgas.",
            condition = "Rain",
            color = "FFAE42"
        },
        {
            highlight = { "helada" },
            title = "Lluvia helada.",
            subline = "Lluvia + frío",
            condition = "freezing rain",
            color = "FFAE42"
        },
        {
            highlight = { "liviano" },
            title = "Aguacero liviano.",
            subline = "No me preguntes que es eso.",
            condition = "light intensity shower rain",
            color = "FFAE42"
        },
        {
            highlight = { "Aguacero" },
            title = "Aguacero.",
            subline = "Se largó",
            condition = "shower rain",
            color = "FFAE42"
        },
        {
            highlight = { "intenso" },
            title = "Aguacero intenso.",
            subline = "Intenso lo hace peor.",
            condition = "heavy intensity shower rain",
            color = "FFAE42"
        },
        {
            highlight = { "torrencial" },
            title = "Lluvia torrencial.",
            subline = "¡Todos a los botes!",
            condition = "ragged shower rain",
            color = "FFAE42"
        },
        
        -- ========================================
        -- LLOVIZNA
        -- ========================================

        {
            highlight = { "Lloviznita" },
            title = "Lloviznita.",
            subline = "Moja igual.",
            condition = "light intensity drizzle",
            color = "FFAE42"
        },
		{
            highlight = { "Llovizna" },
            title = "Llovizna.",
            subline = "Spray desde el cielo.",
            condition = "drizzle",
            color = "FFAE42"
        },
		{
            highlight = { "intensa" },
            title = "Llovizna intensa.",
            subline = "Guarda que moja mucho eh.",
            condition = "heavy intensity drizzle",
            color = "FFAE42"
        },
		{
            highlight = { "Llovizna" },
            title = "Llovizna ligera.",
            subline = "Muy molesta.",
            condition = "light intensity drizzle rain",
            color = "FFAE42"
        },
		{
            highlight = { "lluvia" },
            title = "Llovizna-lluvia.",
            subline = "Ya no es tan 'llovizna'.",
            condition = "drizzle rain",
            color = "FFAE42"
        },
		{
            highlight = { "intensa" },
            title = "Llovizna muy intensa.",
            subline = "Mas lluvia que llovizna.",
            condition = "heavy intensity drizzle rain",
            color = "FFAE42"
        },
		{
            highlight = { "Lluvia" },
            title = "Lluvia con llovizna.",
            subline = "Doble poder de mojado.",
            condition = "shower rain and drizzle",
            color = "FFAE42"
        },
		{
            highlight = { "Lluvia intensa" },
            title = "Lluvia intensa con llovizna.",
            subline = "Tambien podes mirar por la ventana.",
            condition = "heavy shower rain and drizzle",
            color = "FFAE42"
        },
		{
            highlight = { "Lluvia" },
            title = "Lluvia con llovizna.",
            subline = "Ya podríamos llamarla lluvia.",
            condition = "shower drizzle",
            color = "FFAE42"
        },
        
        -- ========================================
        -- AGUANIEVE
        -- ========================================

        {
            highlight = { "Aguanieve" },
            title = "Aguanieve.",
            subline = "Casi, casi, nieve",
            condition = "sleet",
            color = "FFAE42"
        },

        -- ========================================
        -- NIEVE - AGUANIEVE
        -- ========================================

        {
            highlight = { "NEVANDO" },
            title = "Nevando... si, NEVANDO",
            subline = "Esta sí que no te la esperabas.",
            condition = "light snow",
            color = "FFAE42"
        },
        {
            highlight = { "Nieve" },
            title = "¡Nieve!",
            subline = "Campera y guantes.",
            condition = "snow",
            color = "FFAE42"
        },
        {
            highlight = { "esquiar" },
            title = "Hora de esquiar.",
            subline = "¡Nieve por todos lados!",
            condition = "heavy snow",
            color = "FFAE42"
        },
        {
            highlight = { "ligera" },
            title = "Aguanieve ligera.",
            subline = "Ligera pero fría.",
            condition = "light shower sleet",
            color = "FFAE42"
        },
        {
            highlight = { "aguanieve" },
            title = "Chaparrón de aguanieve",
            subline = "Pulmonía garantizada.",
            condition = "shower sleet",
            color = "FFAE42"
        },
        {
            highlight = { "aguanieve" },
            title = "Lluvia ligera con aguanieve",
            subline = "Todo por el mismo precio.",
            condition = "light rain and snow",
            color = "FFAE42"
        },   
        {
            highlight = { "nieve" },
            title = "Lluvia con nieve.",
            subline = "¿Algo más?",
            condition = "rain and snow",
            color = "FFAE42"
        },
        {
            highlight = { "nieve" },
            title = "Lluvia ligera con nieve",
            subline = "Lo de ligera es subjetivo.",
            condition = "light shower snow",
            color = "FFAE42"
        },
        {
            highlight = { "nieve" },
            title = "Lluvia-nieve",
            subline = "Lo que sea que eso quiera decir.",
            condition = "shower snow",
            color = "FFAE42"
        },
        {
            highlight = { "intensa" },
            title = "Lluvia-nieve intensa",
            subline = "Buscá argumentos para no salir.",
            condition = "heavy shower snow",
            color = "FFAE42"
        },
		
        -- ========================================
        -- FENOMENOS ATMOSFERICOS
        -- ========================================
		
        {
            highlight = { "Neblina" },
            title = "Neblina.",
            subline = "Misteriosa...",
            condition = "mist",
            color = "FFAE42"
        },
        {
            highlight = { "Humo" },
            title = "Humo",
            subline = "Y no sale de tu cerebro.",
            condition = "smoke",
            color = "FFAE42"
        },
        {
            highlight = { "neblinoso" },
            title = "Está neblinoso.",
            subline = "¿Existe esa palabra?",
            condition = "haze",
            color = "FFAE42"
        },     
        {
            highlight = { "Remolinos" },
            title = "Remolinos de arena/polvo.",
            subline = "Linda combinación, eh.",
            condition = "sand/dust whirls",
            color = "FFAE42"
        },
        {
            highlight = { "Niebla" },
            title = "Niebla",
            subline = "No se vé ná'",
            condition = "fog",
            color = "FFAE42"
        },
        {
            highlight = { "Arena" },
            title = "Arena en el aire",
            subline = "¿Donde diablos estás viviendo?.",
            condition = "sand",
            color = "FFAE42"
        },
		{
            highlight = { "Polvo" },
            title = "Polvo en el aire",
            subline = "Prepará la aspiradora.",
            condition = "dust",
            color = "FFAE42"
        },
        {
            highlight = { "Cenizas" },
            title = "Cenizas en el aire",
            subline = "El volcán hizo ¡PUM!",
            condition = "volcanic ash",
            color = "FFAE42"
        },
		{
            highlight = { "Desastre" },
            title = "Desastre total",
            subline = "¡Tierra, rayos, que se yo que más!",
            condition = "squalls",
            color = "FFAE42"
        },
        {
            highlight = { "Tornado" },
            title = "Tornado",
            subline = "¡Rajá de inmediato!",
            condition = "tornado",
            color = "FFAE42"
        },

        -- ========================================
        -- THUNDERSTORM conditions
        -- ========================================
		
        {
            highlight = { "Tormenta" },
            title = "Tormenta y lluvia ligera",
            subline = "Mal momento para estar afuera.",
            condition = "thunderstorm with light rain",
            color = "FFAE42"
        },
        {
            highlight = { "eléctrica" },
            title = "Tormenta eléctrica y lluvia",
            subline = "Lindo para dormir.",
            condition = "thunderstorm with rain",
            color = "FFAE42"
        },
        {
            highlight = { "truenos" },
            title = "Lluvia fuerte y truenos",
            subline = "Se viene el cielo abajo.",
            condition = "thunderstorm with heavy rain",
            color = "FFAE42"
        },
        {
            highlight = { "ligera" },
            title = "Tormenta ligera",
            subline = "Como la fuerte pero menos.",
            condition = "light thunderstorm",
            color = "FFAE42"
        },
        {
            highlight = { "fuerte" },
            title = "Tormenta fuerte",
            subline = "Casi muero de un infarto.",
            condition = "heavy thunderstorm",
            color = "FFAE42"
        },
        {
            highlight = { "Rayos" },
            title = "¡Rayos y Centellas!",
            subline = "Pense que eran fotos.",
            condition = "thunderstorm",
            color = "FFAE42"
        },
        {
            highlight = { "irregular" },
            title = "Tormenta eléctrica irregular",
            subline = "Preguntále a Google.",
            condition = "ragged thunderstorm",
            color = "FFAE42"
        },
        {
            highlight = { "Tormenta" },
            title = "Tormenta y llovizna ligera",
            subline = "Hermoso para salir.",
            condition = "thunderstorm with light drizzle",
            color = "FFAE42"
        },
        {
            highlight = { "Tormenta" },
            title = "Tormenta y llovizna",
            subline = "Mas vale que estés adentro.",
            condition = "thunderstorm with drizzle",
            color = "FFAE42"
        },
        {
            highlight = { "Tormenta" },
            title = "Tormenta y llovizna intensa",
            subline = "Hermoso para salir.",
            condition = "thunderstorm with heavy drizzle",
            color = "FFAE42"
        },

    }
}

function GetPhrase()
    return phrases, phrases.phrases[1].color
end

return { GetPhrase = GetPhrase }




-- ejemplo con temps:

--        {
--          highlight = { "Icebergs" },
--          title = "Icebergs por todos lados.",
--          subline = "Se aconseja ni levantarse.",
--			min = 10
--          max = 20,
--          condition = "clear",
--			icon = "01d",  <--- opcional condicion de icono (noche/dia)
--          color = "FFAE42"
--      },



