local V = {
	Name = "Ford Taurus",
	Model = "models/ats/vehicles/ford_taurus_civil.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,30),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1800,
		
		EnginePos = Vector(105,0,-7),
		
		LightsTable = "ats_ford_taurus",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_1.mdl",
		
		CustomWheelPosFL = Vector(70.16,33.6,-21),
		CustomWheelPosFR = Vector(70.16,-33.6,-21),	
		CustomWheelPosRL = Vector(-51.6,33.6,-21),
		CustomWheelPosRR = Vector(-51.6,-33.6,-21),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(8,-15.85,14),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-96.1,23.98,-19),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-96.1,-23.98,-19),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(18,-15,-21),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-20,18,-21),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-18,-21),
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
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 6500,
		PeakTorque = 300,
		PowerbandStart = 3000,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-64,-36.6,6),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_01_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_01_high.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_02.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ford_taurus", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(98.53,27.95,-4),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(98.53,-27.95,-4),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-93.17,27.33,4.84),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-93.17,-27.33,4.84),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(98.53,27.95,-4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(98.53,-27.95,-4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(104.75,24,-2.83),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(104.75,-24,-2.83),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-93.17,27.33,4.84),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-93.17,-27.33,4.84),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-47.31,0,23.81),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-95.65,22.48,3.39),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-95.65,-22.48,3.39),
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
				pos = Vector(91.24,34.93,-2.83),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-93.17,27.33,4.84),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(91.24,-34.93,-2.83),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-93.17,-27.33,4.84),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_ford_taurus", light_table)