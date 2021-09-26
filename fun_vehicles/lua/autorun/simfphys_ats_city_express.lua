local V = {
	Name = "Chevrolet City Express",
	Model = "models/ats/vehicles/city_express.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2155,
		
		EnginePos = Vector(100,0,9),
		
		LightsTable = "ats_city_express",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_7.mdl",
		
		CustomWheelPosFL = Vector(66.78,30.71,-13),
		CustomWheelPosFR = Vector(66.78,-30.71,-13),		
		CustomWheelPosRL = Vector(-57.19,30.71,-13),
		CustomWheelPosRR = Vector(-57.19,-30.71,-13),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(11,-17,35),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-103,-39.34,-25.87),
				ang = Angle(-90,65,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(24,-16,-1),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 34000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 10,
		RearConstant = 34000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5200,
		PeakTorque = 225,
		PowerbandStart = 1800,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(3,34.53,-4),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 54,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_01_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_01_high.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_small_01.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_city_express", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(99.6,23.19,11.85),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(99.6,-23.19,11.85),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-88.12,31.57,10.76),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-88.12,-31.57,10.76),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(99.6,23.19,11.85),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(99.6,-23.19,11.85),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(99.6,23.19,11.85),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(99.6,-23.19,11.85),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-88.12,31.57,10.76),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-88.12,-31.57,10.76),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-87.93,31.57,9.45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-87.93,-31.57,9.45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.7,0,47.16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-88.15,31.57,1.46),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-88.15,-31.57,1.46),
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
				pos = Vector(91.19,30.13,12.89),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-87.81,31.57,3.78),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(91.19,-30.13,12.89),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-87.81,-31.57,3.78),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_city_express", light_table)