function copy(obj, seen)
  if type(obj) ~= 'table' then return obj end
  if seen and seen[obj] then return seen[obj] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(obj))
  s[obj] = res
  for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
  return res
end

BD64MAPS.THEMES = DOOM.THEMES

--Tech
BD64MAPS.THEMES.tech.prefab_remap =
{
    --in no particular order
    METAL2 = "TILE1B4E"
    METAL3 = "TILE9496"
    METAL4 = "CUSTOM44"
    
    FLOOR0_1 = "TILED88E"
    FLOOR4_8 = "TILED88E"
    FLAT3 = "FTILEEBD"

    BIGDOOR1 = "TILE0CAC"
    BIGDOOR2 = "TILED4A9"
    BIGDOOR3 = "TILE4507"
    BIGDOOR4 = "TILE0CAC"

    BROWNGRN = "TILE52CA"
    STARTAN3 = "TILEB850"

    ICKWALL3 = "TILE29EF"

    TEKWALL4 = "TILE65CE"

    GATE1 = "XPORTAL1"
    GATE2 = "XPORTAL1"
    GATE3 = "YPORTAL1"
    GATE4 = "ZPORTAL1"
}

BD64MAPS.MATERIALS =
{
    TILE1B4E  = { t="TILE1B4E",    f="TILE1B4E" }
    TILE9496  = { t="TILE9496",    f="TILE9496" }
    TILED88E = { t="TILED88E",    f="TILED88E" }
    TILE0CAC = { t="TILE0CAC",    f="TILE0CAC" }
    TILED4A9 = { t="TILED4A9",    f="TILED4A9" }
    TILE4507 = { t="TILE4507",    f="TILE4507" }
    TILE52CA = { t="TILE52CA",    f="TILE52CA" }
    TILE29EF = { t="TILE29EF",    f="TILE29EF" }
    TILEB850 = { t="TILEB850",    f="TILEB850" }
    TILE65CE = { t="TILE65CE",    f="TILE65CE" }
    CUSTOM44 = { t="CUSTOM44",    f="CUSTOM44" }
    XPORTAL1 = { t="XPORTAL1",    f="XPORTAL1" }
    YPORTAL1 = { t="YPORTAL1",    f="YPORTAL1" }
    ZPORTAL1 = { t="ZPORTAL1",    f="ZPORTAL1" }
    FTILEEBD = { t="FTILEEBD",    f="FTILEEBD" }
}

function tableMerge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end
