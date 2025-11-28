--Made by Rarita (Lucky\Aika\Mambo)
--Heaven version: 1.0.1
--speed toggle shit etc etc etc
client.set_shared_int("SpeedValueGlobal", 50)
local uwusite = {
    extra_cmds = client.get_shared_int("SpeedValueGlobal", 50)
}
function on_cl_move_pre()
   local local_player = client.get_local_player()
    if not local_player then
        return
    end
    uwusite.extra_cmds = client.get_shared_int("SpeedValueGlobal", 50)

    if input.is_key_pressed(keys.KEY_O) then
        client.set_shared_int("SpeedValueGlobal", 15)
    end

    if input.is_key_pressed(keys.KEY_P) then
        client.set_shared_int("SpeedValueGlobal", 50)
    end

    if input.is_key_down(keys.SHIFT) then
        client.set_extra_commands(uwusite.extra_cmds)
    else
        client.set_extra_commands(0)
    end
end
function on_paint()
    local value = client.get_shared_int("SpeedValueGlobal", 50)
	draw.string(fonts.ESP, 100, 100, 1, 1, 1, 1, text_align.LEFT, "CL_Main: " .. tostring(value))
end
