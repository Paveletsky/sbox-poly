local V = {
	Name = "Lincoln MKT",
	Model = "models/ats/vehicles/lincoln_mkt.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2241,
		
		EnginePos = Vector(111,0,1),
		
		LightsTable = "ats_lincoln_mkt",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_3.mdl",
		
		CustomWheelPosFL = Vector(75.93,35.65,-14),
		CustomWheelPosFR = Vector(75.93,-35.65,-14),	
		CustomWheelPosRL = Vector(-61.76,35.65,-14),
		CustomWheelPosRR = Vector(-61.76,-35.65,-14),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(13,-17,20),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-104.46,26.69,-14),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-104.46,-26.69,-14),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(22,-16,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-15,17,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-15,-17,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-53,11,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-53,-11,-12),
				ang = Angle(0,-90,15)
			},
		},
		
		
		FrontHeight = 9,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 9,
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
		LimitRPM = 5500,
		PeakTorque = 280,
		PowerbandStart = 2300,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-74,35,15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 70,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_01_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_06.wav",
		
		DifferentialGear = 0.42,
		Gears = {-0.07,0,0.075,0.17,0.29,0.41,0.58}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_lincoln_mkt", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(102.23,28.84,5.1),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(102.23,-28.84,5.1),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-100.74,15.37,15),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-100.74,-15.37,15),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(102.23,28.84,5.1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(102.23,-28.84,5.1),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(102.23,28.84,5.1),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(102.23,-28.84,5.1),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-101.29,11.38,15.2),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.74,15.37,15),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.25,20.51,15.11),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-99.32,25.57,15.25),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		--
		{
			pos = Vector(-101.29,-11.38,15.2),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.74,-15.37,15),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.25,-20.51,15.11),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-99.32,-25.57,15.25),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-80.71,0,36.31),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-102,5.83,15.37),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-102,-5.83,15.37),
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
				pos = Vector(106.67,28.11,3.61),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(97.86,35.18,6.78),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(44.94,43.55,18.17),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-96,33.64,14.75),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(106.67,-28.11,3.61),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(97.86,-35.18,6.78),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(44.94,-43.55,18.17),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-96,-33.64,14.75),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-96,-33.64,14.75),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_lincoln_mkt", light_table)