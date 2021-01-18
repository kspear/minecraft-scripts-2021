-- init.lua

function get_library(url, filename)
  local content = http.get(library_file)
  output = fs.open(filename, "w")
  
  output.write(content.readAll())
  output.close()
  return require(filename)
end
