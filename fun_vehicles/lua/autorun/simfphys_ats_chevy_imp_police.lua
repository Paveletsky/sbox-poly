local V = {
	Name = "Chevrolet Impala Salt Lake City Police",
	Model = "models/ats/vehicles/chevy_imp_police.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Mountain Region",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1666,
		
		EnginePos = Vector(100,0,0),
		
		LightsTable = "ats_chevy_imp_police",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in.mdl",
		
		CustomWheelPosFL = Vector(63.69,34.43,-10),
		CustomWheelPosFR = Vector(63.69,-34.43,-10),	
		CustomWheelPosRL = Vector(-54.51,34.43,-10),
		CustomWheelPosRR = Vector(-54.51,-34.43,-10),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(0,-16,20),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-100.26,23.6,-10.52),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-100.26,-23.6,-10.52),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(11,-16,-13),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-28,20,-13),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-28,0,-13),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-28,-20,-13),
				ang = Angle(0,-90,15)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 33000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 10,
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
		LimitRPM = 5800,
		PeakTorque = 220,
		PowerbandStart = 2500,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-70,34,17),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 83,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 0.9,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_06.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.06,0,0.075,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_chevy_imp_police", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(87.73,28.52,4.42),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(87.73,-28.52,4.42),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-96.46,26.24,14.23),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-96.46,-26.24,14.23),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(87.73,28.52,4.42),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(87.73,-28.52,4.42),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(84.46,33.74,4.47),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(84.46,-33.74,4.47),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(93.8,23.96,2.97),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(93.8,-23.96,2.97),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-96.46,26.24,14.23),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-96.46,-26.24,14.23),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-96.47,0,19.28),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-98.4,27.38,9.56),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-98.4,-27.38,9.56),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"ats/vehicles/horns/siren_01_wail.wav","ats/vehicles/horns/siren_01_yelp.wav"},
	ems_sprites = {
		--window lights front
		{
			pos = Vector(42.97,25.83,16.44),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(42.97,-25.83,16.44),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		--window lights rear
		{
			pos = Vector(-66.43,14.23,23.54),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
					},
			Speed = 0.04
		},
		{
			pos = Vector(-66.43,20.32,23.54),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
					},
			Speed = 0.04
		},
		--
		{
			pos = Vector(-66.43,-14.23,23.54),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
					},
			Speed = 0.04
		},
		{
			pos = Vector(-66.43,-20.32,23.54),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
					},
			Speed = 0.04
		},
		--lightbar left
		{
			pos = Vector(-1.37,9.38,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-1.37,15.18,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-1.37,21.29,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-3.15,25.64,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-7,26.79,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-10.85,25.63,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-12.6,9.38,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-12.6,15.18,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-12.6,21.29,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--lightbar right
		{
			pos = Vector(-1.37,-9.38,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-1.37,-15.18,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-1.37,-21.29,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-3.15,-25.64,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-7,-26.79,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-10.85,-25.63,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-12.6,-9.38,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-12.6,-15.18,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-12.6,-21.29,39.52),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(97.76,21.17,1.4),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-96.46,26.24,14.23),
				material = "sprites/light_ignorez",
				size = 80,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(97.76,-21.17,1.4),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-96.46,-26.24,14.23),
				material = "sprites/light_ignorez",
				size = 80,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_chevy_imp_police", light_table)