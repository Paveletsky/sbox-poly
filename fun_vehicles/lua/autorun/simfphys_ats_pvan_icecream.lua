local V = {
	Name = "Chevrolet Ice Cream Step Van",
	Model = "models/ats/vehicles/pvan_icecream.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 4050,
		
		EnginePos = Vector(120,0,-5),
		
		LightsTable = "ats_pvan_icecream",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/cargo/front_cargo.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/cargo/rear_cargo.mdl",
		
		CustomWheelPosFL = Vector(84.18,36,-36),
		CustomWheelPosFR = Vector(84.18,-36,-36),		
		CustomWheelPosRL = Vector(-70.97,32.99,-36),
		CustomWheelPosRR = Vector(-70.97,-32.9,-36),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(35,-20,38),
		SeatPitch = 10,
		SeatYaw = 90,
		
		FrontHeight = 10,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 10,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 4500,
		PeakTorque = 275,
		PowerbandStart = 1800,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(13,45,-31),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 94,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/stepvan_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/stepvan_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/stepvan_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/stepvan_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_04.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_pvan_icecream", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(122.19,34,-8.57),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(122.19,-34,-8.57),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-118.34,40.8,-30.67),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-118.34,-40.8,-30.67),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(122.19,34,-8.57),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(122.19,-34,-8.57),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(69.71,0,63.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(69.71,9.9,63.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(69.71,36.65,63.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(69.71,-9.9,63.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(69.71,-36.65,63.4),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(113.6,45.32,-9.53),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(113.6,-45.32,-9.53),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(122.19,34,-8.57),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(122.19,-34,-8.57),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-118.34,40.8,-30.67),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-118.34,-40.8,-30.67),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-119.3,0,64.63),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-119.3,9.8,64.63),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-119.3,-9.8,64.63),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-117.16,39.17,64.45),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-117.16,-39.17,64.45),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-118.34,40.8,-30.67),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-118.34,-40.8,-30.67),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-118.29,35,-30.58),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-118.29,-35,-30.58),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"ats/vehicles/horns/turkeyinthestraw.wav"},
	ems_sprites = {
		{
			pos = Vector(0,0,0),
			material = "sprites/light_ignorez",
			size = 10,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 1
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(121.11,34.31,0),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(82.47,47.13,-5.15),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-118.34,40.8,-30.67),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(121.11,-34.31,0),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(82.47,-47.13,-5.15),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-118.34,-40.8,-30.67),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_pvan_icecream", light_table)