local V = {
	Name = "Yamaha Wolverine",
	Model = "models/ats/vehicles/wolverine.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 750,
		
		EnginePos = Vector(46,0,6),
		
		LightsTable = "ats_wolverine",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/buggy.mdl",
		
		CustomWheelPosFL = Vector(47.78,26.84,-12),
		CustomWheelPosFR = Vector(47.78,-26.84,-12),		
		CustomWheelPosRL = Vector(-39.48,26.84,-12),
		CustomWheelPosRR = Vector(-39.48,-26.84,-12),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-17,-15,30),
		SeatPitch = 15,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-50.94,-18.76,3.74),
				ang = Angle(-120,75,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(-4,-15,0),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 5,
		FrontConstant = 20000,
		FrontDamping = 700,
		FrontRelativeDamping = 1000,
		
		RearHeight = 5,
		RearConstant = 20000,
		RearDamping = 700,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 45,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 20,
		BulletProofTires = false,
		
		IdleRPM = 900,
		LimitRPM = 3600,
		PeakTorque = 150,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(55,0,14),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 40,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/atv_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/atv_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/atv_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/atv_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_small_02.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.1,0,0.07,0.16,0.25,0.38}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_wolverine", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(54.78,14.31,9.39),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(54.78,-14.31,9.39),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-56.43,24.35,16.26),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-56.43,-24.35,16.26),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(54.78,14.31,9.39),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(54.78,-14.31,9.39),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(54.78,14.31,9.39),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(54.78,-14.31,9.39),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-56.43,24.35,16.26),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-56.43,-24.35,16.26),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(52.22,19.1,12.47),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-56.43,24.35,16.26),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(52.22,-19.1,12.47),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-56.43,-24.35,16.26),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	},
}
list.Set( "simfphys_lights", "ats_wolverine", light_table)