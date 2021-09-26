local V = {
	Name = "Caterpillar 938 G",
	Model = "models/ats/vehicles/cat_938g.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 3000,
		
		EnginePos = Vector(-112,0,2),
		
		LightsTable = "ats_cat_938g",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/cat_938g/front.mdl",
		
		CustomWheelPosFL = Vector(82.96,40,-37),
		CustomWheelPosFR = Vector(82.96,-39.5,-37),		
		CustomWheelPosRL = Vector(-43,40,-37),
		CustomWheelPosRR = Vector(-43,-39.5,-37),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-22,0,43),
		SeatPitch = 15,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-51.3,1.5,61.5),
				ang = Angle(-45,0,0),
			},
		},
		
		FrontHeight = 8,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 8,
		RearConstant = 50000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 45,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 175,
		PowerbandStart = 1300,
		PowerbandEnd = 2700,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-34,28,19),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 145,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/digger_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/digger_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/digger_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/digger_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_01.wav",
		
		DifferentialGear = 0.27,
		Gears = {-0.06,0,0.07,0.16,0.25}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_cat_938g", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(58.7,49.9,36.2),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(58.7,-49.9,36.2),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-80.3,43.3,-26.8),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-80.3,-43.3,-26.8),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(58.7,49.9,36.2),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(58.7,-49.9,36.2),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(58.7,49.9,36.2),size = 60,material = "sprites/light_ignorez"},
		{pos = Vector(58.7,-49.9,36.2),size = 60,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(30.3,24.9,67.3),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(30.3,-24.9,67.3),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-80.3,43.3,-26.8),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-80.3,-43.3,-26.8),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-80.3,43.3,-26.8),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-80.3,-43.3,-26.8),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-122.3,27,-12.2),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(-122.3,-27,-12.2),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(58.6,49.8,31.9),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-122.3,27,-16.5),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(58.6,-49.8,31.9),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-122.3,-27,-16.5),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	},
}
list.Set( "simfphys_lights", "ats_cat_938g", light_table)