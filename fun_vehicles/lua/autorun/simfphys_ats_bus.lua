local V = {
	Name = "Temsa TS 30",
	Model = "models/ats/vehicles/bus.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 5000,
		
		EnginePos = Vector(-174.26,0,-18.85),
		
		LightsTable = "ats_bus",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/bus/front_bus2.mdl",
		
		CustomWheelPosFL = Vector(100.27,39.86,-47),
		CustomWheelPosFR = Vector(100.27,-39.86,-47),	
		CustomWheelPosRL = Vector(-82.58,41.53,-47),
		CustomWheelPosRR = Vector(-82.58,-41.53,-47),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(123,-28,45),
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
				pos = Vector(93,-36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(56,36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(18,-36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-13,36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-48,-36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-84,36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-120,-36,7),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-160,0,11),
				ang = Angle(0,-90,0)
			},
		},
		
		FrontHeight = 0,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 0,
		RearConstant = 50000,
		RearDamping = 5000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 250,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 700,
		LimitRPM = 3600,
		PeakTorque = 330,
		PowerbandStart = 1400,
		PowerbandEnd = 2400,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-126.71,47.42,-27.54),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 160,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/truck_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_02_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_02_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_bus.wav",
		
		DifferentialGear = 0.34,
		Gears = {-0.045,0,0.06,0.14,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_bus", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(173.96,37.79,-19.27),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(173.96,-37.79,-19.27),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-178,43.26,-9),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-178,-43.26,-9),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(173.96,37.79,-19.27),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(173.96,-37.79,-19.27),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(154.71,0,67.12),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(154.71,11.9,67.12),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(154.71,-11.9,67.12),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(154.71,34.58,67.12),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(154.71,-34.58,67.12),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(61.3,48.99,-21.55),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-19,48.99,-21.55),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(61.3,-48.99,-21.55),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-19,-48.99,-21.55),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(173.96,31.84,-19.27),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(173.96,-31.84,-19.27),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(173.51,37.67,-29.5),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(173.51,-37.67,-29.5),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-178,43.26,-9),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-178,-43.26,-9),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-168.12,0,76.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-168.12,11.88,76.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-168.12,-11.88,76.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-168.12,34.55,76.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-168.12,-34.55,76.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-145.9,48.99,-20.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-145.9,-48.99,-20.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-177.86,42.74,-16.16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-177.86,-42.74,-16.16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-178.39,0,17.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-178.39,18.72,17.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-178.39,-18.72,17.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-177.33,42.53,-23.28),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-177.33,-42.53,-23.28),
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
				pos = Vector(174.29,43.66,-19.27),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(100.24,50.81,-8.99),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-178,43.25,-1.62),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(174.29,-43.66,-19.27),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(100.24,-50.81,-8.99),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-178,-43.25,-1.62),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_bus", light_table)