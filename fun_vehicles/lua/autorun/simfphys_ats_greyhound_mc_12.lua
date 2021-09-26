local V = {
	Name = "MCI MC-12",
	Model = "models/ats/vehicles/greyhound.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 12138,
		
		EnginePos = Vector(-231.59,0,-11.8),
		
		LightsTable = "ats_greyhound",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/truck/steel/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/truck/steel/rear.mdl",
		
		CustomWheelPosFL = Vector(188.51,44.89,-36),
		CustomWheelPosFR = Vector(188.51,-44.89,-36),
		CustomWheelPosML = Vector(-109.7,38.53,-36),
		CustomWheelPosMR = Vector(-109.7,-38.53,-36),		
		CustomWheelPosRL = Vector(-159.13,38.53,-36),
		CustomWheelPosRR = Vector(-159.13,-38.53,-36),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(203,-30,76),
		SeatPitch = 10,
		SeatYaw = 90,
		
		OnTick = 
		function(ent)
			local function rev()
				if ( ent:GetGear() == 1) then
					if ( CurTime() % 0.225 ~= 0 ) then
					else
						sound.Play( "ats/vehicles/horns/rev_gen.wav", ent:GetPos())
					end
				end
			end
			rev()
		end,
		
		PassengerSeats = {
			{
				pos = Vector(173,-28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(138,28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(102,-28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(67,28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-4,-28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-75,28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-146,-28,8),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-210,0,8),
				ang = Angle(0,-90,0)
			},
		},
		
		FrontHeight = 28,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 16,
		RearConstant = 50000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 250,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 85,
		BulletProofTires = false,
		
		IdleRPM = 700,
		LimitRPM = 3600,
		PeakTorque = 375,
		PowerbandStart = 1400,
		PowerbandEnd = 2400,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-213.2,-51.41,-20.91),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 545,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/bus_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/bus_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/bus_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/bus_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_bus.wav",
		
		DifferentialGear = 0.34,
		Gears = {-0.055,0,0.06,0.14,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_greyhound_mc_12", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(257.05,39.01,-20.13),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(257.05,-39.01,-20.13),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-235,44.52,-13.28),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-235,-44.52,-13.28),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(257.05,39.01,-20.13),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(257.05,-39.01,-20.13),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(249.82,0,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(249.82,11.92,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(249.82,-11.92,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(249.82,42.76,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(249.82,-42.76,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(239.15,52.15,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(239.15,-52.15,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(19.51,52.15,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(19.51,-52.15,70.79),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(257.8,31.75,-20.42),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(257.8,-31.75,-20.42),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-235,44.52,-13.28),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-235,-44.52,-13.28),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-234.22,0,32.5),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-222.05,0,73.07),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-222.05,12,73.07),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-222.05,-12,73.07),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-222.05,43.13,73.07),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-222.05,-43.13,73.07),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-212.67,51.53,72.96),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
		{
			pos = Vector(-212.67,-51.53,72.96),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,75,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-235.15,44.54,-19.88),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-235.15,-44.54,-19.88),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-235.15,36.12,-19.88),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-235.15,-36.12,-19.88),
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
				pos = Vector(258.8,39.02,4.07),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(164.52,52.33,-10),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-134.49,52.33,-10),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-234.73,36.15,-13.4),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(258.8,-39.02,4.07),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(164.52,-52.33,-10),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-134.49,-52.33,-10),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-234.73,-36.15,-13.4),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_greyhound", light_table)