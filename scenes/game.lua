Game = Core.class(Sprite)

--
-- INITIALIZATION
--
function Game:init()
    GameObj = self

    -- initialize the game elements
    self:set_background()

    local titleText = TextField.new(talldark_32, 'NEW GAME')
    titleText:setPosition(20, 80)
    titleText:setTextColor(text_color)
    self:addChild(titleText)

    local insertGameText = TextField.new(talldark_32, '[ INSERT GAME HERE ]')
    insertGameText:setPosition(GameConfig._W/2, get_start_menu_y())
    insertGameText:setTextColor(text_color)
    self:addChild(insertGameText)

end

function Game:set_background()
    -- here we'd probably want to set up a background picture
    -- local bg = Bitmap.new(Texture.new('images/gideros_mobile.png'))
    -- self:addChild(bg)
    -- bg:setPosition((application:getContentWidth()-bg:getWidth()) * 0.5, (application:getContentHeight()-bg:getHeight()) * 0.5)
    application:setBackgroundColor(0x000000) -- 0xB8B8B8
end
