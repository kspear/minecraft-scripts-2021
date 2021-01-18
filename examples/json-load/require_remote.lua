-- require_remote.lua

function getLibrary(url, name)
  local content = http.get(url)
  output = fs.open(name .. ".lua", "w")
  
  output.write(content.readAll())
  output.close()
  return require(name)
end

return getLibrary
