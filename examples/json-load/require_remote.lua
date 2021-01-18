-- require_remote.lua

function getLibrary(url, filename)
  local content = http.get(library_file)
  output = fs.open(filename, "w")
  
  output.write(content.readAll())
  output.close()
  return require(filename)
end

return getLibrary
