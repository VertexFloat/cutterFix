-- Author: VertexFloat
-- Date: 17.08.2022
-- Version: Farming Simulator 22, 1.0.0.1
-- Copyright (C): VertexFloat, All Rights Reserved
-- CutterFix main file

-- Changelog (1.0.0.1) :
--
-- improved and more clearly code

local overwritten = false

function overwriteGameFunctions()
    local function startThreshing()
    end

    local function stopThreshing()
    end

    if not overwritten then
        overwritten = true

        Combine["startThreshing"] = function (...)
            return startThreshing(Combine["startThreshing"], ...)
        end

        Combine["stopThreshing"] = function (...)
            return stopThreshing(Combine["stopThreshing"], ...)
        end
    end
end

overwriteGameFunctions()