local V = {
	Name = "Toyota Prius",
	Model = "models/ats/vehicles/prius.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1383,
		
		EnginePos = Vector(88,0,3),
		
		LightsTable = "ats_prius",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in.mdl",
		
		CustomWheelPosFL = Vector(54.41,32.42,-9),
		CustomWheelPosFR = Vector(54.41,-32.42,-9),	
		CustomWheelPosRL = Vector(-58.6,32.39,-9),
		CustomWheelPosRR = Vector(-58.6,-32.39,-9),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-4,-15.85,25),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-89.7,-17.6,-12.9),
				ang = Angle(-145,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(4,-15,-10),
				ang = Angle(0,-90,15)
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
		LimitRPM = 5000,
		PeakTorque = 600,
		PowerbandStart = 3000,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-67,32.5,19),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 42,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/electric_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/electric_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.5,
		
		Sound_High = "ats/vehicles/hatch_high.wav",
		Sound_HighPitch = 0.9,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.5,
		
		Sound_Throttle = "ats/vehicles/sedan_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_small_02.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.4,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_prius", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(77.67,29.77,8.75),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(77.67,-29.77,8.75),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-86.78,27.94,21.59),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-86.78,-27.94,21.59),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(77.67,29.77,8.75),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(77.67,-29.77,8.75),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(85,24.2,7.23),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(85,-24.2,7.23),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(85.43,30.74,-7.24),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(85.43,-30.74,-7.24),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-86.78,27.94,21.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-86.78,-27.94,21.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-86.78,27.94,21.59),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-86.78,-27.94,21.59),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-87.18,27.81,17.44),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-87.18,-27.81,17.44),
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
				pos = Vector(72.49,34,10.74),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(84.97,31.25,-2.8),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-87.18,27.81,17.4),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(72.49,-34,10.74),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(84.97,-31.25,-2.8),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-87.18,-27.81,17.4),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_prius", light_table)