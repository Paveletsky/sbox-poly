local V = {
	Name = "Chevrolet Advance-Design 3100",
	Model = "models/ats/vehicles/3100p.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1168,
		
		EnginePos = Vector(110,0,9),
		
		LightsTable = "ats_3100p",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in_cadillac.mdl",
		
		CustomWheelPosFL = Vector(83.47,35.55,-6),
		CustomWheelPosFR = Vector(83.47,-35.55,-6),	
		CustomWheelPosRL = Vector(-48.42,35.52,-6),
		CustomWheelPosRR = Vector(-48.42,-35.52,-6),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(6,-16,40),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(19,-15,5),
				ang = Angle(0,-90,7)
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
		LimitRPM = 3300,
		PeakTorque = 239,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(52,33.4,16.35),
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
		
		snd_horn = "ats/vehicles/horns/horn_van_01.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.07,0,0.075,0.17,0.29}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_3100p", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(108.88,36.58,13.03),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(108.88,-36.58,13.03),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-92.55,30.4,5.88),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-92.55,-30.4,5.88),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(108.88,36.58,13.03),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(108.88,-36.58,13.03),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(108.88,36.58,13.03),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(108.88,-36.58,13.03),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-92.55,30.4,5.88),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-92.55,-30.4,5.88),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-94.73,30.53,1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-94.73,-30.53,1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-94.73,30.53,1),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-94.73,-30.53,1),
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
				pos = Vector(107.22,21.96,10.12),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-92.55,30.4,5.88),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(107.22,-21.96,10.12),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-92.55,-30.4,5.88),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_3100p", light_table)