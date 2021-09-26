local V = {
	Name = "Chevrolet Volt",
	Model = "models/ats/vehicles/volt.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1383,
		
		EnginePos = Vector(100,0,0),
		
		LightsTable = "ats_volt",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in.mdl",
		
		CustomWheelPosFL = Vector(68.34,33.45,-10),
		CustomWheelPosFR = Vector(68.34,-33.45,-10),	
		CustomWheelPosRL = Vector(-48.26,33.45,-10),
		CustomWheelPosRR = Vector(-48.26,-33.45,-10),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(6,-16,24),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(20,-17,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-26,18,-11),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-26,0,-11),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-26,-18,-11),
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
		LimitRPM = 7500,
		PeakTorque = 600,
		PowerbandStart = 3000,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-50,32.5,19),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 34,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/electric_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/electric_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.5,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 0.7,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.5,
		
		Sound_Throttle = "ats/vehicles/sedan_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_03.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.4,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_volt", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(95.56,29.26,5.84),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(95.56,-29.26,5.84),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-76.73,27.65,14),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-76.73,-27.65,14),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(95.56,29.26,5.84),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(95.56,-29.26,5.84),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(98.61,24.56,4.84),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(98.61,-24.56,4.84),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(96.22,33.22,-4.85),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(96.22,-33.22,-4.85),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-76.73,27.65,14),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-76.73,-27.65,14),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-76.73,27.65,14),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-76.73,-27.65,14),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-75.73,26.59,16.92),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-75.73,-26.59,16.92),
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
				pos = Vector(87,33.69,9.21),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-74.35,30.77,16.99),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(87,-33.69,9.21),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-74.35,-30.77,16.99),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_volt", light_table)