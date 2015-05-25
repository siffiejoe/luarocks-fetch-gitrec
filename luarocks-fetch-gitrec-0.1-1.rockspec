package = "luarocks-fetch-gitrec"
version = "0.1-1"
source = {
  url = "git://github.com/siffiejoe/luarocks-fetch-gitrec.git",
  tag = "v0.1"
}
description = {
  summary = "Support for Git submodules in LuaRocks",
  detailed = [[
  luarocks-fetch-gitrec adds a new pseudo-URL 'gitrec://...' that
  causes LuaRocks to fetch the corresponding git repository
  *including* Git submodules.
]],
  homepage = "http://github.com/siffiejoe/luarocks-fetch-gitrec",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    ["luarocks.fetch.gitrec"] = "gitrec.lua"
  }
}

