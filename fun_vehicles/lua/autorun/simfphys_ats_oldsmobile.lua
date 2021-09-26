local V = {
	Name = "Oldsmobile 88",
	Model = "models/ats/vehicles/oldsmobile.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1591,
		
		EnginePos = Vector(97.13,0,7.6),
		
		LightsTable = "ats_oldsmobile",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/16in_mercury.mdl",
		
		CustomWheelPosFL = Vector(65.2,32.74,-3),
		CustomWheelPosFR = Vector(65.2,-32.74,-3),	
		CustomWheelPosRL = Vector(-62.23,30.85,-3),
		CustomWheelPosRR = Vector(-62.23,-30.85,-3),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-11,-15,29),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-109.78,23.32,-7.48),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-109.78,-23.32,-7.48),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(2,-15,-2),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,18,-2),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,0,-2),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,-18,-2),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 8,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 8,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 50,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 35,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3600,
		PeakTorque = 300,
		PowerbandStart = 1700,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-62.36,36.4,20.46),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 68,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_02_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_02_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_04.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.06,0,0.075,0.17,0.29}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_oldsmobile", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(99.87,32.54,13.7),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(99.87,-32.54,13.7),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-97.94,32.23,17.98),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-97.94,-32.23,17.98),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(99.87,32.54,13.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(99.87,-32.54,13.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(99.87,32.54,13.7),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(99.87,-32.54,13.7),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-97.94,32.23,17.98),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-97.94,-32.23,17.98),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-97.94,32.23,17.98),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-97.94,-32.23,17.98),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(98.74,32.5,6.29),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-97.94,32.23,17.98),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(98.74,-32.5,6.29),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-97.94,-32.23,17.98),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_oldsmobile", light_table)