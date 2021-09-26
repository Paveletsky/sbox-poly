local V = {
	Name = "Caterpillar 422 E",
	Model = "models/ats/vehicles/cat_422.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2000,
		
		EnginePos = Vector(55,0,13),
		
		LightsTable = "ats_cat_422",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/cat_422/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/cat_422/rear.mdl",
		
		CustomWheelPosFL = Vector(42.57,31.27,-40),
		CustomWheelPosFR = Vector(42.57,-30.28,-40),		
		CustomWheelPosRL = Vector(-42.8,33.2,-32),
		CustomWheelPosRR = Vector(-42.8,-30.81,-32),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		FrontWheelRadius = 19,
		RearWheelRadius = 27,
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-47,-2,22),
		SeatPitch = 15,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(15.9,-11.1,46),
				ang = Angle(-45,130,0),
			},
		},
		
		FrontHeight = 5,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 5,
		RearConstant = 50000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 50,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 35,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 2200,
		PeakTorque = 125,
		PowerbandStart = 1100,
		PowerbandEnd = 2000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(17.96,19,-27.12),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 145,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/tractor_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/tractor_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/tractor_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/tractor_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_small_01.wav",
		snd_bloweron = "ats/vehicles/kenworth_w900_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.06,0,0.07,0.16,0.25}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_cat_422", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(3.89,29,25.27),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(3.89,-26,25.27),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-82.66,44.5,-22.85),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-82.66,-42,-22.85),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(3.89,29,25.27),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(3.89,-26,25.27),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(19.34,26.4,-1.61),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(19.34,-23.5,-1.61),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-76.11,48.7,-6.29),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-76.11,-46,-6.29),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-95.73,-21,34.49),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(3.89,29,25.27),size = 60,material = "sprites/light_ignorez"},
		{pos = Vector(3.89,-26,25.27),size = 60,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(-7.85,14.7,49.5),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(-7.85,20.5,49.5),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(-7.85,-11.6,49.5),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(-7.85,-17.4,49.5),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-82.66,44.5,-22.85),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-82.66,-42,-22.85),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-82.66,44.5,-24.38),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-82.66,-42,-24.38),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,0,0,255),
		},
	},
	
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--rotary lights
		{
			pos = Vector(-40.2,19,57.99),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
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
			Speed = 0.035
		},
		{
			pos = Vector(-40.2,19,57.99),
			material = "sprites/light_ignorez",
			size = 30,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
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
			Speed = 0.035
		},
		--
		{
			pos = Vector(-40.2,-16,57.99),
			material = "sprites/light_ignorez",
			size = 100,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
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
			Speed = 0.034
		},
		{
			pos = Vector(-40.2,-16,57.99),
			material = "sprites/light_ignorez",
			size = 30,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,20),
						Color(255,135,0,60),
						Color(255,135,0,100),
						Color(255,135,0,140),
						Color(255,135,0,180),
						Color(255,135,0,220),
						Color(255,135,0,255),
						Color(255,135,0,180),
						Color(255,135,0,100),
						Color(255,135,0,20),
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
			Speed = 0.034
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(3.89,33.2,25.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-82.66,44.5,-26),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(3.89,-30.2,25.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-82.66,-42,-26),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
	},
}
list.Set( "simfphys_lights", "ats_cat_422", light_table)