local state = ya.sync(function (state)
  local file = cx.active.current.hovered
  return tostring(file.url), tostring(file.name)
end )

return {
  entry =  function()
    local path, name = state()

    ya.notify {
      title = "Copied to Clipboard",
      content = name,
      timeout = 1.5,
      level = "info",
    }

    local cmd = Command("pwsh"):args({"-NoProfile",
                                      "-C",
                                      "~/AppData/Roaming/yazi/config/plugins/copy-item.yazi/copy-item.ps1",
                                      "'" .. path .. "'"
                                      }):output()
  end,
}
