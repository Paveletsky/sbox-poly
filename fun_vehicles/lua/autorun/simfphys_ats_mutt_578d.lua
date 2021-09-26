local V = {
	Name = "Caterpillar 785C",
	Model = "models/ats/vehicles/mutt_578d.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,90),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 25000,
		
		EnginePos = Vector(183.36,0,-13.56),
		
		LightsTable = "ats_mutt_578d",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/mutt_578d/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/mutt_578d/rear.mdl",
		
		CustomWheelPosFL = Vector(99.93,98.16,-53),
		CustomWheelPosFR = Vector(99.93,-98.16,-53),		
		CustomWheelPosRL = Vector(-109,85.29,-53),
		CustomWheelPosRR = Vector(-109,-85.29,-53),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(20,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(100,-99,105),
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
		
		ExhaustPositions = {
			{
				pos = Vector(76.66,-131.54,56.87),
				ang = Angle(110,-110,0),
			},
			{
				pos = Vector(76.66,-131.54,56.87),
				ang = Angle(110,-110,0),
			},
			{
				pos = Vector(58.65,-131.54,35.67),
				ang = Angle(110,-110,0),
			},
			{
				pos = Vector(58.65,-131.54,35.67),
				ang = Angle(110,-110,0),
			},
		},
		
		FrontHeight = 0,
		FrontConstant = 50000,
		FrontDamping = 1000,
		FrontRelativeDamping = 500,
		
		RearHeight = 0,
		RearConstant = 50000,
		RearDamping = 1000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1,
		
		MaxGrip = 2000,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 175,
		BulletProofTires = true,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 250,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = true,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(6.44,87.83,-50.2),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 1892,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/dump_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/dump_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/dump_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/dump_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_dump.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.07,
		Gears = {-0.1,0,0.07,0.17,0.26,0.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mutt_578d", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(194.12,49.36,36.19),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(194.12,-49.36,36.19),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-122.72,8,-1),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-122.72,-8,-1),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(194.12,49.36,36.19),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(194.12,43.84,36.19),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(194.12,-43.84,36.19),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(194.12,-49.36,36.19),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(173.23,109.26,11.76),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(173.23,-109.26,11.76),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(165.77,116.74,11.76),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(165.77,-116.74,11.76),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(194.12,34.47,36.19),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(194.12,-34.47,36.19),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(194.12,28.87,36.19),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(194.12,-28.87,36.19),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-122.72,8,-1),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-122.72,-8,-1),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-122.72,8,-1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-122.72,-8,-1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-123,8,-4.5),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-123,-8,-4.5),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
}
list.Set( "simfphys_lights", "ats_mutt_578d", light_table)