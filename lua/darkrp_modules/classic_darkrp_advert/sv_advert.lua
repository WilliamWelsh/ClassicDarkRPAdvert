-- Support: https://github.com/WilliamWelsh/classic_darkrp_advert/issues

function playerAdvert( ply, args )
	if args == "" then
		ply:SendLua( string.format( [[notification.AddLegacy( "%s", 1, 5 )
			surface.PlaySound( "buttons/button15.wav" )]], "You need to provide text for your advert." ) )
	else
		for k,pl in pairs( player.GetAll() ) do
			local senderColor = team.GetColor( ply:Team() )
			DarkRP.talkToPerson( pl, senderColor, "[Advert]".." "..ply:Nick(), Color(255,255,0,255), args, ply )
		end
		--hook.Call("playerAdverted", nil, ply, args) -- bLogs Support
		return ""
	end
end

DarkRP.defineChatCommand( "advert", playerAdvert )
DarkRP.defineChatCommand( "ad", playerAdvert )
