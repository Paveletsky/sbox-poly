local V = {
	Name = "Ford F-150 Escort Vehicle",
	Model = "models/ats/vehicles/f_150_escort.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2267,
		
		EnginePos = Vector(110,0,-18),
		
		LightsTable = "ats_f_150_escort",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad_3.mdl",
		
		CustomWheelPosFL = Vector(79.58,37.79,-36),
		CustomWheelPosFR = Vector(79.58,-37.79,-36),	
		CustomWheelPosRL = Vector(-70.86,37.79,-36),
		CustomWheelPosRR = Vector(-70.86,-37.79,-36),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(15,-19,7),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-105.91,-42,-38.79),
				ang = Angle(-90,90,0),
			},
		},
		PassengerSeats = {
			{
				pos = Vector(20,-20,-28),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,20,-28),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,0,-28),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-20,-28),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 14,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 30000,
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
		LimitRPM = 5700,
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-45.84,42.28,-20.92),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 98,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_02_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_02_high.wav",
		Sound_HighPitch = 0.7,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_03.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.06,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_f_150_escort", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(105.85,32.78,-12.64),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(105.85,-32.78,-12.64),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-113.96,37.31,-9.34),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-113.96,-37.31,-9.34),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(105.85,32.78,-12.64),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(105.85,-32.78,-12.64),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(106.13,32.49,-20),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(106.13,-32.49,-20),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(106.56,32.31,-32.41),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(106.56,-32.31,-32.41),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-113.96,37.31,-9.34),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-113.96,-37.31,-9.34),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-113.96,37.31,-14.32),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-113.96,-37.31,-14.32),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-38,0,21.75),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-114.98,35,-14.61),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-114.98,-35,-14.61),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--right flashes front
		{
			pos = Vector(-24.48,-3.75,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-24.48,-10.95,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-24.48,-18,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-24.48,-25.17,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-27.74,-30.73,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-32.96,-32.62,28.64),
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
			Speed = 0.075
		},
		--left flashes front
		{
			pos = Vector(-24.48,3.75,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-24.48,10.95,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-24.48,18,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-24.48,25.17,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-27.74,30.73,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-32.96,32.62,28.64),
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
			Speed = 0.075
		},
		--flashes rear
		{
			pos = Vector(-40.63,3.75,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,10.95,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,18,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,25.17,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-38.57,30.73,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,-3.75,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,-10.95,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,-18,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-40.63,-25.17,28.64),
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
			Speed = 0.075
		},
		{
			pos = Vector(-38.57,-30.73,28.64),
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
			Speed = 0.075
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(104,34.35,-16.83),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-113.96,37.31,-9.34),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(104,-34.35,-16.83),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-113.96,-37.31,-9.34),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_f_150_escort", light_table)