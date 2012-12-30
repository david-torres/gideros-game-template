Start = Core.class(Sprite)

function Start:init()
    self:set_background()

    -- title text
    local titleText = TextField.new(talldark_32, 'KID FUN')
    titleText:setPosition(20, 80)
    titleText:setTextColor(text_color)
    self:addChild(titleText)

    -- create start button
    -- local buttonImage = Bitmap.new(Texture.new(GameConfig.start_screen))
    -- local startButton = Button.new(buttonImage, buttonImage)
    -- startButton:setPosition(GameConfig._W-(startButton:getWidth() * 0.5), GameConfig._H-(startButton:getHeight() * 0.5))

    -- self:addChild(startButton)

    -- -- start button on click event
    -- startButton:addEventListener('click', function()
    --  -- main game scene
    --  sceneManager:changeScene('game', scene_transition_duration, scene_transition)
    -- end)

    local start_menu_y = 112
    local start_menu_pad = 48

    function get_start_menu_y()
        start_menu_y = start_menu_y + start_menu_pad
        return start_menu_y
    end

    local newGameText = TextField.new(talldark_32, 'New Game')
    newGameText:setPosition(GameConfig._W/2, get_start_menu_y())
    newGameText:setTextColor(text_color)
    self:addChild(newGameText)

    newGameText:addEventListener(Event.MOUSE_DOWN, function(event)
        if newGameText:hitTestPoint(event.x, event.y) then
            sceneManager:changeScene('game', scene_transition_duration, scene_transition)
        end
    end)
end

function Start:set_background()
    -- here we'd probably want to set up a background picture
    -- local bg = Bitmap.new(Texture.new('images/gideros_mobile.png'))
    -- self:addChild(bg)
    -- bg:setPosition((application:getContentWidth()-bg:getWidth()) * 0.5, (application:getContentHeight()-bg:getHeight()) * 0.5)
    application:setBackgroundColor(0x000000) -- 0xB8B8B8
end