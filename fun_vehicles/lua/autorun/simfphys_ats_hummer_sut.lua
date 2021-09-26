local V = {
	Name = "Hummer H2 SUT",
	Model = "models/ats/vehicles/hummer_sut.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,30),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 3900,
		
		EnginePos = Vector(99,0,3),
		
		LightsTable = "ats_hummer_sut",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in_hummer.mdl",
		
		CustomWheelPosFL = Vector(74.11,38.35,-23),
		CustomWheelPosFR = Vector(74.11,-38.35,-23),	
		CustomWheelPosRL = Vector(-59.19,38.35,-23),
		CustomWheelPosRR = Vector(-59.19,-38.35,-23),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(9,-22,24),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(20,-20,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,20,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,0,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,-20,-10),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 11,
		FrontConstant = 50000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 11,
		RearConstant = 50000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 65,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5200,
		PeakTorque = 340,
		PowerbandStart = 2000,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-80.28,42.77,7.56),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 121,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_04_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_04_low.wav",
		Sound_MidPitch = 1.25,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_04_high.wav",
		Sound_HighPitch = 0.65,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_04_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_03.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.04,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_hummer_sut", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(102.95,22.74,4.56),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(102.95,-22.74,4.56),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-88.94,35,16.18),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-88.94,-35,16.18),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(102.95,22.74,4.56),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(102.95,-22.74,4.56),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		--
		{
			pos = Vector(35.36,32.55,40.28),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(35.36,-32.55,40.28),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(40.28,0,38.97),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(40.28,8.78,38.97),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(40.28,-8.78,38.97),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(102.95,22.74,4.56),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(102.95,-22.74,4.56),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(103.84,25.19,-4.97),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(103.84,-25.19,-4.97),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-88.94,35,16.18),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-88.94,-35,16.18),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		--
		{
			pos = Vector(-42.26,32.55,42.26),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-42.26,-32.55,42.26),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-45.97,0,41.41),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-88.94,35.54,5.41),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-88.94,-35.54,5.41),
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
				pos = Vector(99.63,34.72,4.45),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(90.74,40.49,8),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-80.44,41.94,16.42),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,0,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-88.65,35,11),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(99.63,-34.72,4.45),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(90.74,-40.49,8),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-80.44,-41.94,16.42),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,0,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-88.65,-35,11),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_hummer_sut", light_table)