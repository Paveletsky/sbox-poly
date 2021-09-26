local V = {
	Name = "Tesla Model S",
	Model = "models/ats/vehicles/tesla.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2241,
		
		EnginePos = Vector(0,0,0),
		
		LightsTable = "ats_tesla",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in.mdl",
		
		CustomWheelPosFL = Vector(65.91,35.82,-8),
		CustomWheelPosFR = Vector(65.91,-35.82,-8),	
		CustomWheelPosRL = Vector(-63,35.82,-8),
		CustomWheelPosRR = Vector(-63,-35.82,-8),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-10,-15.85,23),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(0,-15,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-40,18,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-40,0,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-40,-18,-10),
				ang = Angle(0,-90,15)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 10,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 10000,
		PeakTorque = 931,
		PowerbandStart = 3000,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-64,36.6,16),
		FuelType = FUELTYPE_ELECTRIC,
		FuelTankSize = 250,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/electric_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/electric_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/electric_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/electric_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 5,
		
		snd_horn = "ats/vehicles/horns/horn_car_07.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.4,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_tesla", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(86.65,31,7),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(86.65,-31,7),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-95,20,15.6),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-95,-20,15.6),
	R_RearLampAng = Angle(25,180,0),
	
	ModernLights = true,
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(86.65,31,7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(86.65,-31,7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(90.89,27,6.54),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(90.89,-27,6.54),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(94.26,30.5,-10.73),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(94.26,-30.5,-10.73),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-89.78,31.63,15.66),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-89.78,-31.63,15.66),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-89.78,31.63,15.66),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-89.78,-31.63,15.66),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-97.1,18.65,15.33),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-97.1,-18.65,15.33),
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
				pos = Vector(84.37,34.81,7.59),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-83.7,34.6,14.43),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(84.37,-34.81,7.59),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-83.7,-34.6,14.43),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_tesla", light_table)