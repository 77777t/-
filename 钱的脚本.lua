require"natives-1627063482"
function global_(global_,Value)
    memory.write_int(memory.script_global(global_),Value)
end

loop=menu.toggle_loop(menu.my_root(),"120M重复",{},"",function()
global_(1964179, 1)
util.yield(50*100,menu.set_menu_name(loop,"120M重复".."+500K"))
global_(1964179, 2)
util.yield(50*100,menu.set_menu_name(loop,"120M重复".."+750K"))
end)
menu.click_slider(menu.my_root(), "加钱",{},"1==500K\n2==750K\n3==120M",1, 3, 1, 1, function(Value)
    if Value == 1 then 
        global_(1964179, 1)
  elseif Value == 2 then
      global_(1964179, 2)
    elseif Value == 3 then
    global_(1964179, 1)
    util.yield(60*100)
    global_(1964179, 2)
      util.yield(60*100)
      util.yield(math.max(1.0,1))
end
end)
menu.toggle_loop(menu.my_root(),"ChangeFakeMpCash",{},"",function()
    HUD._SET_PLAYER_CASH_CHANGE(654776*8700,654776*8700)
end)


util.keep_running()
