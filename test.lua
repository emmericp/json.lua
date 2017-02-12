local json = require "json"

json.test({1,2,3,4})
json.test({x = { x = { "foo", "bar", false, true }}})
json.test({1,2,3,4,{fail="test",foo=false,x=0/0,y=math.huge}})

