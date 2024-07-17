-- 'scmtitle' custom module
--
-- This module set console title as a folder name of scm root folder.
-- Depending on scm module.
--

-- option: default text when out side of scm tree
flexprompt.settings.default_title = 'cmd'


local _cache = {}

-- option: map of scm root path to title text
flexprompt.settings.scm_path_titles = {}

local function scmtitle_decide(dir)
  -- c:\foo\bar\src  => bar
  -- c:\foo\bar\src-git => bar
  -- c:\foo\src\src => foo
  -- c:\src-hg => src-hg
  -- c:\src => src
  -- c:\src-git => src-git
  cand = dir:match("([^\\:]+)\\src%-%w+$")
    or dir:match("([^\\:]+)\\src$")
    or dir:match("([^\\:]+)\\current$")
    or dir:match("([^\\:]+)\\%d+%.%d+$")
    or path.getname(dir)
  os.debugprint("use "..cand)
  return cand
end

local function scmtitle_module()
  detected = flexprompt.detect_scm()
  local title
  if detected and detected.type and detected.root then
    root = detected.root
    title = flexprompt.settings.scm_path_titles[root] or _cache[root]
    if not title then
      title =  scmtitle_decide(root)
      if title then
        _cache[root] = title
      end
    end
  end
  console.settitle(title or flexprompt.settings.default_title) -- default
end

flexprompt.add_module("title", scmtitle_module)
