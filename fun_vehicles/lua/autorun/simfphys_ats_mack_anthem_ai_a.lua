local V = {
	Name = "Mack Anthem Day Cab",
	Model = "models/ats/vehicles/mack_anthem_ai_a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 7456,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-75.73,0,-18))
                ent:SetTrailerCenterposition(Vector(-75.73,0,-18))
            end
        end,
		
		EnginePos = Vector(149,0,-6),
		
		LightsTable = "ats_mack_anthem_ai_a",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/chrome/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/chrome/rear.mdl",
		
		CustomWheelPosFL = Vector(99.63,44.26,-52),
		CustomWheelPosFR = Vector(99.63,-44.26,-52),
		CustomWheelPosML = Vector(-56.44,38.13,-50),
		CustomWheelPosMR = Vector(-56.44,-38.13,-50),		
		CustomWheelPosRL = Vector(-111,38.13,-50),
		CustomWheelPosRR = Vector(-111,-38.13,-50),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(40,-23,45),
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
				pos = Vector(50,-23,5),
				ang = Angle(0,-90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(18.3,-35.6,93.5),
				ang = Angle(-90,15,0),
			},
		},
		
		Attachments = {
			{
				model = "models/ats/vehicles/mack_anthem_ai_a_steps.mdl",
				color = Color(255,255,255,255),
				pos = Vector(0,0,0),
				ang = Angle(0,0,0)
			},
		},
		
		FrontHeight = -3,
		FrontConstant = 34000,
		FrontDamping = 6000,
		FrontRelativeDamping = 1000,
		
		RearHeight = -3,
		RearConstant = 34000,
		RearDamping = 6000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 85,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3600,
		PeakTorque = 310,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(25.7,47.4,-18.5),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 545,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/mack_anthem_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/mack_anthem_low.wav",
		Sound_MidPitch = 1.4,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/mack_anthem_high.wav",
		Sound_HighPitch = 1.1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/mack_anthem_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "ats/vehicles/horns/horn_mack_anthem.wav",
		snd_bloweron = "ats/vehicles/kenworth_t680_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.27,
		Gears = {-0.15,0,0.07,0.16,0.25,0.36,0.49,0.6,0.69,0.78}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mack_anthem_ai_a", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(143.49,39.69,-13.88),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(143.49,-39.69,-13.88),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-144,9.2,-26.74),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-144,-9.2,-26.74),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(143.49,39.69,-13.88),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(143.49,-39.69,-13.88),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(81.19,0,57.26),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(81,8.88,57.30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(75.25,32.81,57.22),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(81,-8.88,57.30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(75.25,-32.81,57.22),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(143.49,39.68,-18.16),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(143.49,-39.68,-18.16),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(140.7,39.1,-39.8),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(140.7,-39.1,-39.8),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	Rearlight_sprites = {
		{
			pos = Vector(-144,9.2,-26.74),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-144,-9.2,-26.74),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-144,9.2,-26.74),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-144,-9.2,-26.74),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-144,0,-26.74),
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
				pos = Vector(145.26,35.49,-8.71),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(142.95,38.51,-8.71),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(140.15,41.54,-8.71),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-144,9.2,-26.74),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(145.26,-35.49,-8.71),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(142.95,-38.51,-8.71),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(140.15,-41.54,-8.71),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-144,9.2,-26.74),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_mack_anthem_ai_a", light_table)