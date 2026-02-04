-- 'vsenv' custom module
--
-- This module shows Visual Studio version indicator regarding to
-- environment variables.
--

local function vsenv_module()
    local devenvdir = os.getenv("DevEnvDir")
    if not devenvdir then
        return ""
    end
    color = "green"
    if devenvdir:find("\\Microsoft Visual Studio\\2022\\") then
        return "VS2022", color
    end
    if devenvdir:find("\\Microsoft Visual Studio\\18\\") then
        return "VS2026", color
    end
    if devenvdir:find("\\Microsoft Visual Studio\\2019\\") then
        return "VS2019", color
    end
    if devenvdir:find("\\Microsoft Visual Studio 10.0\\") then
        return "VS2010", color
    end
    if devenvdir:find("\\Microsoft Visual Studio 9.0\\") then
        return "VS2008", color
    end
    if devenvdir:find("\\Microsoft Visual Studio .NET 2003\\") then
        return "VS2003", color
    end
end

flexprompt.add_module("vsenv", vsenv_module)
