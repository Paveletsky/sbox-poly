local V = {
	Name = "GMC Sierra",
	Model = "models/ats/vehicles/sierra.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2175,
		
		EnginePos = Vector(118,0,6),
		
		LightsTable = "ats_sierra",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad.mdl",
		
		CustomWheelPosFL = Vector(84.24,37.37,-13),
		CustomWheelPosFR = Vector(84.24,-37.37,-13),	
		CustomWheelPosRL = Vector(-66.14,37.37,-13),
		CustomWheelPosRR = Vector(-66.14,-37.37,-13),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(20,-17,30),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-105.91,-42,-38.79),
				ang = Angle(-90,90,0),
			},
		},
		PassengerSeats = {
			{
				pos = Vector(30,-18,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-10,19,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-10,-19,-7),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 12,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 12,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 85,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5600,
		PeakTorque = 320,
		PowerbandStart = 2200,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-36,40,-7),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 98,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_03_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_03_high.wav",
		Sound_HighPitch = 0.7,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_03.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.08,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_sierra", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(112.62,32,11.24),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(112.62,-32,11.24),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-109.19,36.56,9.16),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-109.19,-36.56,9.16),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(112.62,32,11.24),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(112.62,-32,11.24),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(114.6,26.36,12.15),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(114.6,26.36,7.93),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(114.6,-26.36,12.15),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(114.6,-26.36,7.93),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(112.62,32,6.48),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(112.62,-32,6.48),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(112.1,32.28,-11.75),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(112.1,-32.28,-11.75),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-109.19,36.56,9.16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-109.19,-36.56,9.16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-109.19,36.56,15.21),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-109.19,-36.56,15.21),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-28.31,0,41.26),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-109.19,36.56,3.78),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-109.19,-36.56,3.78),
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
				pos = Vector(109.86,36.73,9.18),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-109.28,37.34,12.19),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(109.86,-36.73,9.18),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-109.28,-37.34,12.19),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_sierra", light_table)