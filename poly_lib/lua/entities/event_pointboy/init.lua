AddCSLuaFile( "cl_init.lua" ) -- Make sure clientside
AddCSLuaFile( "shared.lua" )  -- and shared scripts are sent.
 
include('shared.lua')
 
function ENT:Initialize()
 
	self:SetModel( "models/gta_prop_michou/prop_gnome2.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )      -- Make us work with physics,
	self:SetMoveType( MOVETYPE_VPHYSICS )   -- after all, gmod is a physics
	self:SetSolid( SOLID_VPHYSICS )         -- Toolbox
 
        local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Sleep()
		phys:EnableCollisions(false)
	end
end

function ENT:Use( a, c )

	netstream.Start( a, 'eventSparks' )
	for _, pic in pairs(player.GetAll()) do
        netstream.Start( pic, 'eventSound' )
    end
		RunConsoleCommand( 'ulx', 'csay', '[~] ' .. a:GetName() .. ' отнял пойнты у гнома.' )
		RunConsoleCommand('donatormoney_add', a:SteamID(), 0.2)
	self:Remove()
	

end
 
function ENT:Think()
    -- We don't need to think, we are just a prop after all!
end