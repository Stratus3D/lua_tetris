-- load game
function love.load()
    -- graphics
    grey_square = love.graphics.newImage('img/grey.png')

    -- helpers for layout
    square_size = 32
    function squares(number)
        return square_size * number 
    end

    -- layout
    border = 1
    sidebar_width = square_size * 8
    board = {
        squares_height = 19,
        squares_width = 10,
        height = squares(19),
        width = squares(10),
        x = square_size,
        y = square_size
    }
    sidebar = {
        x = board.width + squares(border + 3), -- 3 = 1 for 
        y = board.y + squares(border)
    }
    window = {
        height = board.y,
        width = board.x + border * 2 + sidebar_width
    }

    -- shapes
    shapes = {
        tee = {
            {0, 1, 0},
            {1, 1, 1}
        },
        ess = {
            {0, 1, 1},
            {1, 1, 0}
        },
        zee = {
            {1, 1, 0},
            {0, 1, 1}
        },
        bar = {
            {1, 1, 1, 1}
        },
        oh = {
            {1, 1},
            {1, 1}
        },
        jay = {
            {1, 0, 0},
            {1, 1, 1}
        },
        ell = {
            {0, 0, 1},
            {1, 1, 1}
        }
    }
end

-- update the game state
function love.update(dt)
    
end

-- render each frame of the game
function love.draw(dt)
    -- draw the background
    --love.graphics
    -- draw the board
    draw_table_border(dt)
    love.graphics.print("Welcome to Lua Tetris", sidebar.x, sidebar.y)
end

-- draw the table border. This part of the table never changes
function draw_table_border(dt)
    -- columns
    for row = 1, board.squares_height do
        -- left column
        love.graphics.draw(grey_square, squares(1), squares(row - 1))

        -- right column
        love.graphics.draw(grey_square, squares(2) + board.width, squares(row - 1))
    end

    -- bottom
    for column = 1, board.squares_width + 2 do
        love.graphics.draw(grey_square, squares(column), board.height)
    end
end

-- draw a shape somewhere on the board
function draw_shape(origin, shape)
end
