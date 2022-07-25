--created by  beginner
require"natives-1651208000"
function global_(global_,Value)
memory.write_int(memory.script_global(global_),Value)end
wait_=6000
for_=1
function n_ (va)
util.yield(wait_,menu.set_menu_name(l_,va))
end
 
menu.slider(menu.my_root(), "util.yield",{"waitut"},"建议使用6000",1, 10000, 6000, 100,function(Value)
wait_= Value
end)
menu.slider(menu.my_root(), "120M Loop:count",{"fortime"},"",1, 10000, 2, 1,function(Value)
  for_= Value
  end)

l_=menu.toggle_loop(menu.my_root(),"120M:Loop",{},"",function()
util.toast("This is money loop.Do you really  want to run it?[press G]")
local pad = PAD.IS_CONTROL_PRESSED(0,58)
  
for i=0,for_ do
tag=nil

if i == for_ then 
  pad = false
end
  if pad then
    global_(1964179, 1)                   
    n_("120M Loop: +500K")
     global_(1964179, 2)
     n_("120M Loop: +750K")     
        
    
        end
    end
     
end)
menu.click_slider(menu.my_root(), "ADD:MONEY ",{},"1==500K\n2==750K\n3==120M",1, 3, 1, 1, function(Value)
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
until util.toast("Hello,when using 120M:Loop,please move util.yield")==true or  wait_ >= 6100 or wait_<=5900

util.keep_running()
