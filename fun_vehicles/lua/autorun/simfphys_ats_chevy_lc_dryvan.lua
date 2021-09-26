local V = {
	Name = "Chevrolet Low Cab Forward Dry Van",
	Model = "models/ats/vehicles/chevy_lc_dryvan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 4500,
		
		EnginePos = Vector(125,0,-6),
		
		LightsTable = "ats_chevy_lc_dryvan",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/cargo/front_cargo.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/cargo/rear_cargo.mdl",
		
		CustomWheelPosFL = Vector(83.55,37.41,-40),
		CustomWheelPosFR = Vector(83.55,-37.41,-40),		
		CustomWheelPosRL = Vector(-61.61,41.15,-40),
		CustomWheelPosRR = Vector(-61.61,-41.15,-40),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(74,-24,46),
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
				pos = Vector(-28.41,14.27,-34.63),
				ang = Angle(-140,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(80,-28,0),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(80,-4,0),
				ang = Angle(0,-90,0)
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
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(41.14,43.12,-12.5),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 378,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/truck_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_02_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_03_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_05.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.045,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_chevy_lc_dryvan", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(126.15,33.59,-7.46),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(126.15,-33.59,-7.46),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-129.69,36.56,-17.28),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-129.69,-36.56,-17.28),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(126.15,33.59,-7.46),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(126.15,-33.59,-7.46),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(106.82,0,56.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(106.82,8.21,56.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(106.82,-8.21,56.61),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(106.84,37.74,54.7),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(106.84,-37.74,54.7),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(109.84,44.85,-11.75),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,255,255,125),
		},
		{
			pos = Vector(109.84,-44.85,-11.75),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,255,255,125),
		},
		--
		{
			pos = Vector(51.52,42.44,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(51.52,-42.44,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(43.77,51.91,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(43.77,-51.91,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-39,51.91,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-39,-51.91,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-36.29,51.91,-16.23),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-36.29,-51.91,-16.23),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-125.3,51.91,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-125.3,-51.91,89.34),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(126.15,33.59,-7.46),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(126.15,-33.59,-7.46),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-129.69,36.56,-17.28),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-129.69,-36.56,-17.28),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-132.22,0,90),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-132.22,15.34,90),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-132.22,-15.34,90),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-132.22,44,90),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-132.22,-44,90),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,0,0,255),
		},
		--
		{
			pos = Vector(-133.76,49.41,35.12),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-133.76,-49.41,35.12),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-129.69,36.56,-17.28),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-129.69,-36.56,-17.28),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-129.69,31,-17.52),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-129.69,-31,-17.52),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		--
		{
			pos = Vector(-133.7,49.36,25.12),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-133.7,-49.36,25.12),
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
				pos = Vector(125.89,36.83,2.8),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(114.46,44.1,-11.74),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-129.69,41.28,-17.43),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-133.76,49.41,35.12),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(125.89,-36.83,2.8),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(114.46,-44.1,-11.74),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-129.69,-41.28,-17.43),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-133.76,-49.41,35.12),
				material = "sprites/light_ignorez",
				size = 70,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_chevy_lc_dryvan", light_table)