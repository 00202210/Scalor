--!strict
local Config = {}

local DEFAULT_MAX_SUFFIX_POWER = 1001
local MAX_SUFFIX_POWER_LIMIT = 1001

Config.MAX_SUFFIX_POWER = DEFAULT_MAX_SUFFIX_POWER

Config.MAX_ADD_DIFF = 10
Config.MAX_SAFE_INTEGER = 9007199254740991

local configuredMaxSuffixPower = Config.MAX_SUFFIX_POWER
if type(configuredMaxSuffixPower) ~= "number" or math.isnan(configuredMaxSuffixPower) or math.isinf(configuredMaxSuffixPower) then
	configuredMaxSuffixPower = DEFAULT_MAX_SUFFIX_POWER
end

Config.MAX_SUFFIX_POWER = math.clamp(configuredMaxSuffixPower // 1, 1, MAX_SUFFIX_POWER_LIMIT)

return Config
