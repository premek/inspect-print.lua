-- replaces print function with one that applies the provided "inspect" function to its arguments.
-- Could be used to print lua tables using inspect.lua for example.
--
-- usage
-- local inspect = require 'lib.inspect'
-- require 'lib.inspect-print' ( inspect )
-- 
-- require 'lib.inspect-print' ( require 'lib.inspect' )

return function (inspectFunction) 
    local oldprint = print
    print = function(...)
        local arg = {...}
        for i=1, select('#', ...) do
            local t = type(arg[i])
            if t == 'nil' then 
                arg[i] = "<nil>"
            elseif t ~= 'boolean' and t ~= 'number' and t ~= 'string' then  
                arg[i] = inspectFunction(arg[i])
            end
        end
        oldprint(unpack(arg))
    end
end
