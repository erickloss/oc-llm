-- usage:
-- create-patched-openos-floppy [pathToDownloadLlmFile] [floppyWithOpenOs] [targetFloppy]

local args = {...}
local pathToDownloadLlmFile = args[1]
local floppyWithOpenOs = "/mnt/" .. args[2]
local targetFloppy = "/mnt/" .. args[3]

-- clear target floppy
os.execute("rm -rf " .. targetFloppy .. "/*")
-- copy OpenOs to target floppy
os.execute("cp -r " .. floppyWithOpenOs .. "/* " .. targetFloppy .. "/")
-- copy download llm file
os.execute("cp " .. pathToDownloadLlmFile .. " " .. targetFloppy .. "/bin/")
