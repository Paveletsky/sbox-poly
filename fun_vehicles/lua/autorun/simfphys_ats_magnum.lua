local V = {
	Name = "Dodge Magnum",
	Model = "models/ats/vehicles/magnum.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1992,
		
		EnginePos = Vector(96,0,4),
		
		LightsTable = "ats_magnum",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_3.mdl",
		
		CustomWheelPosFL = Vector(64.19,32.75,-9),
		CustomWheelPosFR = Vector(64.19,-32.75,-9),	
		CustomWheelPosRL = Vector(-62.78,32.76,-9),
		CustomWheelPosRR = Vector(-62.78,-32.76,-9),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-7,-17,22),
		SeatPitch = 0,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(2,-15,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,17,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,-17,-10),
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
		LimitRPM = 5000,
		PeakTorque = 280,
		PowerbandStart = 2300,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-74,35,15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_01_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 1,
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
list.Set( "simfphys_vehicles", "sim_fphys_ats_magnum", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(87.54,31.37,6.3),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(87.54,-31.37,6.3),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-100.41,30.21,12.39),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-100.41,-30.21,12.39),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(87.54,31.37,6.3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(87.54,-31.37,6.3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(90,25.38,6.19),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(90,-25.38,6.19),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-100.41,30.21,12.39),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.41,-30.21,12.39),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-99.75,30.3,14.72),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-99.75,-30.3,14.72),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.61,0,32.23),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-100.41,30.21,12.39),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-100.41,-30.21,12.39),
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
				pos = Vector(85.55,36.39,4.18),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-99.75,30.3,14.72),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(85.55,-36.39,4.18),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-99.75,-30.3,14.72),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_magnum", light_table)