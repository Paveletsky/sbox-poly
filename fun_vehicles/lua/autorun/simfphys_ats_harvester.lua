local V = {
	Name = "John Deere S-Series",
	Model = "models/ats/vehicles/harvester.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,80),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 5500,
		
		EnginePos = Vector(-139.53,0,44.11),
		
		LightsTable = "ats_harvester",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/harvester/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/harvester/rear.mdl",
		
		CustomWheelPosFL = Vector(35.12,68.8,-46),
		CustomWheelPosFR = Vector(35.12,-68.8,-46),		
		CustomWheelPosRL = Vector(-130.37,66.63,-56),
		CustomWheelPosRR = Vector(-130.37,-66.63,-56),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		SteerFront = false,
		SteerRear = true,
		
		FrontWheelRadius = 48,
		RearWheelRadius = 37,
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(39,0,68),
		SeatPitch = 15,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(60,25,20),
				ang = Angle(0,-90,0)
			},
		},
		
		FrontHeight = 14,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 14,
		RearConstant = 50000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 220,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 850,
		LimitRPM = 2200,
		PeakTorque = 250,
		PowerbandStart = 1100,
		PowerbandEnd = 2000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-43.62,43.76,-46.48),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 500,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/harvester_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/harvester_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/harvester_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/harvester_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_harvester.wav",
		snd_bloweron = "ats/vehicles/harvester_trans.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.25,
		Gears = {-0.1,0,0.07,0.16,0.25}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_harvester", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(96.93,27.87,1.4),
	L_HeadLampAng = Angle(17,15,0),
	R_HeadLampPos = Vector(96.93,-27.87,1.4),
	R_HeadLampAng = Angle(10,-15,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-209.15,49.12,-1.02),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-209.15,-49.12,-1.02),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(96.93,27.87,1.4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(96.93,-27.87,1.4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(94.57,34.26,2.6),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(94.57,-34.26,2.6),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(113.93,14.12,79.96),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(113.23,21.85,79.96),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(111.98,28.32,80),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(110.29,33.35,80),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		--
		{
			pos = Vector(113.93,-14.12,79.96),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(113.23,-21.85,79.96),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(111.98,-28.32,80),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(110.29,-33.35,80),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-209.15,49.12,-1.02),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-209.15,-49.12,-1.02),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-209.15,49.12,-1.02),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-209.15,-49.12,-1.02),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--rotary lights
		{
			pos = Vector(97.58,56.43,90.33),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.03
		},
		{
			pos = Vector(97.58,56.43,90.33),
			material = "sprites/light_ignorez",
			size = 30,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.03
		},
		--
		{
			pos = Vector(97.58,-56.43,90.33),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.031
		},
		{
			pos = Vector(97.58,-56.43,90.33),
			material = "sprites/light_ignorez",
			size = 30,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.031
		},
		--
		{
			pos = Vector(-216.88,0,59.89),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.031
		},
		{
			pos = Vector(-216.88,0,59.89),
			material = "sprites/light_ignorez",
			size = 30,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.031
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(75.45,74.38,7.21),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-192.17,95.65,14.92),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(83.38,-59.4,2),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-192.17,-95.65,14.92),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	},
}
list.Set( "simfphys_lights", "ats_harvester", light_table)