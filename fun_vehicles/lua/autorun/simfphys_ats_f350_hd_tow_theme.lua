local V = {
	Name = "Ford F-350 Tow Truck",
	Model = "models/ats/vehicles/f350_hd_tow_theme.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 3000,
		
		EnginePos = Vector(114,0,3),
		
		LightsTable = "ats_f350_hd_tow",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/bus/front_bus.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/bus/rear_bus.mdl",
		
		CustomWheelPosFL = Vector(82.63,36.86,-24),
		CustomWheelPosFR = Vector(82.63,-36.86,-24),		
		CustomWheelPosRL = Vector(-79,36.86,-24),
		CustomWheelPosRR = Vector(-79,-36.86,-24),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(10,-20,32),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-114.16,-19.93,-27.29),
				ang = Angle(-90,45,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(20,-20,-5),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 12,
		FrontConstant = 34000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 12,
		RearConstant = 34000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-52.74,50.66,8.63),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 151,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_02_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_02_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_05.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.04,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_f350_hd_tow_theme", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(113.39,33.38,7.34),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(113.39,-33.38,7.34),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-107.73,45.83,-3.98),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-107.73,-45.83,-3.98),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(113.39,33.38,7.34),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(113.39,-33.38,7.34),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(114.25,33.44,-2.22),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(114.25,-33.44,-2.22),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		--
		{
			pos = Vector(31.94,0,46.86),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(30.49,10.45,46.8),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(30.49,-10.45,46.8),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(28.48,24.54,46.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(28.48,-24.54,46.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(113.21,33.56,2.56),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(113.21,-33.56,2.56),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(113.28,33.78,-12.71),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(113.28,-33.78,-12.71),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-107.73,45.83,-3.98),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-107.73,-45.83,-3.98),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		--
		{
			pos = Vector(-11,32.44,42.71),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-11,-32.44,42.71),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-113.7,31.51,-4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-113.7,-31.51,-4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-2.99,0,47.11),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-11,32.44,42.71),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-11,-32.44,42.71),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-113.7,31.51,-4),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-113.7,-31.51,-4),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--right flashes front
		{
			pos = Vector(-1.88,-3.41,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-1.88,-15.96,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-1.88,-27,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		--right flashes
		{
			pos = Vector(-7.21,-35.31,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		--right flashesh rear
		{
			pos = Vector(-11.99,-3.41,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-11.99,-15.96,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-11.99,-27,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		--left flashes front
		{
			pos = Vector(-1.88,3.41,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-1.88,15.96,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-1.88,27,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
		--left flashes
		{
			pos = Vector(-7.21,35.31,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
		--left flashes rear
		{
			pos = Vector(-11.99,3.41,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-11.99,15.96,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
		{
			pos = Vector(-11.99,27,50.38),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(0,0,0,0),
						Color(255,155,0,255),
						Color(255,155,0,255),
						Color(255,155,0,255),
					},
			Speed = 0.07
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(109.53,39.13,6.87),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(41.42,58.85,23.15),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-110.63,38.69,-4),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(109.53,-39.13,6.87),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(41.42,-58.85,23.15),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-110.63,-38.69,-4),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_f350_hd_tow", light_table)