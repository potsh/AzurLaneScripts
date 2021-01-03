pg = pg or {}
ys = ys or {}

require("CN.localConfig")
require("CN.config")
--require("CN.const")
require("constCopy")
setmetatable(pg, {
	__index = function (slot0, slot1)
		if ShareCfg["ShareCfg." .. slot1] then
			--require(slot2)
			require("CN.sharecfg." .. slot1)
			return rawget(pg, slot1)
		end
	end
})

require("utility")
require("constAdded")
require("const.equiptype")
require("const.shiptype")
require("const.battleconfig")

