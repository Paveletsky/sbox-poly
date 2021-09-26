local V = {
	Name = "Dodge Charger Police",
	Model = "models/ats/vehicles/charger_generic_police.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Generic",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1929,
		
		EnginePos = Vector(100,0,0),
		
		LightsTable = "ats_charger_generic_police",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_charger.mdl",
		
		CustomWheelPosFL = Vector(66.94,33.16,-12),
		CustomWheelPosFR = Vector(66.94,-33.16,-12),	
		CustomWheelPosRL = Vector(-60.62,33.58,-12),
		CustomWheelPosRR = Vector(-60.62,-33.58,-12),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-5,-16,20),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-102.65,21.89,-14.34),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-102.65,-21.89,-14.34),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(5,-17,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,17,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,0,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,-17,-12),
				ang = Angle(0,-90,15)
			},
		},
		
		FrontHeight = 9,
		FrontConstant = 32000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 9,
		RearConstant = 32000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 90,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 65,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5250,
		PeakTorque = 400,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-75.48,-36.66,10),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 72,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/muscle_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/muscle_01_low.wav",
		Sound_MidPitch = 1.2,
		Sound_MidVolume = 1.5,
		Sound_MidFadeOutRPMpercent = 43,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/muscle_01_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 37,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/muscle_01_throttle.wav",
		Sound_ThrottlePitch = 0.75,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_08.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.065,0,0.075,0.17,0.29,0.41,0.58}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_charger_generic_police", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(90.81,31.38,3.93),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(90.81,-31.38,3.93),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-98.22,27.43,11),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-98.22,-27.43,11),
	R_RearLampAng = Angle(25,180,0),
	
	ModernLights = true,
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(90.81,31.38,3.93),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(90.81,-31.38,3.93),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(92.56,24.63,3.85),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(92.56,-24.63,3.85),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(93.7,28.65,-13.72),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(93.7,-28.65,-13.72),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-98.22,27.43,11),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-98.22,-27.43,11),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-102,0,17.66),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.11,12.34,12.13),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.11,6.47,12.77),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.11,0,12.77),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.11,-12.34,12.13),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-100.11,-6.47,12.77),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-100.1,20.23,11.31),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-100.1,-20.23,11.31),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"ats/vehicles/horns/siren_04_wail.wav","ats/vehicles/horns/siren_04_yelp.wav","ats/vehicles/horns/siren_04_rumble.wav"},
	ems_sprites = {
		--rear lights
		{
			pos = Vector(-100.69,0,12.87),
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
					},
			Speed = 0.05
		},
		{
			pos = Vector(-100.69,8.39,12.87),
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
					},
			Speed = 0.05
		},
		{
			pos = Vector(-100.69,-8.39,12.87),
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
					},
			Speed = 0.05
		},
		--bullbar front
		{
			pos = Vector(108.95,5.14,6),
			material = "sprites/light_ignorez",
			size = 30,
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
			pos = Vector(108.95,10.22,6),
			material = "sprites/light_ignorez",
			size = 30,
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
			pos = Vector(108.95,-5.14,6),
			material = "sprites/light_ignorez",
			size = 30,
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
			pos = Vector(108.95,-10.22,6),
			material = "sprites/light_ignorez",
			size = 30,
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
		--bullbar sides
		{
			pos = Vector(108.7,15.31,-4.19),
			material = "sprites/light_ignorez",
			size = 15,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
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
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(108.7,-15.31,-4.19),
			material = "sprites/light_ignorez",
			size = 15,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--lightbar left side
		{
			pos = Vector(-5.99,2.77,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-5.99,8.45,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-5.99,13.84,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-5.99,19.17,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-12.78,24.89,37.53),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-18.82,2.77,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-18.82,8.45,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-18.82,13.84,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,255),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-18.82,19.17,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--lightbar right side
		{
			pos = Vector(-5.99,-2.77,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-5.99,-8.45,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-5.99,-13.84,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-5.99,-19.17,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-12.78,-24.89,37.53),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--
		{
			pos = Vector(-18.82,-2.77,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-18.82,-8.45,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-18.82,-13.84,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,255,255),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-18.82,-19.17,37.53),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
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
				pos = Vector(88.48,35.8,3.1),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-98.22,27.43,11),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(88.48,-35.8,3.1),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-98.22,-27.43,11),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_charger_generic_police", light_table)