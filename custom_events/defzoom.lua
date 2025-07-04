ogzoom = 3
function onCreate()
    ogzoom = getProperty("defaultCamZoom")
    makeLuaSprite("Sansbutinvisible")
    setProperty("Sansbutinvisible.x", getProperty("defaultCamZoom"))
end
function onEvent(eventName, value1, value2, strumTime)
    if eventName == "defzoom" then 
        if value1 == "" then
            value1 = ogzoom
        end
        if value2 == "" then
            setProperty("Sansbutinvisible.x", value1)
        else
            doTweenX("TweenSans", "Sansbutinvisible", value1, value2) 
        end
        --debugPrint(value1)


    end
end
function onUpdate(elapsed)
    --debugPrint(getProperty("Sansbutinvisible.x"))
    --debugPrint(ogzoom)
    setProperty("defaultCamZoom", getProperty("Sansbutinvisible.x"))
end
