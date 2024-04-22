local wezterm = require 'wezterm';
local config = {}

config.window_background_opacity = 0.85
config.font = wezterm.font("Hack Nerd Font")
config.use_ime = true
config.font_size = 12.0
config.color_scheme = "Tokyo Night"
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.enable_tab_bar = true
config.adjust_window_size_when_changing_font_size = false

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local title = wezterm.truncate_right(utils.basename(tab.active_pane.foreground_process_name), max_width)
    if title == "" then
        title = wezterm.truncate_right(
            utils.basename(utils.convert_home_dir(tab.active_pane.current_working_dir)),
            max_width
        )
    end
    return {
        { Text = tab.tab_index + 1 .. ":" .. title },
    }
end)

config.leader = { key = 'g', mods = 'CTRL', timeout_milliseconds = 1000 }

config.keys = {
    {
        key = 'y',
        mods = 'LEADER',
        action = wezterm.action.ActivateCopyMode,
    },
    {
        key = '|',
        mods = 'LEADER',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = '-',
        mods = 'LEADER',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = "h",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
        key = "l",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection("Right"),
    },
    {
        key = "k",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
        key = "j",
        mods = "LEADER",
        action = wezterm.action.ActivatePaneDirection("Down"),
    },
    {
        key = "H",
        mods = "LEADER",
        action = wezterm.action.AdjustPaneSize { "Left", 10 },
    },
    {
        key = "L",
        mods = "LEADER",
        action = wezterm.action.AdjustPaneSize { "Right", 10 },
    },
    {
        key = "K",
        mods = "LEADER",
        action = wezterm.action.AdjustPaneSize { "Up", 5 },
    },
    {
        key = "J",
        mods = "LEADER",
        action = wezterm.action.AdjustPaneSize { "Down", 5 },
    },
}

config.colors = {
    selection_bg = '#fffacd',
    selection_fg = 'black',
}

return config
