local V = {
	Name = "Ford Mustang MkVI",
	Model = "models/ats/vehicles/mustang_2015.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1680,
		
		EnginePos = Vector(92.67,0,3.94),
		
		LightsTable = "ats_mustang_2015",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/19in_lowprofile.mdl",
		
		CustomWheelPosFL = Vector(60,32.72,-8),
		CustomWheelPosFR = Vector(60,-32.72,-8),	
		CustomWheelPosRL = Vector(-53.8,33.67,-8),
		CustomWheelPosRR = Vector(-53.8,-33.67,-8),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-17,-17,20),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-93.91,25.37,-10.86),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-93.91,-25.37,-10.86),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(-6,-18,-12),
				ang = Angle(0,-90,15)
			},
		},
		
		FrontHeight = 9,
		FrontConstant = 32000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 9,
		RearConstant = 32000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 50,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5750,
		PeakTorque = 275,
		PowerbandStart = 2700,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-57.48,36.66,15.86),
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
		
		snd_horn = "ats/vehicles/horns/horn_car_02.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mustang_2015", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(80.87,31.29,6.64),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(80.87,-31.29,6.64),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-93.67,21.12,10.99),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-93.67,-21.12,10.99),
	R_RearLampAng = Angle(25,180,0),
	
	ModernLights = true,
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(80.87,31.29,6.64),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(80.87,-31.29,6.64),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(80.87,31.29,6.64),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(80.87,-31.29,6.64),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(86.27,28,-7.83),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(86.27,-28,-7.83),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-93.67,21.12,10.99),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92.97,24.37,10.84),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-90.79,28.93,10.84),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-93.67,-21.12,10.99),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92.97,-24.37,10.84),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-90.79,-28.93,10.84),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-94.72,3.93,17.79),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-94.72,-3.93,17.79),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-98.8,0,-9.34),
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
				pos = Vector(92,24.73,-4.79),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-93.67,21.12,10.99),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
			{
				pos = Vector(-92.97,24.37,10.84),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
			{
				pos = Vector(-90.79,28.93,10.84),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(92,-24.73,-4.79),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {	
			{
				pos = Vector(-93.67,-21.12,10.99),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
			{
				pos = Vector(-92.97,-24.37,10.84),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
			{
				pos = Vector(-90.79,-28.93,10.84),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_mustang_2015", light_table)