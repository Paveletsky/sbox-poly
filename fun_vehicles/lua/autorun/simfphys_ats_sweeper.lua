local V = {
	Name = "Sterling Acterra Sweeper Truck",
	Model = "models/ats/vehicles/sweeper.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,70),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 6500,
		
		EnginePos = Vector(141,0,-10),
		
		LightsTable = "ats_sweeper",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
		
		CustomWheelModel = "models/ats/vehicles/wheel/truck/steel/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/truck/steel/rear.mdl",
		
		CustomWheelPosFL = Vector(114.35,39.54,-55),
		CustomWheelPosFR = Vector(114.35,-39.54,-55),		
		CustomWheelPosRL = Vector(-26.9,33.35,-55),
		CustomWheelPosRR = Vector(-26.9,-33.35,-55),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(55,22,35),
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
		
		ExhaustPositions = {
			{
				pos = Vector(6.44,45.08,-55.37),
				ang = Angle(-145,-90,0),
			},
			{
				pos = Vector(6.44,-45.08,-55.37),
				ang = Angle(-145,90,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(67,25,-8),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 0,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 0,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 150,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(11.83,43.68,-41.91),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 378,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_02_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_02_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_truck_01.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.22,
		Gears = {-0.07,0,0.07,0.17,0.26,0.4,0.5}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_sweeper", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(147.8,35.7,-23.3),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(147.8,-35.7,-23.3),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-106.57,38.44,11.26),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-106.57,-33.95,11.26),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(147.8,35.7,-23.3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(147.8,-35.7,-23.3),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(82.92,0,46.47),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(82.92,16.52,46.47),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(82.92,-16.52,46.47),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(70.48,34.51,46.6),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(70.48,-34.51,46.6),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(147.8,35.7,-23.3),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(147.8,-35.7,-23.3),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-106.57,38.44,11.26),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-106.57,-33.95,11.26),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-98.95,44.24,35.41),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		{
			pos = Vector(-98.95,-39.83,35.41),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,175,0,255),
		},
		--
		{
			pos = Vector(-96,2,51.43),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-96,17.16,51.43),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-96,38,51.43),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-96,-13.2,51.43),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-96,-34.33,51.43),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-106.57,38.44,3.38),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-106.57,-33.95,3.38),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--rotary lights
		{
			pos = Vector(48.44,-0.34,52.6),
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
			pos = Vector(48.44,-0.34,52.6),
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
		--side lights
		{
			pos = Vector(-85.15,44.36,46.82),
			material = "sprites/light_ignorez",
			size = 70,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-85.15,-40.15,46.82),
			material = "sprites/light_ignorez",
			size = 70,
			Colors = {
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--redirectors
		{
			pos = Vector(-106.58,-12.84,45.21),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						--
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.1
		},
		{
			pos = Vector(-106.58,-3.13,45.21),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						--
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.1
		},
		{
			pos = Vector(-106.58,6.99,45.21),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(255,135,0,255),
						--
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.1
		},
		{
			pos = Vector(-106.58,16.15,45.21),
			material = "sprites/light_ignorez",
			size = 50,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(255,135,0,255),
						--
						Color(255,135,0,255),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(255,135,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.1
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(144.5,44.11,-23.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(108.64,45.17,-2.37),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,175,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-106.57,38.44,-4.58),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(144.5,-44.11,-23.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(108.64,-45.17,-2.37),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,175,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-106.57,-33.95,-4.58),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_sweeper", light_table)