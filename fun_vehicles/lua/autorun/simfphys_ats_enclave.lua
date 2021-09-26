local V = {
	Name = "Buick Enclave",
	Model = "models/ats/vehicles/enclave.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2232,
		
		EnginePos = Vector(109,0,4),
		
		GibModels = {
			"models/ats/vehicles/enclave_c.mdl",
			"models/ats/vehicles/audi_a6_c_gib1.mdl",
			"models/ats/vehicles/audi_a6_c_gib2.mdl",
			"models/ats/vehicles/audi_a6_c_gib3.mdl",
		},
		
		LightsTable = "ats_enclave",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_3.mdl",
		
		CustomWheelPosFL = Vector(74.3,34.4,-14),
		CustomWheelPosFR = Vector(74.3,-34.4,-14),	
		CustomWheelPosRL = Vector(-48,35.7,-14),
		CustomWheelPosRR = Vector(-48,-35.7,-14),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(9,-18,26),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-86.9,21.9,-12.9),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-86.9,-21.9,-12.9),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(20,-18,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,18,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,0,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-18,-10),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 14,
		FrontConstant = 24000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 24000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 50,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 45,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 6300,
		PeakTorque = 270,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-51,39.3,16),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 83,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_01_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_04.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.07,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_enclave", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(97.5,32,4.8),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(97.5,-32,4.8),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-136,39,30.5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-136,-39,30.5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(97.5,32,4.8),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(97.5,-32,4.8),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(100.7,27.2,4.3),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(100.7,-27.2,4.3),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(88.5,26.1,-5),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(88.5,-26.1,-5),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-82.2,27.7,16.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-82.2,-27.7,16.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-80,33.4,14.5),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-80,-33.4,14.5),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-82.2,27.7,16.4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-82.2,-27.7,16.4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-84,22.44,16.2),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-84,-22.44,16.2),
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
				pos = Vector(93,35.4,6.9),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-78.7,31.1,19.9),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(46.4,38.8,18.1),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(93,-35.4,6.9),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-78.7,-31.1,19.9),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(46.4,-38.8,18.1),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_enclave", light_table)