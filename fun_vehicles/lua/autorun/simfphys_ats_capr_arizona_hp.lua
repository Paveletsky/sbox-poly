local V = {
	Name = "Chevrolet Caprice PPV Arizona Highway Patrol",
	Model = "models/ats/vehicles/capr_arizona_hp.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Mountain Region",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1834,
		
		EnginePos = Vector(99.85,-0.32,-6.27),
		
		LightsTable = "ats_capr_arizona_hp",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_police.mdl",
		
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
list.Set( "simfphys_vehicles", "sim_fphys_ats_capr_arizona_hp", V )

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
	
	ems_sounds = {"ats/vehicles/horns/siren_02_wail.wav","ats/vehicles/horns/siren_02_yelp.wav","ats/vehicles/horns/siren_02_rumble.wav"},
	ems_sprites = {
		--rear lights
		{
			pos = Vector(-103.23,27.7,3),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.1
		},
		{
			pos = Vector(-103.23,-27.7,3),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.1
		},
		--lightbar right red
		{
			pos = Vector(-11.75,25.6,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		--lightbar front reds
		{
			pos = Vector(-5.71,20.93,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-5.71,14.24,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-5.71,8.25,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-5.71,2.7,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		--lightbar front blues
		{
			pos = Vector(-5.71,-3,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-5.71,-9.37,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-5.71,-14.71,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-5.71,-21.13,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
						--
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		--lightbar right blue
		{
			pos = Vector(-11.75,-26.18,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
						--
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		--lightbar rear blues
		{
			pos = Vector(-17.91,-3.08,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-17.91,-8.87,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-17.91,-14.71,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-17.91,-21.39,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,255,255),
						--
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,255,175),
						Color(0,0,255,255),
						Color(0,0,255,255),
					},
			Speed = 0.037
		},
		--lightbar rear reds
		{
			pos = Vector(-17.91,20.81,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-17.91,14.54,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-17.91,8.25,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		{
			pos = Vector(-17.91,2.61,29.48),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(255,0,0,255),
					},
			Speed = 0.037
		},
		--bullbar reds
		{
			pos = Vector(109.4,-9.68,-2.11),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(108.05,17.38,-9.08),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
					},
			Speed = 0.075
		},
		--bullbar blues
		{
			pos = Vector(109.4,9.09,-2.11),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(108.05,-18.03,-9.08),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
					},
			Speed = 0.075
		},
		--side reds
		{
			pos = Vector(51.01,36.81,-1.19),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(30.58,-39.34,8.13),
			material = "sprites/light_ignorez",
			size = 20,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
					},
			Speed = 0.075
		},
		--side blues
		{
			pos = Vector(51.01,-37.51,-1.19),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(30.58,38.73,8.13),
			material = "sprites/light_ignorez",
			size = 20,
			Colors = {
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
						Color(0,0,255,255),
						Color(0,0,255,0),
					},
			Speed = 0.075
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
list.Set( "simfphys_lights", "ats_capr_arizona_hp", light_table)