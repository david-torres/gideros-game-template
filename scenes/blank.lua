Blank = Core.class(Sprite)

--
-- INITIALIZATION
--
function Blank:init()
    BlankObj = self

    -- initialize the game elements
    self:set_background()

end

function Blank:set_background()
    -- here we'd probably want to set up a background picture
    -- local bg = Bitmap.new(Texture.new('images/gideros_mobile.png'))
    -- self:addChild(bg)
    -- bg:setPosition((application:getContentWidth()-bg:getWidth()) * 0.5, (application:getContentHeight()-bg:getHeight()) * 0.5)
    application:setBackgroundColor(0x000000) -- 0xB8B8B8
end
