local V = {
	Name = "Cadillac ATS",
	Model = "models/ats/vehicles/ats.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1998,
		
		GibModels = {
			"models/ats/vehicles/ats_c.mdl",
			"models/ats/vehicles/ats_c_gib1.mdl",
		},
		
		EnginePos = Vector(96,0,7),
		
		LightsTable = "ats_ats",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_7.mdl",
		
		CustomWheelPosFL = Vector(70.18,33.17,-8),
		CustomWheelPosFR = Vector(70.18,-33.17,-8),	
		CustomWheelPosRL = Vector(-51,33.97,-8),
		CustomWheelPosRR = Vector(-51,-33.97,-8),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-3,-16,25),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-92,15.1,-10.83),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-92,-15.1,-10.83),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(8,-16,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-25,18,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-25,0,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-25,-18,-8),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 8,
		FrontConstant = 34000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 8,
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
		LimitRPM = 6300,
		PeakTorque = 280,
		PowerbandStart = 2400,
		PowerbandEnd = 5500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-69,37,17),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 60,
		
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
		Sound_HighPitch = 0.85,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_01.wav",
		
		DifferentialGear = 0.42,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ats", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(88.56,29.74,8.98),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(88.56,-29.74,8.98),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-85.86,31.91,15),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-85.86,-31.91,15),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(88.56,29.74,8.98),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(88.56,-29.74,8.98),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(88.56,29.74,8.98),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(88.56,-29.74,8.98),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(91.95,31.27,-4.97),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(91.95,-31.27,-4.97),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-85.86,31.91,15),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.86,-31.91,15),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-85.2,31.43,16.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.2,-31.43,16.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91.65,0,24.39),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91,6.97,24.39),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-91,-6.97,24.39),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-93.89,0,-8),
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
				pos = Vector(91,28.77,5.86),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-84.69,33.5,15.8),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(91,-28.77,5.86),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-84.69,-33.5,15.8),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_ats", light_table)