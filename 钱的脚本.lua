require"natives-1627063482"

function global_(global_,Value)
memory.write_int(memory.script_global(global_),Value)end
wait_=6000
function n_ (va)
util.yield(wait_,menu.set_menu_name(l_,va))end
    
menu.slider(menu.my_root(), "util.yield",{"waitut"},"建议使用6000",1, 10000, 6000, 100,function(Value)
wait_= Value
end)

l_=menu.toggle_loop(menu.my_root(),"120M重复",{},"",function()
    menu.show_warning(l_,CLICK_MENU,"Move the util.yield",function()end)
global_(1964179, 1)
n_("120M重复: +500K")
global_(1964179, 2)
n_("120M重复: +750K")
end)
menu.click_slider(menu.my_root(), "加钱",{},"1==500K\n2==750K\n3==120M",1, 3, 1, 1, function(Value)
if Value == 1 then global_(1964179, 1)
  elseif Value == 2 then global_(1964179, 2)
else 
global_(1964179, 1)
   util.yield(50*100)
global_(1964179, 2)
  util.yield(50*100)
util.yield()
end
end)
menu.toggle_loop(menu.my_root(),"ChangeFakeMpCash",{},"",function()
HUD._SET_PLAYER_CASH_CHANGE(654776*8700,654776*8700)end)

repeat
    util.yield()
until util.toast("Hello,when using 120M重复,please move util.yield")==true or  wait_ >= 6100 or wait_<=5900

util.keep_running()
