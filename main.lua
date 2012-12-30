-- useful debugging function
function reflect(o)
    for key, value in pairs(o) do
        print('' .. key)
    end
end

-- app settings
application:setOrientation(Application.PORTRAIT)
application:setScaleMode('letterbox')

-- scene settings
scene_transition = SceneManager.moveFromRightWithFade
scene_transition_duration = 0.5

-- fonts
talldark_32 = Font.new('fonts/talldark.txt', 'fonts/talldark.png')
text_color = 0xB8B8B8

-- define scenes
sceneManager = SceneManager.new({
    -- start scene
    start = Start,

    -- main game scene
    game = Game,
})
-- add manager to stage
stage:addChild(sceneManager)

-- start start scene
sceneManager:changeScene('start', scene_transition_duration, scene_transition)