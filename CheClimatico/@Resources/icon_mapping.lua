-- icon_mapping.lua
function Initialize()
    -- Define una tabla que asigne códigos de íconos a nombres de archivos de imágenes
    iconMap = {
        ["01d"] = "clear_day.png",
        ["01n"] = "clear_night.png",
        ["02d"] = "partly_cloudy_day.png",
        ["02n"] = "partly_cloudy_night.png",
        ["03d"] = "broken_clouds.png",
        ["03n"] = "broken_clouds.png",
		["04d"] = "cloudy.png",
        ["04n"] = "cloudy.png",
        ["09d"] = "shower_rain.png",
        ["09n"] = "shower_rain.png",
        ["10d"] = "rain.png",
        ["10n"] = "rain.png",
        ["13d"] = "snow.png",
        ["13n"] = "snow.png",
        ["50d"] = "mist.png",
        ["50n"] = "mist.png",
		["11d"] = "thunderstorm.png",
        ["11n"] = "thunderstorm.png",
    }
end

function Update()
    local iconCode = SKIN:GetMeasure('Icon'):GetStringValue() -- Suponiendo que el código del ícono está en la medida 'Ícono'

    local iconName = iconMap[iconCode] or "default.png"
    
    SKIN:Bang('!SetVariable', 'IconMapping', iconName)
end
