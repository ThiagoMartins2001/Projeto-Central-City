SERVER = IsDuplicityVersion()
CLIENT = not SERVER

function table.maxn(t)
	local max = 0
	for k,v in pairs(t) do
		local n = tonumber(k)
		if n and n > max then max = n end
	end
	return max
end

local modules = {}
function module (rsc, path)
	if path == nil then
		path = rsc
		rsc = GetCurrentResourceName()
	end

	local key = rsc..path
	local module = modules[key]
	if module then
		return module
	else
		local code = LoadResourceFile(rsc, path..".lua")
		if code then
			local f,err = load(code, rsc.."/"..path..".lua")
			if f then
				local ok, res = xpcall(f, debug.traceback)
				if ok then
					modules[key] = res
					return res
				else
					error("error loading module "..rsc.."/"..path..":"..res)
				end
			else
				error("error parsing module "..rsc.."/"..path..":"..debug.traceback(err))
			end
		else
			error("resource file "..rsc.."/"..path..".lua not found")
		end
	end
end

local function wait(self)
	local rets = Citizen.Await(self.p)
	if not rets then
		rets = self.r 
	end
	return table.unpack(rets,1,table.maxn(rets))
end

local function areturn(self, ...)
	self.r = {...}
	self.p:resolve(self.r)
end

function async(func)
	if func then
		Citizen.CreateThreadNow(func)
	else
		return setmetatable({ wait = wait, p = promise.new() }, { __call = areturn })
	end
end

function parseInt(v)
	local n = tonumber(v)
	if n == nil then 
		return 0
	else
		return math.floor(n)
	end
end

function parseDouble(v)
	local n = tonumber(v)
	if n == nil then n = 0 end
	return n
end

function parseFloat(v)
	return parseDouble(v)
end

local sanitize_tmp = {}
function sanitizeString(str, strchars, allow_policy)
	local r = ""
	local chars = sanitize_tmp[strchars]
	if chars == nil then
		chars = {}
		local size = string.len(strchars)
		for i=1,size do
			local char = string.sub(strchars,i,i)
			chars[char] = true
		end
		sanitize_tmp[strchars] = chars
	end

	size = string.len(str)
	for i=1,size do
		local char = string.sub(str,i,i)
		if (allow_policy and chars[char]) or (not allow_policy and not chars[char]) then
			r = r..char
		end
	end
	return r
end

function splitString(str, sep)
	if sep == nil then sep = "%s" end

	local t={}
	local i=1

	for str in string.gmatch(str, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end

	return t
end

function joinStrings(list, sep)
	if sep == nil then sep = "" end

	local str = ""
	local count = 0
	local size = #list
	for k,v in pairs(list) do
		count = count+1
		str = str..v
		if count < size then str = str..sep end
	end
	return str
end

function table:len()
	local n = 0
	for k,v in pairs(self) do
		n = n + 1
	end
	return n
end

function table:copy()
	local instance = {}
	for k,v in pairs(self) do
		if type(v) == 'table' then
			instance[k] = table.copy(v)
		else
			instance[k] = v
		end
	end
	return instance
end

function table:array()
	local instance = {}
	for _,v in pairs(self) do
		table.insert(instance, v)
	end
	return instance
end

function format(n)
    n = parseInt(n)
    local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1.'):reverse())..right
end

function f(n)
	return n/1
end

function require (...)
	return module (...)
end

function positive(n)
    if n < 0 then
        return n * -1
    end
    return n
end

function parsePart(key)
	if type(key) == "string" and string.sub(key,1,1) == "p" then
		return true,tonumber(string.sub(key,2))
	else
		return false,tonumber(key)
	end
end

function round(self, dp)
    local mult = 10^(dp or 0)
    return math.floor(self * mult + 0.5)/mult
end