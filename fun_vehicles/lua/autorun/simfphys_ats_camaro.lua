local V = {
	Name = "Chevrolet Camaro",
	Model = "models/ats/vehicles/camaro.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1726,
		
		EnginePos = Vector(96.33,0,4.24),
		
		LightsTable = "ats_camaro",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_camaro.mdl",
		
		CustomWheelPosFL = Vector(63.76,34.53,-8.6),
		CustomWheelPosFR = Vector(63.76,-34.53,-8.6),	
		CustomWheelPosRL = Vector(-54.23,34.69,-8.6),
		CustomWheelPosRR = Vector(-54.23,-34.69,-8.6),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-13,-16,20),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-91.36,18.9,-8.57),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-90.64,23.52,-8.44),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-91.36,-18.9,-8.57),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-90.64,-23.52,-8.44),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(-2,-15,-12),
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
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5600,
		PeakTorque = 270,
		PowerbandStart = 2700,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-57.48,36.66,15.86),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sport_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_02_low.wav",
		Sound_MidPitch = 1.8,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 43,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_03_high.wav",
		Sound_HighPitch = 0.9,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 37,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_02_throttle.wav",
		Sound_ThrottlePitch = 0.75,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_01.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_camaro", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(86,28.9,6.26),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(86,-28.9,6.26),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-90.67,18.04,14.69),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-90.67,-18.04,14.69),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(86,28.9,6.26),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(86,-28.9,6.26),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(86,28.9,6.26),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(86,-28.9,6.26),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(88.24,30,-3),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(88.24,-30,-3),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-90.67,18.04,14.69),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-90.67,-18.04,14.69),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-95,0,18.27),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-90.67,18.04,14.69),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-90.67,-18.04,14.69),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(92.56,20.86,5.82),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-87,27.3,15.2),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(92.56,-20.86,5.82),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-87,-27.3,15.2),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_camaro", light_table)