-- @author: 4c65736975, All Rights Reserved
-- @version: 1.0.0.1, 17|08|2022
-- @filename: CutterFix.lua

-- Changelog (1.0.0.1):
-- improved and more clearly code

function overwriteGameFunctions()
	local function startThreshing() end
	local function stopThreshing() end

	Combine['startThreshing'] = function (...)
		return startThreshing(Combine['startThreshing'], ...)
	end

	Combine['stopThreshing'] = function (...)
		return stopThreshing(Combine['stopThreshing'], ...)
	end
end

overwriteGameFunctions()