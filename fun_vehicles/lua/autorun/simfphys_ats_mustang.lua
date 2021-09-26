local V = {
	Name = "Ford Mustang MkV",
	Model = "models/ats/vehicles/mustang.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1564,
		
		EnginePos = Vector(98.9,7.49),
		
		LightsTable = "ats_mustang",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in.mdl",
		
		CustomWheelPosFL = Vector(68.11,33.7,-8),
		CustomWheelPosFR = Vector(68.11,-33.7,-8),	
		CustomWheelPosRL = Vector(-44.16,33.7,-8),
		CustomWheelPosRR = Vector(-44.16,-33.7,-8),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-5,-16,23),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(4,-17,-9),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-27,14,-9),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-27,-14,-9),
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
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 45,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5750,
		PeakTorque = 250,
		PowerbandStart = 2700,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-59.56,34.29,16.34),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 60,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sport_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_02_low.wav",
		Sound_MidPitch = 1.8,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 43,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_02_high.wav",
		Sound_HighPitch = 0.9,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 37,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_02_throttle.wav",
		Sound_ThrottlePitch = 0.75,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_09.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.075,0,0.075,0.17,0.29,0.41,0.58}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mustang", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(90.34,29.19,6.23),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(90.34,-29.19,6.23),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-85.72,18.66,13.43),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-85.72,-18.66,13.43),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(90.34,29.19,6.23),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(90.34,-29.19,6.23),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(99.64,14.44,6.92),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(99.64,-14.44,6.92),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-85.72,18.66,13.43),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.72,-18.66,13.43),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-84.58,23.14,12.98),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-84.58,-23.14,12.98),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-84.46,0,19.76),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-86.15,18.45,8.57),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-86.15,-18.45,8.57),
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
				pos = Vector(94.85,31.26,-1.84),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-83.28,27.65,13.13),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(94.85,-31.26,-1.84),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-83.28,-27.65,13.13),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_mustang", light_table)