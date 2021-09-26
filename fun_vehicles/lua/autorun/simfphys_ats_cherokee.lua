local V = {
	Name = "Jeep Grand Cherokee",
	Model = "models/ats/vehicles/cherokee.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Legacy",
	SpawnOffset = Vector(0,0,35),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2948,
		
		EnginePos = Vector(96,0,1),
		
		LightsTable = "ats_cherokee",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad.mdl",
		
		CustomWheelPosFL = Vector(68.8,37.8,-21),
		CustomWheelPosFR = Vector(68.8,-37.8,-21),	
		CustomWheelPosRL = Vector(-61.82,38,-21),
		CustomWheelPosRR = Vector(-61.82,-38,-21),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(3,-18,20),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-99.82,24.15,-18.64),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-99.82,-24.15,-18.64),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(7,-18,-15),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,18,-15),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,0,-15),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,-18,-15),
				ang = Angle(0,-90,0)
			},
		},
		
		
		FrontHeight = 14,
		FrontConstant = 34000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 34000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 6400,
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 5500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-60,-39.3,10),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 93,
		
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
		
		snd_horn = "ats/vehicles/horns/horn_car_06.wav",
		
		DifferentialGear = 0.25,
		Gears = {-0.07,0,0.065,0.17,0.29,0.41,0.58,0.67,0.76,0.9}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_cherokee", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(91.81,32.85,3),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(91.81,-32.85,3),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-96.63,31.19,11.91),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-96.63,-31.19,11.91),
	R_RearLampAng = Angle(25,180,0),
	
	ModernLights = true,
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(91.81,32.85,3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(91.81,-32.85,3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(227,242,255,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(95.88,25.38,3.32),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(95.88,-25.38,3.32),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(93.89,34.97,-9.65),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
		{
			pos = Vector(93.89,-34.97,-9.65),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(227,242,255,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-96.63,31.19,11.91),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-96.63,-31.19,11.91),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-97.88,27.26,12.22),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-97.88,-27.26,12.22),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-83.8,0,32.14),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-96.26,28.93,7.12),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-96.26,-28.93,7.12),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(95.88,25.38,3.32),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-94.22,34.25,11.9),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(95.88,-25.38,3.32),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-94.22,-34.25,11.9),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_cherokee", light_table)