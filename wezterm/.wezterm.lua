local wezterm = require 'wezterm'

-- simple numbered tabs
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local index = tab.tab_index + 1
    
    -- add padding on both sides for better appearance
    local title = "  " .. tostring(index) .. "  "
    
    return {
        { Text = title },
    }
end)

local bg_opacity = 0.75

return {
    -- basic terminal settings
    term = "xterm-256color",
    default_cursor_style = "BlinkingBlock",
    
    -- font
    font = wezterm.font("Source Code Pro", {weight = 500}),
    font_size = 11.5,
    freetype_load_target = "Light",
    freetype_render_target = "HorizontalLcd",
    line_height = 1.0,
    
    -- window style
    window_decorations = "RESIZE",
    enable_tab_bar = true,
    use_fancy_tab_bar = false,
    show_new_tab_button_in_tab_bar = false,
    tab_bar_at_bottom = false,
    tab_max_width = 25,
    window_padding = {
        left = 7,
        right = 7,
        top = 7,
        bottom = 7,
    },
    
    -- window appearance
    window_background_opacity = bg_opacity,
    prefer_egl = true,
    front_end = "OpenGL",
    max_fps = 165,
    initial_cols = 90,
    initial_rows = 40,
    
    colors = {
        foreground = "#FFFFFF",
        background = "#000000",

        selection_fg = "none",
        selection_bg = "rgba(162, 230, 85, 0.54)",
        
        cursor_bg = "#A2E655",
        cursor_border = "A2E655",
        
        tab_bar = {
            background = "rgba(0, 0, 0, " .. bg_opacity .. ")",
            
            active_tab = {
                bg_color = "#A2E655", 
                fg_color = "#000000", 
            },
            
            inactive_tab = {
                bg_color = "rgba(0, 0, 0, " .. bg_opacity .. ")",
                fg_color = "#FFFFFF",
            },
            
            inactive_tab_hover = {
                bg_color = "#A2E655", 
                fg_color = "#000000", 
            },
            
            new_tab = {
                bg_color = "rgba(0, 0, 0, " .. bg_opacity .. ")",
                fg_color = "#A2E655",
            },
        },
        
        ansi = {
            "#000000",
            "#a171d6",
            "#13CA2D",
            "#55c166",
            "#385A70",
            "#556085",
            "#8ca7a1",
            "#bbbbbb",
        },
        brights = {
            "#9b9b9b",
            "#d095de",
            "#A2E655",
            "#6ff083",
            "#4b718a",
            "#5E6C99",
            "#b3ddd1",
            "#FFFFFF",
        },
    },
    
    -- keybindings
    keys = {
        { key = "t", mods = "CTRL", action = wezterm.action.SpawnTab "CurrentPaneDomain" },
        { key = "w", mods = "CTRL|SHIFT", action = wezterm.action.QuitApplication },
        
        { key = "1", mods = "CTRL", action = wezterm.action.ActivateTab(0) },
        { key = "2", mods = "CTRL", action = wezterm.action.ActivateTab(1) },
        { key = "3", mods = "CTRL", action = wezterm.action.ActivateTab(2) },
        { key = "4", mods = "CTRL", action = wezterm.action.ActivateTab(3) },
        { key = "5", mods = "CTRL", action = wezterm.action.ActivateTab(4) },
        { key = "6", mods = "CTRL", action = wezterm.action.ActivateTab(5) },
        { key = "7", mods = "CTRL", action = wezterm.action.ActivateTab(6) },
        { key = "8", mods = "CTRL", action = wezterm.action.ActivateTab(7) },
        { key = "9", mods = "CTRL", action = wezterm.action.ActivateTab(8) },
        
        { key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
        { key = "v", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
    },
}
