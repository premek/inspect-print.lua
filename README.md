# inspect-print.lua
replaces print function with one that applies the provided "inspect" function to its arguments.
Could be used to print lua tables using inspect.lua for example.

## usage
```lua
local inspect = require 'lib.inspect'
require 'lib.inspect-print' ( inspect )
```
or
```lua
require 'lib.inspect-print' ( require 'lib.inspect' )
```

## print example
```
print ("string", nil, true, 1/3, {a=2, b="x"})
```
```
string	<nil>	true		0.33333333333333	{
  a = 2,
  b = "x"
}
```
