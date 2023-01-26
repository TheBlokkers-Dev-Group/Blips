local blips = {
    {title="Example 4", colour=5, id=446, x = -347.291, y = -133.370, z = 38.009},
    {title="San Andreas State Police", colour=8, id=526, x = 649.598, y = -10.479, z = 82.788},
    {title="Los Santos Police Department", colour=30, id=526, x = -557.5239, y = -142.1636, z = 38.4238},
    {title="Los Santos Police Department", colour=30, id=526, x = -1632.3485, y = -1012.1484, z = 13.1010},
    {title="Los Santos Police Department", colour=30, id=526, x = -1311.0470, y = -1529.5767, z = 4.3961},
    {title="Los Santos Police Department", colour=30, id=526, x = 429.5608, y = -980.2277, z = 30.7104},
    {title="Los Santos Sheriff's Office", colour=5, id=526, x = 362.9062, y = -1577.8997, z = 29.2920},
    {title="San Andreas Highway Patrol", colour=7, id=526, x = 816.3419, y = -1290.1417, z = 26.2855},
    {title="Sandy Shores Sheriff's Office", colour=5, id=526, x = 1856.4562, y = 3681.1313, z = 34.2668},
    {title="Paleto Bay Sheriff's Office", colour=5, id=526, x = -439.0460, y = 6020.7603, z = 31.4901},
    {title="San Andreas Park Ranger Service", colour=2, id=526, x = 375.5498, y = 782.7919, z = 186.1489},
    {title="Federal Investigation Bureau", colour=9, id=526, x = 62.1221, y = -749.0405, z = 44.2203},
    {title="Pillbox Hill Medical Center", colour=1, id=61, x = 297.4556, y = -584.3617, z = 43.2609},
    {title="Central Los Santos Medical Center", colour=1, id=61, x = 342.0346, y = -1397.5240, z = 32.5093},
    {title="Mount Zonah Medical Center", colour=1, id=61, x = -475.3416, y = -350.5764, z = 34.3574},
    {title="Sandy Shores Medical Center", colour=1, id=61, x = 1839.6328, y = 3672.1445, z = 34.2767},
    {title="The Bay Care Center", colour=1, id=61, x = -241.1710, y = 6325.3828, z = 32.4262},
    {title="Paleto Bay Fire Station", colour=3, id=436, x = -384.4978, y = 6123.4282, z = 31.4795},
    {title="Sandy Shores Fire Station", colour=3, id=436, x = 1698.1168, y = 3585.5815, z = 35.5627},
    {title="Los Santos Fire Department", colour=3, id=436, x = 1202.6768, y = -1459.0594, z = 34.7797},
    {title="Los Santos Fire Department", colour=3, id=436, x = 217.8416, y = -1639.9010, z = 29.5402},
    {title="Los Santos Fire Department", colour=3, id=436, x = -661.9334, y = -74.1491, z = 38.5604},
    {title="Example 2", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287},
    {title="Example 2", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287},
    {title="Example 3", colour=31, id=108, x = 260.130, y = 204.308, z = 123.287}
    
}

Citizen.CreateThread(function()
   for _, info in pairs(blips) do
       info.blip = AddBlipForCoord(info.x,info.y,info.z)

       SetBlipSprite(info.blip, info.id)
       SetBlipDisplay(info.blip, 4)
       SetBlipScale(info.blip, 0.7)
       SetBlipColour(info.blip, info.colour)
       SetBlipAsShortRange(info.blip, true)
       BeginTextCommandSetBlipName("STRING")
       AddTextComponentString(info.title)
       EndTextCommandSetBlipName(info.blip)
   end
end)