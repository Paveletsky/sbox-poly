local V = {
	Name = "Chevrolet Caprice PPV",
	Model = "models/ats/vehicles/capr_civil.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1834,
		
		EnginePos = Vector(99.85,-0.32,-6.27),
		
		LightsTable = "ats_capr_civil",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in.mdl",
		
		CustomWheelPosFL = Vector(67.94,34.21,-21),
		CustomWheelPosFR = Vector(67.94,-34.76,-21),	
		CustomWheelPosRL = Vector(-58.79,34.38,-21),
		CustomWheelPosRR = Vector(-58.79,-34.68,-21),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-8,-16,10),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-105.81,22.77,-20.94),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-105.81,-23.37,-20.94),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(5,-16,-20),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,18,-20),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,0,-20),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,-18,-20),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 8,
		FrontConstant = 33000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 8,
		RearConstant = 33000,
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
		LimitRPM = 7200,
		PeakTorque = 220,
		PowerbandStart = 3500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-78.72,35.05,3.67),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 72,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_03_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 0.7,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_01.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.07,0,0.075,0.17,0.29,0.41,0.58,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_capr_civil", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(92.88,27.13,-5.47),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(92.88,-27.77,-5.47),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-103.23,27.7,3),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-103.23,-28.33,3),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(92.88,27.13,-5.47),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(92.88,-27.77,-5.47),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(96.51,21.32,-5.92),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(96.51,-21.95,-5.92),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-103.23,27.7,3),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-103.23,-28.33,3),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-103.23,27.7,3),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-103.23,-28.33,3),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-49.9,-0.32,24.22),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-103.97,25.12,-1.36),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-103.97,-25.76,-1.36),
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
				pos = Vector(86.95,32.33,-3.63),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(88.1,33.91,-13.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-103.25,28.79,-1.37),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(86.95,-32.66,-3.63),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(88.1,-34.43,-13.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-103.25,-30.2,-1.37),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_capr_civil", light_table)