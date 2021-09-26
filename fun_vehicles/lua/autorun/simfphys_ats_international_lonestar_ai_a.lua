local V = {
	Name = "International LoneStar Day Cab",
	Model = "models/ats/vehicles/international_lonestar_ai_a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 7456,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-131.65,0,1.59))
                ent:SetTrailerCenterposition(Vector(-131.65,0,1.59))
            end
        end,
		
		EnginePos = Vector(140,0,20),
		
		LightsTable = "ats_international_lonestar_ai_a",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/chrome/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/chrome/rear.mdl",
		
		CustomWheelPosFL = Vector(110.49,43.51,-32),
		CustomWheelPosFR = Vector(110.49,-43.51,-32),
		CustomWheelPosML = Vector(-102.16,38.26,-30),
		CustomWheelPosMR = Vector(-102.16,-39.26,-30),		
		CustomWheelPosRL = Vector(-160.94,38.26,-30),
		CustomWheelPosRR = Vector(-160.94,-38.26,-30),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(18,-25,63),
		SeatPitch = 10,
		SeatYaw = 90,
		
		OnTick = 
		function(ent)
			local function rev()
				if ( ent:GetGear() == 1) then
					if ( CurTime() % 0.225 ~= 0 ) then
					else
						sound.Play( "ats/vehicles/horns/rev_gen.wav", ent:GetPos())
					end
				end
			end
			rev()
		end,
		
		PassengerSeats = {
			{
				pos = Vector(28,-24,25),
				ang = Angle(0,-90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-1.77,-46.68,92.28),
				ang = Angle(-90,0,0),
			},
		},
		
		Attachments = {
			{
				model = "models/ats/vehicles/international_lonestar_ai_a_badge.mdl",
				color = Color(255,255,255,255),
				pos = Vector(0,0,0),
				ang = Angle(0,0,0)
			},
		},
		
		FrontHeight = -3,
		FrontConstant = 34000,
		FrontDamping = 6000,
		FrontRelativeDamping = 1000,
		
		RearHeight = -3,
		RearConstant = 34000,
		RearDamping = 6000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 85,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3600,
		PeakTorque = 310,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-28.4,41.66,-0.12),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 567,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/international_lonestar_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/international_lonestar_low.wav",
		Sound_MidPitch = 1.4,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/international_lonestar_high.wav",
		Sound_HighPitch = 1.1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/international_lonestar_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "ats/vehicles/horns/horn_international_lonestar.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.15,0,0.07,0.16,0.25,0.36,0.49,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_international_lonestar_ai_a", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(129.6,39.97,13.26),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(129.6,-39.97,13.26),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-188.07,13.51,-14.36),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-188.07,-13.51,-14.36),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(129.6,39.97,13.26),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(129.6,-39.97,13.26),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(60.62,0,74.54),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(60.37,7.28,74.53),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(60.37,-7.28,74.53),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(56.34,33.97,73.66),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(56.34,-33.97,73.66),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		--
		{
			pos = Vector(69.74,39.43,9.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(69.74,-39.43,9.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,255,255,255),
		},
		--
		{
			pos = Vector(132.13,44.49,10.32),
			material = "sprites/light_ignorez",
			size = 15,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(132.13,-44.49,10.32),
			material = "sprites/light_ignorez",
			size = 15,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(134.45,39.97,8.29),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(134.45,-39.97,8.29),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(145.71,37.54,-15.47),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(145.71,-37.54,-15.47),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	Rearlight_sprites = {
		{
			pos = Vector(-188.07,13.51,-14.36),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-188.07,-13.51,-14.36),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-188.07,13.51,-14.36),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-188.07,-13.51,-14.36),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-188.07,-7.41,-14.36),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(136.43,39.98,4.36),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-188.07,13.51,-14.36),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(136.43,-39.98,4.36),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-188.07,-13.51,-14.36),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_international_lonestar_ai_a", light_table)