# luarocks-fetch-gitrec
LuaRocks fetcher module that clones git repositories recursively.

The code is a modified copy of the `luarocks.fetch.git` module
distributed with LuaRocks which is responsible for getting sources
from git repositories. In contrast to that module the git repositories
are cloned recursively (with the `--recursive` flag to the git command
line client) to fetch git submodules as well.

To use this module reference it in the `dependencies` table in your
rockspec (to make sure that it is installed when needed) and put one
of the supported URL schemes in the `source.url` field.

Example:

```lua
package = "my_package"
version = "0.1-1"
source = {
  url = "gitrec+https://github.com/user/my_package.git" -- !!
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "luarocks-fetch-gitrec", -- !!
}
description = {
  -- ...
}
build = {
  -- ...
}
```

Supported URL schemes are at the moment:

*   `gitrec://...` (uses the "git" protocol; works with GitHub)
*   `gitrec+http://...` (uses the "http" protocol; works with GitHub)
*   `gitrec+https://...` (uses the "https" protocol; works with GitHub)
*   `gitrec+file://...` (for local repositories)
*   `gitrec+ssh://...` (uses the "ssh" protocol)

