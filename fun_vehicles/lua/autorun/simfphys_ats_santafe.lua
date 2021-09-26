local V = {
	Name = "Hyundai Santa Fe Sport",
	Model = "models/ats/vehicles/santafe.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1568,
		
		EnginePos = Vector(96,0,0),
		
		LightsTable = "ats_santafe",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/santafe.mdl",
		
		CustomWheelPosFL = Vector(64,34.17,-14),
		CustomWheelPosFR = Vector(64,-34.17,-14),	
		CustomWheelPosRL = Vector(-49.76,34.42,-14),
		CustomWheelPosRR = Vector(-49.76,-34.42,-14),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-2,-18,24),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-89.82,-20.83,-13.82),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(10,-18,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,20,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,0,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-20,-7),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 10,
		FrontConstant = 24000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 10,
		RearConstant = 24000,
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
		LimitRPM = 6300,
		PeakTorque = 245,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-55,39.3,16),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_07.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_santafe", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(87.7,30.3,6.83),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(87.7,-30.3,6.83),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-85.62,24.81,16.78),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-85.62,-24.81,16.78),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(87.7,30.3,6.83),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(87.7,-30.3,6.83),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(92.16,25.64,6.98),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(92.16,-25.64,6.98),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(94.38,30.23,-5.89),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(94.38,-30.23,-5.89),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-85.62,24.81,16.78),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.62,-24.81,16.78),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-72.12,0,36.18),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-86,23.62,14.62),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-86,-23.62,14.62),
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
				pos = Vector(82.55,34.86,7.7),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
			pos = Vector(-79.81,30.92,17.34),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(82.55,-34.86,7.7),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
			pos = Vector(-79.81,-30.92,17.34),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_santafe", light_table)