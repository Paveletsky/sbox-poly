local V = {
	Name = "Lincoln Navigator",
	Model = "models/ats/vehicles/lincoln_navigator.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2752,
		
		EnginePos = Vector(113,0,7),
		
		LightsTable = "ats_lincoln_navigator",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad.mdl",
		
		CustomWheelPosFL = Vector(79.58,36.53,-14),
		CustomWheelPosFR = Vector(79.58,-36.53,-14),	
		CustomWheelPosRL = Vector(-47,36.54,-14),
		CustomWheelPosRR = Vector(-47,-36.54,-14),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(10,-21,30),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-92.3,-28.5,-14.6),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(23,-18,-5),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-18,22,-2),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-18,0,-2),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-18,-22,-2),
				ang = Angle(0,-90,0)
			},
		},
		
		FrontHeight = 11,
		FrontConstant = 34000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 11,
		RearConstant = 34000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5000,
		PeakTorque = 280,
		PowerbandStart = 2200,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-52,38,17),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 105,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_03_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_07.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.06,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_lincoln_navigator", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(106.84,31.62,9.2),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(106.84,-31.62,9.2),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-90.97,30.89,17.82),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-90.97,-30.89,17.82),
	R_RearLampAng = Angle(25,180,0),
	
	ModernLights = true,
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(106.84,31.62,9.2),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(106.84,-31.62,9.2),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(109.37,27.62,10.17),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(109.37,-27.62,10.17),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(110.85,32.18,-7.8),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(112.11,30.15,-7.8),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(113.31,27.84,-7.8),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(110.85,-32.18,-7.8),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(112.11,-30.15,-7.8),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(113.31,-27.84,-7.8),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(227,242,255,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-90.97,30.89,17.82),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91.35,24.71,17.82),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91.75,18.27,17.82),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92,11.84,18),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92,5.84,18),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92,0,18),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		--
		{
			pos = Vector(-90.97,-30.89,17.82),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91.35,-24.71,17.82),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91.75,-18.27,17.82),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92,-11.84,18),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92,-5.84,18),
			material = "sprites/light_ignorez",
			size = 45,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-90.55,35.72,16.24),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-90.55,-35.72,16.24),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-80.67,0,45.87),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-90.91,30.38,14.12),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-90.91,-	30.38,14.12),
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
				pos = Vector(101.96,36.59,7.53),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-90.41,36.94,14.81),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(101.96,-36.59,7.53),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-90.41,-36.94,14.81),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_lincoln_navigator", light_table)