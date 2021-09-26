local V = {
	Name = "Audi A6",
	Model = "models/ats/vehicles/audi_a6.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2260,
		
		GibModels = {
			"models/ats/vehicles/audi_a6_c.mdl",
			"models/ats/vehicles/audi_a6_c_gib1.mdl",
			"models/ats/vehicles/audi_a6_c_gib2.mdl",
			"models/ats/vehicles/audi_a6_c_gib3.mdl",
		},
		
		EnginePos = Vector(97.9,0,0.6),
		
		LightsTable = "ats_audi_a6",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/19in_lowprofile.mdl",
		
		CustomWheelPosFL = Vector(59.6,30.7,-2),
		CustomWheelPosFR = Vector(59.6,-30.7,-2),	
		CustomWheelPosRL = Vector(-59.25,31.2,-2),
		CustomWheelPosRR = Vector(-59.25,-31.2,-2),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-7,-15.85,27),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-102.3,23.7,-4.4),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-102.3,-23.7,-4.4),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(2,-15,-5),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-35,15,-5),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-35,-15,-5),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 14,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 50,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5750,
		PeakTorque = 280,
		PowerbandStart = 2400,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-69,37,17),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 80,
		
		PowerBias = 0,
		
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
		
		snd_horn = "ats/vehicles/horns/horn_car_02.wav",
		
		DifferentialGear = 0.42,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_audi_a6", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(85.9,27.4,11.1),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(85.9,-27.4,11.1),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-136,39,30.5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-136,-39,30.5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(85.9,27.4,11.1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(85.9,-27.4,11.1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(90.8,22.7,10.8),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(90.8,-22.7,10.8),size = 100,material = "sprites/light_ignorez"},
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
			pos = Vector(-92.1,32,18.1),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-98.2,25.9,18.1),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92.1,-32,18.1),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-98.2,-25.9,18.1),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-100,19.5,18.1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100,-19.5,18.1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-95.7,29.5,18.1),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-95.7,-29.5,18.1),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-100,19.5,18.1),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-100,-19.5,18.1),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-98.2,25.9,18.1),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-98.2,-25.9,18.1),
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
				pos = Vector(83.7,31.8,10.7),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(43,37.1,13.7),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-95.7,29.5,18.1),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(83.7,-31.8,10.7),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(43,-37.1,13.7),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-95.7,-29.5,18.1),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_audi_a6", light_table)