surface.CreateFont('library-hud.hh', {
	font = 'Trebuchet24',
	extended = true,
	size = 200,
	weight = 0,
	antialias = true,
	blursize = 30,
})

surface.CreateFont('library-hud.large', {
	font = 'Trebuchet24',
	extended = true,
	size = 38,
	weight = 300,
	antialias = true,
})

surface.CreateFont('library-hud.medium', {
	font = 'Trebuchet24',
	extended = true,
	size = 36,
	weight = 300,
	antialias = true,
})

surface.CreateFont('library-hud.normal', {
	font = 'Trebuchet24',
	extended = true,
	size = 28,
	weight = 300,
	antialias = true,
})

surface.CreateFont('library-hud.normal', {
	font = 'Trebuchet24',
	extended = true,
	size = 28,
	weight = 300,
	antialias = true,
})

surface.CreateFont('library-hud.col', {
	font = 'Calibri',
	extended = true,
	size = 18,
	weight = 100,
	antialias = true,
})

surface.CreateFont('library-hud.small', {
	font = 'Trebuchet24',
	extended = true,
	size = 24,
	weight = 300,
	antialias = true,
})

surface.CreateFont('library-hud.verysmall', {
	font = 'Trebuchet18',
	extended = true,
	size = 20,
	weight = 500,
	antialias = true,
})

surface.CreateFont('library-hud.veryverysmall', {
	font = 'Trebuchet18',
	extended = true,
	size = 16,
	weight = 0,
	antialias = true,
})


atts = {
	test = {
		type = 'hat',
		mdl = 'models/lordvipes/mariohat/mariohat.mdl', 
		vec = Vector(-4, 0, -1 ), 
		ang = Angle(0, 0, 0), 
		scale = 0.8,
		attID = 1,
	},
}


concommand.Add( "test_csent", function( ply, cmd, args )

	local attData = atts

	local attEnt = ClientsideModel( attData.cleaver.mdl )
	attEnt:SetParent(ply, attData.cleaver.attID)


	attEnt:SetLocalPos(attData.cleaver.vec or Vector())
	attEnt:SetLocalAngles(attData.cleaver.ang or Angle())
	attEnt:SetModelScale(attData.cleaver.scale or 1)
	attEnt:SetSkin(attData.cleaver.skin or 0)
	attEnt:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
	attEnt:Spawn()

end )

concommand.Add( '1', function()

	for k, v in pairs( ents.FindByModel( atts.cleaver.mdl ) ) do
		v:Remove()
	end

end)
