-- CONVERTIR A UTF-16LE USANDO NOTEPAD++ PARA QUE MUESTRE LOS SIMBOLOS Y ACENTOS CORRECTAMENTE 
function Initialize()
    lang = SKIN:GetVariable('lang')
    -- Initialize table to store last used phrases and timestamps
    lastUsedPhrases = {}
    rotationCooldown = 300  -- 5 minutes in seconds (adjust as needed)
end

function Update()
    local phrases = {}
    local phrasesFile = nil
    local phrasesPath = SKIN:GetVariable('@') .. 'phrases_' .. lang .. '.lua'

    -- Intentar cargar el archivo de frases
    local success, result = pcall(dofile, phrasesPath)
    
    if not success then
        SKIN:Bang('!Log', 'Error al cargar el archivo: ' .. phrasesPath .. '. Error: ' .. tostring(result), 'Error')
        return
    end

    -- Asegúrese de que la función GetPhrase esté disponible y llámela
    if result and result.GetPhrase then
        phrases = result.GetPhrase().phrases
    else
        SKIN:Bang('!Log', 'La función GetPhrase no encontrada en el archivo', 'Error')
        return
    end

    if #phrases == 0 then
        SKIN:Bang('!Log', 'No se cargaron frases', 'Error')
        return "No se cargaron frases"
    end

    -- Get weather data
    local weatherCondition = string.lower(SKIN:GetMeasure('Main'):GetStringValue() or "")
    
    -- Get temperature (try multiple possible measure names)
    local temperature = nil
    local tempMeasure = SKIN:GetMeasure('TempRounded') or SKIN:GetMeasure('Temp') or SKIN:GetMeasure('RoundTemp')
    if tempMeasure then
        local tempValue = tempMeasure:GetStringValue()
        if tempValue and tempValue ~= "" then
            temperature = tonumber(tempValue)
        end
    end
    
    -- Log temperature for debugging
    if temperature then
        SKIN:Bang('!Log', 'Current temperature: ' .. temperature .. '°C', 'Debug')
    else
        SKIN:Bang('!Log', 'Could not get temperature value', 'Debug')
    end

    local found = false
    local phrase = {}

    -- Collect all matching phrases for current weather and temperature
    local matchingPhrases = {}
    for _, p in ipairs(phrases) do
        -- Check condition match
        local conditionMatch = false
        if p.condition then
            conditionMatch = (string.lower(p.condition) == weatherCondition)
        elseif not p.condition then
            -- Phrases without condition are always considered (for temperature-only phrases)
            conditionMatch = true
        end
        
        -- Check temperature range if condition matches
        if conditionMatch then
            local tempMatch = true
            
            -- Check min temperature if specified
            if p.min ~= nil and temperature ~= nil then
                tempMatch = tempMatch and (temperature >= p.min)
            end
            
            -- Check max temperature if specified
            if p.max ~= nil and temperature ~= nil then
                tempMatch = tempMatch and (temperature <= p.max)
            end
            
            -- If no temperature data available but phrase requires it, skip
            if temperature == nil and (p.min ~= nil or p.max ~= nil) then
                tempMatch = false
            end
            
            if tempMatch then
                table.insert(matchingPhrases, p)
                SKIN:Bang('!Log', 'Found matching phrase: ' .. p.title, 'Debug')
            end
        end
    end

    if #matchingPhrases > 0 then
        -- Create a unique key combining condition and temperature range for tracking
        local conditionKey = weatherCondition
        if temperature then
            -- Round temperature to nearest 5 degrees for grouping
            local tempGroup = math.floor(temperature / 5) * 5
            conditionKey = weatherCondition .. "_" .. tempGroup
        end
        
        -- Initialize tracking for this condition/temperature group if not exists
        if not lastUsedPhrases[conditionKey] then
            lastUsedPhrases[conditionKey] = {
                index = 0,
                lastUpdate = 0,
                availablePhrases = {}
            }
        end
        
        local tracker = lastUsedPhrases[conditionKey]
        local currentTime = os.time()
        
        -- Check if we need to rotate (cooldown period passed or first time)
        if tracker.lastUpdate == 0 or (currentTime - tracker.lastUpdate) >= rotationCooldown then
            -- If available phrases list is empty, rebuild it
            if #tracker.availablePhrases == 0 then
                -- Create a list of indices for all matching phrases
                for i = 1, #matchingPhrases do
                    table.insert(tracker.availablePhrases, i)
                end
            end
            
            -- Select random index from available phrases
            if #tracker.availablePhrases > 0 then
                local randomPos = math.random(1, #tracker.availablePhrases)
                local selectedIndex = tracker.availablePhrases[randomPos]
                
                -- Remove the selected index from available phrases
                table.remove(tracker.availablePhrases, randomPos)
                
                -- Use the selected phrase
                phrase = matchingPhrases[selectedIndex]
                tracker.index = selectedIndex
                tracker.lastUpdate = currentTime
                found = true
                
                SKIN:Bang('!Log', 'Selected phrase ' .. selectedIndex .. ' for condition: ' .. weatherCondition .. ' at temp: ' .. tostring(temperature), 'Debug')
            end
        else
            -- Cooldown not passed, keep using current phrase
            if tracker.index > 0 and tracker.index <= #matchingPhrases then
                phrase = matchingPhrases[tracker.index]
                found = true
            end
        end
    end

    if found and type(phrase) == "table" then
        SKIN:Bang('!SetOption', 'PhraseText', 'Text', phrase.title)
        SKIN:Bang('!SetOption', 'SublineText', 'Text', phrase.subline)
        SKIN:Bang('!SetOption', 'PhraseText', 'InlineSetting', 'Color | ' .. phrase.color)
        if phrase.highlight and #phrase.highlight > 0 then
            SKIN:Bang('!SetOption', 'PhraseText', 'InlinePattern', '(' .. phrase.highlight[1] .. ')')
        else
            SKIN:Bang('!SetOption', 'PhraseText', 'InlinePattern', '')
        end
        return phrase.title
    else
        SKIN:Bang('!Log', 'No se encontró una frase que matchee', 'Error')
        SKIN:Bang('!SetOption', 'PhraseText', 'Text', "Cargando...")
        SKIN:Bang('!SetOption', 'SublineText', 'Text', "Andá a cebarte un verde mientras.")
        SKIN:Bang('!SetOption', 'PhraseText', 'InlineSetting', '')
        SKIN:Bang('!SetOption', 'PhraseText', 'InlinePattern', '')
        return "Cargando..."
    end
end

