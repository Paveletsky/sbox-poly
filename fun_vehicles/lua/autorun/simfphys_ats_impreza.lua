local V = {
	Name = "Subaru WRX STi",
	Model = "models/ats/vehicles/impreza.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1481,
		
		EnginePos = Vector(96,0,1),
		
		LightsTable = "ats_impreza",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_camaro.mdl",
		
		CustomWheelPosFL = Vector(63.35,32.55,-12),
		CustomWheelPosFR = Vector(63.35,-32.55,-12),	
		CustomWheelPosRL = Vector(-47.27,32.55,-12),
		CustomWheelPosRR = Vector(-47.27,-32.55,-12),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(0,-16,20),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-85.8,26,-13.1),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-85.8,21.7,-13.1),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-85.8,-26,-13.1),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-85.8,-21.7,-13.1),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(10,-16,-13),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-32,17,-13),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-32,0,-13),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-32,-17,-13),
				ang = Angle(0,-90,10)
			},
		},
		
		
		FrontHeight = 8,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 8,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 55,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5600,
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 4500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-57,-34.5,13),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 60,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sport_04_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_04_low.wav",
		Sound_MidPitch = 0.8,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_04_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_04_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_08.wav",
		
		DifferentialGear = 0.42,
		Gears = {-0.07,0,0.075,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_impreza", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(91.27,29.88,3),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(91.27,-29.88,3),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-79.68,29.89,11.96),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-79.68,-29.89,11.96),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(91.27,29.88,3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(91.27,-29.88,3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(91.27,29.88,3),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(91.27,-29.88,3),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(91.94,31.7,-11.64),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(91.94,-31.7,-11.64),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-79.68,29.89,11.96),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-79.68,-29.89,11.96),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-74.93,31.57,14.12),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-74.93,-31.57,14.12),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-66.51,0,22),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-80.66,27.44,11.89),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-80.66,-27.44,11.89),
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
				pos = Vector(91.94,31.88,-7.62),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(31.97,41.92,16.69),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-82.26,22.68,11.47),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-79.68,29.89,11.96),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(91.94,-31.88,-7.62),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(31.97,-41.92,16.69),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-82.26,-22.68,11.47),
				material = "sprites/light_ignorez",
				size = 30,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-79.68,-29.89,11.96),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_impreza", light_table)