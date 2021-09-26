local V = {
	Name = "Mercury Colony Park",
	Model = "models/ats/vehicles/mercury_co.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Sedans & Compacts",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1775,
		
		EnginePos = Vector(117,0,8),
		
		LightsTable = "ats_mercury_co",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/16in_mercury.mdl",
		
		CustomWheelPosFL = Vector(77.62,34.88,-6),
		CustomWheelPosFR = Vector(77.62,-34.88,-6),	
		CustomWheelPosRL = Vector(-43.71,34.88,-6),
		CustomWheelPosRR = Vector(-43.71,-34.88,-6),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(15,-20,25),
		SeatPitch = 0,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(23,-20,-8),
				ang = Angle(0,-90,20)
			},
			{
				pos = Vector(-10,20,-8),
				ang = Angle(0,-90,20)
			},
			{
				pos = Vector(-10,0,-8),
				ang = Angle(0,-90,20)
			},
			{
				pos = Vector(-10,-20,-8),
				ang = Angle(0,-90,20)
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
		
		MaxGrip = 50,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 35,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3600,
		PeakTorque = 302,
		PowerbandStart = 1600,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-43,41,12),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 76,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_02_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_02_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_08.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.06,0,0.075,0.17,0.29}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mercury_co", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(118.23,31.41,7.8),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(118.23,-31.41,7.8),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-104,35.87,11.83),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-104,-35.87,11.83),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(118.23,31.41,7.8),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(118.23,-31.41,7.8),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(117.1,23.27,7.9),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(117.1,-23.27,7.9),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-104,35.87,11.83),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-104,-35.87,11.83),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-103.27,35.88,9.44),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-103.27,-35.88,9.44),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-103.8,36,7.15),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-103.8,-36,7.15),
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
				pos = Vector(112.78,39.91,7.45),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-103.52,37.48,7.13),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(112.78,-39.91,7.45),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-103.52,-37.48,7.13),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_mercury_co", light_table)