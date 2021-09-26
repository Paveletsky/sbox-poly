local V = {
	Name = "Honda Accord",
	Model = "models/ats/vehicles/accord.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1519,
		
		GibModels = {
			"models/ats/vehicles/accord_c.mdl",
			"models/ats/vehicles/accord_c_rear.mdl",
			"models/ats/vehicles/accord_c_gib1.mdl",
			"models/ats/vehicles/accord_c_gib2.mdl",
			"models/ats/vehicles/accord_c_gib3.mdl",
			"models/ats/vehicles/accord_c_gib4.mdl",
			"models/ats/vehicles/accord_c_gib5.mdl",
		},
		
		EnginePos = Vector(94,0,4.5),
		
		LightsTable = "ats_accord",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_7.mdl",
		
		CustomWheelPosFL = Vector(63.22,31.92,-9),
		CustomWheelPosFR = Vector(63.22,-31.92,-9),	
		CustomWheelPosRL = Vector(-55.81,32.34,-9),
		CustomWheelPosRR = Vector(-55.81,-32.34,-9),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-3,-15.85,23),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(6,-15,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,18,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,0,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,-18,-8),
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
		LimitRPM = 6500,
		PeakTorque = 218,
		PowerbandStart = 3000,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-64,36.6,16),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 70,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_01_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_01_high.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_06.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_accord", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(87.42,27.95,7.62),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(87.42,-27.95,7.62),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-95,20,15.6),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-95,-20,15.6),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(87.42,27.95,7.62),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(87.42,-27.95,7.62),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(92.68,22,6.35),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(92.68,-22,6.35),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(91.73,26.65,-8),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(91.73,-26.65,-8),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-95,20,15.6),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-95,-20,15.6),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-92.77,26,15.63),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92.77,-26,15.63),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-95,17.57,15.6),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-95,-17.57,15.6),
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
				pos = Vector(82.66,32,8.82),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-88.29,30,15.58),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(82.66,-32,8.82),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-88.29,-30,15.58),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_accord", light_table)