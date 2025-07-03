local function xor(a, b)
	local r, n = 0, 1
	while a > 0 or b > 0 do
		local ab, bb = a % 2, b % 2
		if ab ~= bb then r = r + n end
		a = math.floor(a / 2)
		b = math.floor(b / 2)
		n = n * 2
	end
	return r
end

local function decrypt(cipher, key)
	local result = ""
	for i = 1, #cipher do
		local x = string.byte(cipher, i)
		local k = string.byte(key, ((i - 1) % #key) + 1)
		result = result .. string.char(xor(x, k))
	end
	return result
end

local claveOfuscada = "\37\14\56\57\52\57\56\7\10\34\13\13\43\9\42\17\43\10\12\67\11\30\14\12\126\33\94\50"
--// ✳️ Clave XOR que usaste al cifrar
local claveXOR = "Goku"

--// Resultado final
local pas = decrypt(claveOfuscada, claveXOR)

_G._489uio43ff_ = pas
