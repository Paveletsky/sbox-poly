local V = {
	Name = "Peterbilt 389 Low Roof Sleeper",
	Model = "models/ats/vehicles/peterbilt_389_ai_b.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 8500,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-146.18,0,0.71))
                ent:SetTrailerCenterposition(Vector(-146.18,0,0.71))
            end
        end,
		
		EnginePos = Vector(147,0,21),
		
		LightsTable = "ats_peterbilt_389_ai_b",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/truck/steel/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/truck/steel/rear.mdl",
		
		CustomWheelPosFL = Vector(118,45.52,-33),
		CustomWheelPosFR = Vector(118,-45.52,-33),
		CustomWheelPosML = Vector(-127.73,39.14,-31),
		CustomWheelPosMR = Vector(-127.73,-39.14,-31),		
		CustomWheelPosRL = Vector(-184.21,39.14,-31),
		CustomWheelPosRR = Vector(-184.21,-39.14,-31),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(20,-20,52),
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
				pos = Vector(30,-22,15),
				ang = Angle(0,-90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(20.35,44.49,104.6),
				ang = Angle(0,0,0),
			},
			{
				pos = Vector(20.35,-44.49,104.6),
				ang = Angle(0,0,0),
			},
		},
		
		FrontHeight = 4,
		FrontConstant = 34000,
		FrontDamping = 6000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 4,
		RearConstant = 34000,
		RearDamping = 6000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3600,
		PeakTorque = 310,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-22.54,36.53,0.44),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 1135,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/peterbilt_389_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/peterbilt_389_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/peterbilt_389_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/peterbilt_389_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "ats/vehicles/horns/horn_volvo_vnl_new.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.2,
		Gears = {-0.26,0,0.07,0.16,0.25,0.36,0.49,0.6,0.79,1,1.23,1.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_peterbilt_389_ai_b", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(150.96,41.55,5.27),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(150.96,-41.55,5.27),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-212.42,12.62,-16),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-212.42,-12.62,-16),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(150.96,41.55,5.27),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(150.96,-41.55,5.27),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(66,0,71.13),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(63.45,9.31,71.46),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(63.45,-9.31,71.46),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(58.83,27.58,72),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(58.83,-27.58,72),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(149,48.49,7.31),
			material = "sprites/light_ignorez",
			size = 15,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(149,-48.49,7.31),
			material = "sprites/light_ignorez",
			size = 15,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(150.35,35.27,4.8),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(150.35,-35.27,4.8),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-212.42,12.62,-16),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-212.42,-12.62,-16),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-212.42,12.62,-16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-212.42,-12.62,-16),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-212.42,5.55,-14.94),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-212.42,-5.55,-14.94),
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
				pos = Vector(149,48.5,4.94),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-212.42,12.62,-16),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(149,-48.5,4.94),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-212.42,-12.62,-16),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_peterbilt_389_ai_b", light_table)