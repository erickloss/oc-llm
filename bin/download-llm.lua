local function getOrInitDefaultEnv(key, default)
    if os.getenv(key) == nil then
        os.setenv(key, default)
    end
    return os.getenv(key)
end


local llmVersion = getOrInitDefaultEnv("LLM.VERSION", "master")

local baseUrl = "https://raw.githubusercontent.com/erickloss/oc-llm"
local versionBaseUrl = baseUrl .. ""

local llmUrl =

os.execute("wget -f " .. llmUrl .. " /lib/llm.lua")