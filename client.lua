Citizen.CreateThread(function()
    SetMapZoomDataLevel(0, 0.96, 0.9, 0.08, 0.0, 0.0)
    SetMapZoomDataLevel(1, 1.6, 0.9, 0.08, 0.0, 0.0)
    SetMapZoomDataLevel(2, 8.6, 0.9, 0.08, 0.0, 0.0)
    SetMapZoomDataLevel(3, 12.3, 0.9, 0.08, 0.0, 0.0)
    SetMapZoomDataLevel(4, 22.3, 0.9, 0.08, 0.0, 0.0)
end)

-- Citizen.CreateThread(function()
--     while true do
-- 		Citizen.Wait(1)
-- 		if IsPedOnFoot(GetPlayerPed(-1)) then 
-- 			SetRadarZoom(1100)
-- 		elseif IsPedInAnyVehicle(GetPlayerPed(-1), true) then
-- 			SetRadarZoom(1100)
-- 		end
--     end
-- end)

-- optimized

Citizen.CreateThread(function()
  while true do
      
      if InCar then
          Citizen.Wait(200)
      else
          Citizen.Wait(5000)
  end

      InCar = false

      ped = PlayerPedId()
      local isInCar = IsPedInAnyVehicle(ped, true)

  if isInCar then
          InCar = true
    SetRadarZoom(1100)
  end
  end
end)