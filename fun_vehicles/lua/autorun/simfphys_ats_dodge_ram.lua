local V = {
	Name = "Dodge Ram 2500",
	Model = "models/ats/vehicles/dodge_ram.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,30),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2834,
		
		EnginePos = Vector(116,0,15),
		
		LightsTable = "ats_dodge_ram",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_offroad.mdl",
		
		CustomWheelPosFL = Vector(82.27,36.95,-15),
		CustomWheelPosFR = Vector(82.27,-36.95,-15),	
		CustomWheelPosRL = Vector(-66,36.96,-15),
		CustomWheelPosRR = Vector(-66,-36.96,-15),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(15,-21,40),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-99.1,-37.57,-13.61),
				ang = Angle(-90,65,0),
			},
		},
		PassengerSeats = {
			{
				pos = Vector(34,-20,4),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-4,-21,4),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-4,0,4),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-4,21,4),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 40000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 10,
		RearConstant = 40000,
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
		LimitRPM = 5600,
		PeakTorque = 300,
		PowerbandStart = 2300,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-25,40,7),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 117,
		
		PowerBias = 0,
		
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
		
		snd_horn = "ats/vehicles/horns/horn_car_02.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.06,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_dodge_ram", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(112.78,31.32,16.29),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(112.78,-31.32,16.29),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-109.76,36.74,18.85),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-109.76,-36.74,18.85),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(112.78,31.32,16.29),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(112.78,-31.32,16.29),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(111.76,29.95,11.81),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(111.76,-29.95,11.81),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(110.74,35.92,0.28),
			material = "sprites/light_ignorez",
			size = 35,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(113.49,32.42,0.39),
			material = "sprites/light_ignorez",
			size = 35,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(110.74,-35.92,0.28),
			material = "sprites/light_ignorez",
			size = 35,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(113.49,-32.42,0.39),
			material = "sprites/light_ignorez",
			size = 35,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-109.76,36.74,18.85),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-109.76,-36.74,18.85),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-109.76,36.74,18.85),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-109.76,-36.74,18.85),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-109.76,36.74,18.85),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-109.76,-36.74,18.85),
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
				pos = Vector(103.95,36.23,16),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-112.27,33.64,19),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(103.95,-36.23,16),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-112.27,-33.64,19),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_dodge_ram", light_table)