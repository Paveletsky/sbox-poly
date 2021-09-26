local V = {
	Name = "Mercedes-Benz C Class Wagon",
	Model = "models/ats/vehicles/mercedes_ce.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1589,
		
		EnginePos = Vector(89,0,6),
		
		LightsTable = "ats_mercedes_ce",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/19in_lowprofile.mdl",
		
		CustomWheelPosFL = Vector(63.3,31.91,-8),
		CustomWheelPosFR = Vector(63.3,-31.91,-8),	
		CustomWheelPosRL = Vector(-51.8,31.91,-8),
		CustomWheelPosRR = Vector(-51.8,-31.91,-8),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-10,-14,24),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-92.55,22.46,-7.65),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-92.55,-22.46,-7.65),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(5,-15,-8),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-33,15,-8),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-33,-15,-8),
				ang = Angle(0,-90,15)
			},
		},
		
		
		FrontHeight = 7,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 7,
		RearConstant = 30000,
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
		LimitRPM = 6000,
		PeakTorque = 280,
		PowerbandStart = 2400,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-73,-35,12),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sport_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_01_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_04.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58,0.67,0.8}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mercedes_ce", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(85.42,28.29,7.25),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(85.42,-28.29,7.25),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-90.25,27.85,8.21),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-90.25,-27.85,8.21),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(85.42,28.29,7.25),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(85.42,-28.29,7.25),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(87.8,23.49,6.16),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(87.8,-23.49,6.16),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(88.5,26.1,-5),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(88.5,-26.1,-5),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-90.25,27.85,8.21),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-90.25,-27.85,8.21),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-80.21,0,34.91),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-79.43,9.14,34.87),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-79.43,-9.14,34.87),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-87.82,31.05,11.64),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-87.82,-31.05,11.64),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(81,32.22,8.54),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-87.42,31.36,15.86),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(81,-32.22,8.54),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-87.42,-31.36,15.86),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_mercedes_ce", light_table)