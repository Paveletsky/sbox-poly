local V = {
	Name = "Cadillac De Ville",
	Model = "models/ats/vehicles/deville.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2134,
		
		EnginePos = Vector(130,0,6),
		
		LightsTable = "ats_deville",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in_cadillac.mdl",
		
		CustomWheelPosFL = Vector(95,33.99,-7),
		CustomWheelPosFR = Vector(95,-33.99,-7),	
		CustomWheelPosRL = Vector(-53.1,33.96,-7),
		CustomWheelPosRR = Vector(-53.1,-33.96,-7),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(18,-16,21),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-111.69,14.6,-11.8),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(31,-15,-10),
				ang = Angle(0,-90,20)
			},
			{
				pos = Vector(-15,20,-10),
				ang = Angle(0,-90,20)
			},
			{
				pos = Vector(-15,0,-10),
				ang = Angle(0,-90,20)
			},
			{
				pos = Vector(-15,-20,-10),
				ang = Angle(0,-90,20)
			},
		},
		
		FrontHeight = 11,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 11,
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
		LimitRPM = 4000,
		PeakTorque = 350,
		PowerbandStart = 1800,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-52.23,42,12.16),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 79,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_03_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_03_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_05.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.075,0.17,0.29,0.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_deville", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(132.55,36.71,2.92),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(132.55,-36.71,2.92),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-116.67,37.52,16.56),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-116.67,-37.52,16.56),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(132.55,36.71,2.92),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(132.55,-36.71,2.92),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(134.55,27.84,3),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(134.55,-27.84,3),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(132.85,37.38,-9.79),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(132.85,-37.38,-9.79),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(132.85,27.25,-9.79),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(132.85,-27.25,-9.79),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-116.67,37.52,16.56),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-116.67,-37.52,16.56),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-119.37,35.97,2.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-119.37,-35.97,2.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-119.37,35.97,2.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-119.37,-35.97,2.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(126.22,33.16,13.52),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-116.67,37.52,16.56),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(126.22,-33.16,13.52),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-116.67,-37.52,16.56),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_deville", light_table)