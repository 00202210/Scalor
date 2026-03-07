local Config = {}

Config.BASE_SUFFIXES = {
	"",
	"K",
	"M",
	"B",
	"T",
	"Qa",
	"Qt",
	"Sx",
	"Sp",
	"Oc",
	"No",
	"Dc",
	"Ud",
	"DDc",
	"Td",
	"Qad",
	"Qid",
	"Hxd",
	"Spd",
	"Ocd",
	"Nod",
}

local PREFIXES = { "", "U", "D", "T", "Qa", "Qt", "Sx", "Sp", "O", "N" }
local ROOTS = { "Vg", "Tg", "Qd", "Qi", "He", "St", "Og", "Nn", "Ce" }

for _, root in ROOTS do
	for _, prefix in PREFIXES do
		table.insert(Config.BASE_SUFFIXES, prefix .. root)
	end
end

Config.SUFFIX_TO_POWER = {}

for power = 2, #Config.BASE_SUFFIXES do
	Config.SUFFIX_TO_POWER[Config.BASE_SUFFIXES[power]] = power
end

Config.MAX_ADD_DIFF = 16
Config.MAX_SAFE_INTEGER = 9007199254740991

return Config
