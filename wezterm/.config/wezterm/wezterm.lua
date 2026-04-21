---------------------------------------------------------------
-- WezTerm configuration
---------------------------------------------------------------

local config_misc = {
    window_close_confirmation = "NeverPrompt",
    check_for_updates = false,

    -- Avoid unexpected config breakage and unusable terminal
    automatically_reload_config = false,

    -- Make sure word selection stops on most punctuations.
    --
    -- Note that dot (.) & slash (/) are allowed though for
    -- easy selection of (partial) paths.
    selection_word_boundary = " \t\n{}[]()''`,;:@│*",

    unix_domains = {
        { name = "unix" },
    },

    -- TODO: this causes weird rendering problems for some reason
    -- figure out why
    -- default_gui_startup_args = { "connect", "unix" },

    -- Extend PATH so spawned commands (like spf) can be found
    set_environment_variables = {
        PATH = os.getenv("HOME") .. "/go/bin"
            .. ":/usr/local/bin"
            .. ":/opt/homebrew/bin"
            .. ":" .. (os.getenv("PATH") or ""),
    },
}

------------------------------------------
-- Merge configs and return!
------------------------------------------

local mytable = require("lib/stdlib").mytable
local full_config = mytable.merge_all(
    config_misc,
    require("appearance"),
    require("fonts"),
    require("keys"),
    require("mouse"),
    {} -- so the last table can have an ending comma for git diffs :)
)

return full_config
