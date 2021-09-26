local V = {
	Name = "Freightliner Sprinter RV",
	Model = "models/ats/vehicles/solera.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 3791,
		
		EnginePos = Vector(142,0,-11),
		
		LightsTable = "ats_solera",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_3.mdl",
		
		CustomWheelPosFL = Vector(112,37.71,-34),
		CustomWheelPosFR = Vector(112,-37.71,-34),		
		CustomWheelPosRL = Vector(-54.84,43.89,-34),
		CustomWheelPosRR = Vector(-54.84,-43.89,-34),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(60,-21,30),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(70,-21,-15),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 11,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 11,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 115,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5650,
		PeakTorque = 250,
		PowerbandStart = 2000,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-14,50.23,-25),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 300,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_05.wav",
		
		DifferentialGear = 0.25,
		Gears = {-0.055,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_solera", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(138.94,33.18,-9.82),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(138.94,-33.18,-9.82),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-127,38.29,-13.47),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-127,-38.29,-13.47),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(138.94,33.18,-9.82),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(138.94,-33.18,-9.82),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(56.27,0,84.18),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(56.27,14.35,84.18),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(56.27,-14.35,84.18),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(140.74,26.22,-14.29),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(140.74,-26.22,-14.29),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-127,38.29,-13.47),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-127,-38.29,-13.47),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-126.91,0,70.38),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-126.91,9.96,70.38),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-126.91,-9.96,70.38),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-126.91,42.21,70.38),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-126.91,-42.21,70.38),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-127,38.29,-13.47),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-127,-38.29,-13.47),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-127,26.55,-13.47),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-127,-26.55,-13.47),
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
				pos = Vector(134.23,37.31,-3.36),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-127,32.21,-12.87),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(134.23,-37.31,-3.36),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-127,-32.21,-12.87),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_solera", light_table)