--[[============================================================================
  Project spacebuild extensions                                                =
  Copyright Spacebuild project (http://github.com/spacebuild)                  =
                                                                               =
  Licensed under the Apache License, Version 2.0 (the "License");              =
   you may not use this file except in compliance with the License.            =
   You may obtain a copy of the License at                                     =
                                                                               =
  http://www.apache.org/licenses/LICENSE-2.0                                   =
                                                                               =
  Unless required by applicable law or agreed to in writing, software          =
  distributed under the License is distributed on an "AS IS" BASIS,            =
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.     =
  See the License for the specific language governing permissions and          =
   limitations under the License.                                              =
  ============================================================================]]
AddCSLuaFile()
local function initTools(SB)
    if not SB then SB = SPACEBUILD end
    if not SB then print("Could not register spacebuild vehicles\n") return end
    SB:registerExtensionsVehicles()
end
if SPACEBUILD then
    initTools(SPACEBUILD)
else
    hook.Add("onSpacebuildLoaded", "spacebuild.loaded.extensions.vehicles", initTools)
end

