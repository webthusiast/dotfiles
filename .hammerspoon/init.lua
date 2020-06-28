-- Getting started: https://www.hammerspoon.org/go/
-- API reference: https://www.hammerspoon.org/docs/index.html

require("hs.ipc")
hs.ipc.cliInstall()

hs.alert.show("Hammerspoon reloading")
-- hs.notify.new({title="Hammerspoon", informativeText="Hammerspoon reloading"}):send()

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  hs.toggleConsole()
end)

-- muting with cmd-alt-m
mutedMenuBarItem = hs.menubar.new(hs.audiodevice.defaultInputDevice():muted())
function setMutedMenuBarItem()
  muted = hs.audiodevice.defaultInputDevice():muted()
  mutedMenuBarItem:setTitle(muted and "muted" or "")
  -- this doesn't work somehow:
  if muted then -- mutedMenuBarItem:returnToMenuBar()
  else -- mutedMenuBarItem:removeFromMenuBar()
  end
end
setMutedMenuBarItem()
hs.hotkey.bind({"cmd", "alt"}, "M", function()
  muted = not hs.audiodevice.defaultInputDevice():muted()
  success = hs.audiodevice.defaultInputDevice():setMuted(muted)
  setMutedMenuBarItem()
  hs.alert.show(
    success and (muted and "muted" or "unmuted") or ("still " .. not muted and "muted" or "unmuted")
  )
end)
