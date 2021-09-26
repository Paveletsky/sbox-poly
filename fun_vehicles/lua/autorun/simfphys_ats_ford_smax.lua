local V = {
	Name = "Ford S-Max",
	Model = "models/ats/vehicles/ford_smax.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,25),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1570,
		
		EnginePos = Vector(97,0,-11),
		
		LightsTable = "ats_ford_smax",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_3.mdl",
		
		CustomWheelPosFL = Vector(64.99,34.72,-25),
		CustomWheelPosFR = Vector(64.99,-34.72,-25),	
		CustomWheelPosRL = Vector(-62.17,34.72,-25),
		CustomWheelPosRR = Vector(-62.17,-34.72,-25),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-2,-18,15),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-96.8,22,-19.7),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-96.8,-22,-19.7),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(8,-18,-17),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-40,20,-17),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,0,-17),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-40,-20,-17),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 6,
		FrontConstant = 34000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 6,
		RearConstant = 34000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 45,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 6000,
		PeakTorque = 260,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-66,-39.3,8),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 70,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_09.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ford_smax", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(91.39,28.15,-6.42),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(91.39,-28.15,-6.42),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-94.3,31,10.25),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-94.3,-31,10.25),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(91.39,28.15,-6.42),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(91.39,-28.15,-6.42),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(87,32.43,-4.9),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(87,-32.43,-4.9),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(93.65,28.45,-23.73),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(93.65,-28.45,-23.73),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-94.3,31,10.25),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-94.3,-31,10.25),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-91.6,32.85,11.58),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91.6,-32.85,11.58),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-96.48,26.85,10.25),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-96.48,-26.85,10.25),
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
				pos = Vector(93.8,26.58,-6.92),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-92.75,32.78,9.19),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(93.8,-26.58,-6.92),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-92.75,-32.78,9.19),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_ford_smax", light_table)