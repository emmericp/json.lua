Lightweight Lua <-> JSON encoder/decoder extracted from [Prosody](http://prosody.im/).

## Why use it from this repository instead of copying it directly from Prosody?
I've fixed a minor inconvenience when handling [NaN and infinity](https://github.com/emmericp/json.lua/blob/master/json.lua#L151-L159).
JSON not supporting these special IEE 754 values is a common problem and the original code, like many implementations, generates invalid JSON when encountering NaN or infinity.

This implementation generates strings instead which is slightly better than invalid JSON for my application.
Other applications might be just fine with whatever `tostring(nan/infinity)` produces (note that the output is platform-dependent).

## Why not use any of the 100 other modules?
I didn't want a dependency on LPeg and this implementation seems to be quite mature as it has been used for years in Prosody.

