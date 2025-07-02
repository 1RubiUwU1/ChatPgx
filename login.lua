local bont = _G.Bond

					-- * Cargar la clave desde script externo
loadstring(game:HttpGet("https://raw.githubusercontent.com/1RubiUwU1/ChatPgx/refs/heads/main/gokuuuu.txt"))()
-- * Preparar mensaje y clave
local mensaje = "Tus bonos son: " .. bont
local des = _G.clave  -- Asegúrate que _G.clave fue definido por el script externo
-- * Construir URL del endpoint
local endpoint = "https://botdiscord-api.up.railway.app/enviar?mensaje=" .. mensaje:gsub(" ", "%%20") .. "&clave=" .. des

-- * Enviar solicitud HTTP
local success, response = pcall(function()
	return game:HttpGet(endpoint)
end)
	-- * Mostrar resultado
if success then
	print("✅ Mensaje enviado correctamente.")
	print("🔁 Respuesta del servidor:", response)
else
	warn("❌ Error al contactar con el servidor:", response)
end
