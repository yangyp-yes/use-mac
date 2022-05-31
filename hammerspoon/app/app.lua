local hotkey = require "hs.hotkey"
local window = require "hs.window"
local application = require "hs.application"
local appfinder = require "hs.appfinder"

applist = {
    {shortcut = 'D', appname = 'Lark',displayName = "飞书"},
    {shortcut = 'E', appname = 'Finder',displayName = "访达"},
    {shortcut = 'C', appname = 'Google Chrome',},
    {shortcut = 'S', appname = 'Visual Studio Code' ,displayName = "Code"},
    {shortcut = 'W', appname = 'WeChat', displayName = '微信'},
    {shortcut = 'Q', appname = 'Sublime Text', displayName = 'Sublime Text'},
    {shortcut = 'Space', appname = 'Iterm', displayName = 'iTerm2'},
    {shortcut = '2', appname = 'Fork', displayName = 'Fork'},
}

for key, app in pairs(applist) do
    hs.hotkey.bind({"alt"}, app.shortcut .. "", function()
        toggle_application(app.appname,app.displayName)
    end)
end
-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app,displayName)
	if not displayName then
		displayName = _app;
	end
    local app = appfinder.appFromName(displayName)
    print(app)
    if not app then
        application.launchOrFocus(_app)
        return
    end
    local mainwin = app:mainWindow()
    if mainwin then
        if mainwin == window.focusedWindow() then
            mainwin:application():hide()
        else
            mainwin:application():activate(true)
            mainwin:application():unhide()
            mainwin:focus()
        end
    else
        application.launchOrFocus(_app)
    end
end
