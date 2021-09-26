local V = {
	Name = "Cadillac Escalade",
	Model = "models/ats/vehicles/escalade.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2569,
		
		EnginePos = Vector(105.72,0,9.2),
		
		LightsTable = "ats_escalade",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in.mdl",
		
		CustomWheelPosFL = Vector(71,34.92,-9),
		CustomWheelPosFR = Vector(71,-34.92,-9),	
		CustomWheelPosRL = Vector(-45.78,34.53,-9),
		CustomWheelPosRR = Vector(-45.78,-34.53,-9),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(0,-17,32),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(15,-18,-2),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,20,-2),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,0,-2),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-20,-2),
				ang = Angle(0,-90,10)
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
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 45,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5700,
		PeakTorque = 300,
		PowerbandStart = 2300,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-52,37.69,18.68),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 98,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_03_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_05.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.06,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_escalade", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(101.14,30.53,11.92),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(101.14,-30.53,11.92),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-84.57,34.3,21.5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-84.57,-34.3,21.5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(101.14,30.53,11.92),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(101.14,-30.53,11.92),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(102.25,30.6,7.24),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(102.25,-30.6,7.24),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(106.33,27.32,-8.39),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(106.33,-27.32,-8.39),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-84.57,34.3,21.5),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-84.57,-34.3,21.5),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-85.38,34.3,16.18),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-85.38,-34.3,16.18),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,0,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,5.6,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,-5.6,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,11.6,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,-11.6,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,18.6,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-77.99,-18.6,45),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-85.18,34.54,8.56),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-85.18,-34.54,8.56),
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
				pos = Vector(104.26,33.28,-8.19),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-85.38,34.3,11.26),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(104.26,-33.28,-8.19),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-85.38,-34.3,11.26),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_escalade", light_table)