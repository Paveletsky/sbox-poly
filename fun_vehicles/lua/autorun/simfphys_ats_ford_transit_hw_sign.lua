local V = {
	Name = "Ford Transit Highway Maintenance",
	Model = "models/ats/vehicles/ford_transit_hw.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 4082,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-128.71,0,-26.97))
                ent:SetTrailerCenterposition(Vector(-128.71,0,-26.97))
            end
        end,
		
		EnginePos = Vector(113.67,0,-2.65),
		
		LightsTable = "ats_ford_transit_hw",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_5.mdl",
		
		CustomWheelPosFL = Vector(76.97,38.36,-31),
		CustomWheelPosFR = Vector(76.97,-38.36,-31),		
		CustomWheelPosRL = Vector(-74.34,38.36,-31),
		CustomWheelPosRR = Vector(-74.34,-38.36,-31),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(29,-22,30),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ModelInfo = {
			Color = Color(217,107,38,255),
			Skin = 1,
		},
		
		PassengerSeats = {
			{
				pos = Vector(45,-23,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(45,0,-10),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 8,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 8,
		RearConstant = 50000,
		RearDamping = 10000,
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
		LimitRPM = 6000,
		PeakTorque = 352,
		PowerbandStart = 2200,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-50.92,41.1,-6.5),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 98,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_01_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_05.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ford_transit_hw_sign", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(102.28,33.92,4.04),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(102.28,-33.92,4.04),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-118.79,39.2,7.35),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-118.79,-39.2,7.35),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(102.28,33.92,4.04),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(102.28,-33.92,4.04),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(109.66,29,3.52),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(109.66,-29,3.52),size = 100,material = "sprites/light_ignorez"},
	},
	FogLight_sprites = {
		{
			pos = Vector(108.45,34.84,-20),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(108.45,-34.84,-20),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-118.79,39.2,7.35),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-118.79,-39.2,7.35),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-118.79,39.2,10.12),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-118.79,-39.2,10.12),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-117,0,47.24),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-118.79,39.2,-1.71),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-118.79,-39.2,-1.71),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--rotary lights
		{
			pos = Vector(20.17,22.63,57.64),
			material = "sprites/light_ignorez",
			size = 70,
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
						Color(255,135,0,220),
						Color(255,135,0,180),
						Color(255,135,0,140),
						Color(255,135,0,100),
						Color(255,135,0,60),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.04
		},
		{
			pos = Vector(20.17,-22.63,57.64),
			material = "sprites/light_ignorez",
			size = 70,
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
						Color(255,135,0,220),
						Color(255,135,0,180),
						Color(255,135,0,140),
						Color(255,135,0,100),
						Color(255,135,0,60),
						Color(255,135,0,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.035
		},
		--light board
		{
			pos = Vector(-110.8,0,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-7.77,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-15.74,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-26.11,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-20.76,75.63),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-13.38,80.87),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-20.76,62.96),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,-13.38,57.33),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		--
		{
			pos = Vector(-110.8,7.77,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,15.74,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,26.11,69),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,20.76,75.63),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,13.38,80.87),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,20.76,62.96),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
		{
			pos = Vector(-110.8,13.38,57.33),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(255,135,0,255),
					},
			Speed = 1
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(104.47,34.94,-1.2),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-118.79,39.2,7.35),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(104.47,-34.94,-1.2),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-118.79,-39.2,7.35),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_ford_transit_hw", light_table)