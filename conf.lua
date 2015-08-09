function love.conf(t)
    t.identify = nil
    t.version = "0.9.2"
    t.console = false -- windows only

    t.window.title = "Lua Tetris"
    t.window.icon = nil -- set this for the talk
    t.window.width = 640
    t.window.height = 640
    t.window.minwidth = 640
    t.window.minheight = 640
    t.window.fullscreen = false

    t.modules.audio = true             -- Enable the audio module (boolean)
    t.modules.event = true             -- Enable the event module (boolean)
    t.modules.graphics = true          -- Enable the graphics module (boolean)
    t.modules.image = true             -- Enable the image module (boolean)
    t.modules.joystick = true          -- Enable the joystick module (boolean)
    t.modules.keyboard = true          -- Enable the keyboard module (boolean)
    t.modules.math = true              -- Enable the math module (boolean)
    t.modules.mouse = true             -- Enable the mouse module (boolean)
    t.modules.sound = true             -- Enable the sound module (boolean)
    t.modules.system = true            -- Enable the system module (boolean)
    t.modules.timer = true             -- Enable the timer module (boolean), Disabling it will result 0 delta time in love.update
    t.modules.window = true            -- Enable the window module (boolean)
    t.modules.thread = true            -- Enable the thread module (boolean)
end
