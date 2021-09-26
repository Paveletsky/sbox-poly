local V = {
	Name = "Chevrolet Express",
	Model = "models/ats/vehicles/chevan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2461,
		
		EnginePos = Vector(125,0,-1),
		
		LightsTable = "ats_chevan",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad.mdl",
		
		CustomWheelPosFL = Vector(84.18,37.22,-22),
		CustomWheelPosFR = Vector(84.18,-37.22,-22),		
		CustomWheelPosRL = Vector(-74.84,37.22,-22),
		CustomWheelPosRR = Vector(-74.84,-37.22,-22),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(25,-23,37),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-103,-39.34,-25.87),
				ang = Angle(-90,65,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(35,-22,0),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 34000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 10,
		RearConstant = 34000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 4400,
		PeakTorque = 252,
		PowerbandStart = 2000,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-50.92,41.1,-6.5),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 117,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/van_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/van_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/van_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/van_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_03.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_chevan", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(120.75,36.31,2.29),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(120.75,-36.31,2.29),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-120.26,35.5,31.91),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-120.26,-35.5,31.91),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(120.75,36.31,2.29),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(120.75,-36.31,2.29),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(117.13,41.15,-7.64),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(117.13,-41.15,-7.64),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(126.25,28.68,2.5),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(126.25,-28.68,2.5),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-120.26,35.5,31.91),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-120.26,-35.5,31.91),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-120.26,35.5,31.91),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-120.26,-35.5,31.91),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-118,0,51),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-121.49,36.34,27.7),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-121.49,-36.34,27.7),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(125.64,37,-7.41),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-122.25,36.58,23.95),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(125.64,-37,-7.41),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-122.25,-36.58,23.95),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_chevan", light_table)