function remote_init()
local items=
 {
  {name="Keyboard", input="keyboard"},
  {name="X_Pad", input="value", min=0, max=127},
 }
remote.define_items(items)

local inputs=
 {
 }
 remote.define_auto_inputs(inputs)
end

function remote_probe()
return {
	request="f0 7e 7f 06 01 f7",
	response="F0 7E 00 06 02 42 02 01  00 00 20 ?? ?? ?? F7"
	}
end