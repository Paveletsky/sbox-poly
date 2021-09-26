local V = {
	Name = "Ford Explorer",
	Model = "models/ats/vehicles/ford_explorer_civil.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,30),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2010,
		
		EnginePos = Vector(90,0,-2),
		
		LightsTable = "ats_ford_explorer_civil",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_3.mdl",
		
		CustomWheelPosFL = Vector(56.22,36.27,-23),
		CustomWheelPosFR = Vector(56.22,-36.27,-23),	
		CustomWheelPosRL = Vector(-64.79,37,-23),
		CustomWheelPosRR = Vector(-64.79,-37,-23),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-9,-20,15),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-110.1,22.6,-21.9),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-110.1,-22.6,-21.9),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(3,-20,-16),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-40,20,-16),
				ang = Angle(0,-90,12)
			},
			{
				pos = Vector(-40,0,-16),
				ang = Angle(0,-90,12)
			},
			{
				pos = Vector(-40,-20,-16),
				ang = Angle(0,-90,12)
			},
		},
		
		
		FrontHeight = 12,
		FrontConstant = 24000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 12,
		RearConstant = 24000,
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
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-66,40,7),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 70,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_01_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_09.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.065,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ford_explorer_civil", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(78.47,32.12,1.7),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(78.47,-32.12,1.7),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-100.91,35.46,8),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-100.91,-35.46,8),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(78.47,32.12,1.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(78.47,-32.12,1.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(82.44,26.62,1.25),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(82.44,-26.62,1.25),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(85.23,32,-8.74),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(82.46,34.41,-8.78),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(82.43,35.1,-11.28),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(83.91,34.2,-13.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(86.34,32,-13.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		--
		{
			pos = Vector(85.23,-32,-8.74),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(82.46,-34.41,-8.78),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(82.43,-35.1,-11.28),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(83.91,-34.2,-13.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(86.34,-32,-13.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-103.32,32.16,4.29),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.91,35.46,8),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-93.53,36.53,8.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-103.32,-32.16,4.29),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.91,-35.46,8),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-93.53,-36.53,8.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-104.75,29.63,4.29),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-104.75,-29.63,4.29),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-103.95,30.9,7.43),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-103.32,32.16,4.29),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-103.95,-30.9,7.43),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-103.32,-32.16,4.29),
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
				pos = Vector(25.28,46.75,11.18),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(72.28,34.96,1.52),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(85.79,26,-1.79),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(75.88,35.19,-0.9),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-102.27,34.85,7.67),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-104.75,29.63,4.29),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(25.28,-46.75,11.18),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(72.28,-34.96,1.52),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(85.79,-26,-1.79),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(75.88,-35.19,-0.9),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-102.27,-34.85,7.67),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-104.75,-29.63,4.29),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_ford_explorer_civil", light_table)