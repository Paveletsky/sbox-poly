local V = {
	Name = "Ford F-350 Ambulance",
	Model = "models/ats/vehicles/f350.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Generic",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2500,
		
		EnginePos = Vector(132.87,0,-30),
		
		LightsTable = "ats_f350",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/bus/front_bus.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/bus/rear_bus.mdl",
		
		CustomWheelPosFL = Vector(102.94,36,-51),
		CustomWheelPosFR = Vector(102.94,-36,-51),		
		CustomWheelPosRL = Vector(-81.63,29.1,-51),
		CustomWheelPosRR = Vector(-81.63,-29.1,-51),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(35,-18,2),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(43,-18,-37),
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
		
		FuelFillPos = Vector(-2.17,43.24,-39.66),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 151,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_01_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_03.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.05,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_f350", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(130.32,28.69,-26.53),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(130.32,-28.69,-26.53),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-142.64,34,-47.59),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-142.64,-34,-47.59),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(130.32,28.69,-26.53),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(130.32,-28.69,-26.53),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(47.18,0,12.3),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(47.18,7.62,12.3),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(47.18,-7.62,12.3),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(47.18,23.91,11.3),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(47.18,-23.91,11.3),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(15.78,38.23,40),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(15.78,-38.23,40),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(130.32,28.69,-26.53),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(130.32,-28.69,-26.53),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(136.24,29.82,-45.21),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(136.24,-29.82,-45.21),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-142.64,34,-47.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.64,-34,-47.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.4,0,37.57),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.4,5,37.57),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.4,-5,37.57),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.4,38.34,37.57),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.4,-38.34,37.57),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-142.64,34,-47.59),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-142.64,-34,-47.59),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-142.64,25.28,-47.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-142.64,-25.28,-47.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"ats/vehicles/horns/siren_ambulance_wail.wav","ats/vehicles/horns/siren_ambulance_yelp.wav"},
	ems_sprites = {
		--front lightbar left
		{
			pos = Vector(39.7,3.28,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
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
			pos = Vector(39.7,9.61,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(39.7,16.5,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
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
			pos = Vector(37,21.98,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		--front lightbar right
		{
			pos = Vector(39.7,-3.28,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
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
			pos = Vector(39.7,-9.61,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(39.7,-16.5,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
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
			pos = Vector(37,-21.98,15.83),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		--left side reds
		{
			pos = Vector(16.25,33.88,31.78),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
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
					},
			Speed = 0.05
		},
		{
			pos = Vector(1.89,45.2,31),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
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
					},
			Speed = 0.05
		},
		{
			pos = Vector(-132.28,45.2,31),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
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
					},
			Speed = 0.05
		},
		{
			pos = Vector(-143.25,31.62,31),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
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
					},
			Speed = 0.05
		},
		--right side reds
		{
			pos = Vector(16.25,-33.88,31.78),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(1.89,-45.2,31),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(-132.28,-45.2,31),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(-143.25,-31.62,31),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		--rear orange
		{
			pos = Vector(-143.25,31.62,4.67),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
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
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(-143.25,-31.62,4.67),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						--
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
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
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
						Color(255,175,0,255),
						Color(255,175,0,150),
					},
			Speed = 0.05
		},
		--front lefts
		{
			pos = Vector(136.65,14.19,-23.85),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.075
		},
		{
			pos = Vector(119.23,38,-24.22),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(122.23,37.46,-24.22),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
					},
			Speed = 0.075
		},
		--front rights
		{
			pos = Vector(136.65,-14.19,-23.85),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(119.23,-38,-24.22),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.075
		},
		{
			pos = Vector(122.23,-37.46,-24.22),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--middle reds
		{
			pos = Vector(15.53,0,35.1),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(-142.47,0,28.97),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,0),
						Color(255,0,0,255),
						Color(255,0,0,175),
						Color(255,0,0,255),
					},
			Speed = 0.05
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(130,30.7,-31.35),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-142.84,30.95,-29.41),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,175,0,255),
			},
		},
		Right = {
			{
				pos = Vector(130,-30.7,-31.35),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-142.84,-30.95,-29.41),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,175,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_f350", light_table)