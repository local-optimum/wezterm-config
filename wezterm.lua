local wezterm = require 'wezterm'
local config = {}

config.enable_wayland = true

-- terminal text color scheme
config.color_scheme = 'Outrun Dark (base16)'

-- background image specification
local dimmer = { brightness = 0.2 }

config.background = {
    -- This is the deepest/back-most layer. It will be rendered first
    {
        source = {
            File = wezterm.config_dir .. '/images/wallpaper.jpg',
        },
        -- The texture tiles vertically but not horizontally.
        -- When we repeat it, mirror it so that it appears "more seamless".
        -- An alternative to this is to set `width = "100%"` and have
        -- it stretch across the display
        repeat_x = 'Mirror',
        hsb = dimmer,
        -- When the viewport scrolls, move this layer 10% of the number of
        -- pixels moved by the main viewport. This makes it appear to be
        -- further behind the text.
        attachment = { Parallax = 0.1 },
    }
}


config.window_background_opacity = 0.87

-- Tab bar configuration

config.tab_bar_at_bottom = true

-- scroll bar configurations

config.enable_scroll_bar = true

return config
