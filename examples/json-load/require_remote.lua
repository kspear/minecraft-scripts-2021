-- require_remote.lua

function getLibrary(url, filename)
  local content = http.get(url)
  output = fs.open(filename, "w")
  
  output.write(content.readAll())
  output.close()
  return require(filename)
end

return getLibrary
