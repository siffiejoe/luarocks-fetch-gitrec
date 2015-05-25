local gitrec_http = {}

local gitrec = require("luarocks.fetch.gitrec")

function gitrec_http.get_sources(rockspec, ...)
  rockspec.source.url = rockspec.source.url:gsub("^gitrec.", "")
  return gitrec.get_sources(rockspec, ...)
end

return gitrec_http

