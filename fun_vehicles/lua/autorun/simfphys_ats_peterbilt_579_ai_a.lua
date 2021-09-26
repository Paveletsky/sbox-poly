local V = {
	Name = "Peterbilt 579 Duty Cabin",
	Model = "models/ats/vehicles/peterbilt_579_ai_a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 7456,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-98.93,0,2.12))
                ent:SetTrailerCenterposition(Vector(-98.93,0,2.12))
            end
        end,
		
		EnginePos = Vector(126,0,13),
		
		LightsTable = "ats_peterbilt_579_ai_a",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/truck/steel/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/truck/steel/rear.mdl",
		
		CustomWheelPosFL = Vector(79.88,46.19,-32),
		CustomWheelPosFR = Vector(79.88,-46.19,-32),
		CustomWheelPosML = Vector(-90.30,39.60,-30),
		CustomWheelPosMR = Vector(-90.30,-39.60,-30),		
		CustomWheelPosRL = Vector(-139.56,39.60,-30),
		CustomWheelPosRR = Vector(-139.56,-39.60,-30),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(9,-25,60),
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
				pos = Vector(20,-22,25),
				ang = Angle(0,-90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(2.1,-48,122.4),
				ang = Angle(-80,0,0),
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
		SteeringFadeFastSpeed = 300,
		
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
		
		FuelFillPos = Vector(20.5,37,1.2),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 567,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/peterbilt_579_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/peterbilt_579_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/peterbilt_579_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/peterbilt_579_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "ats/vehicles/horns/horn_kenworth_t680.wav",
		snd_bloweron = "ats/vehicles/peterbilt_579_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.2,
		Gears = {-0.26,0,0.07,0.16,0.25,0.36,0.49,0.6,0.79,1,1.23,1.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_peterbilt_579_ai_a", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(120.48,44.19,2.33),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(120.48,-44.19,2.33),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-169.81,13.81,-15.42),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-169.81,-13.81,-15.42),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(120.48,44.19,2.33),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(120.48,-44.19,2.33),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(55.53,0,74.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(55.53,7.12,74.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(55.53,-7.12,74.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(53.14,28.15,74.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(53.14,-28.15,74.84),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(118.67,46.94,0.25),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(118.67,-46.94,0.25),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(121.93,43.63,-0.62),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(121.93,-43.63,-0.62),
			material = "sprites/light_ignorez",
			size = 20,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(103.45,53.18,0.35),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(103.45,-53.18,0.35),
			material = "sprites/light_ignorez",
			size = 25,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(49.58,40.16,16.41),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(49.58,-40.16,16.41),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(125.16,35.39,1.35),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(125.16,-35.39,1.35),size = 100,material = "sprites/light_ignorez"},
	},
	
	FogLight_sprites = {
		{
			pos = Vector(124.4,41.7,-11.2),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(124.4,-41.7,-11.2),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,238,200,255),
		},
	},
	Rearlight_sprites = {
		{
			pos = Vector(-169.81,13.81,-15.42),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-169.81,-13.81,-15.42),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-169.81,13.81,-15.42),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-169.81,-13.81,-15.42),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-169.81,7.65,-12.84),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-169.81,-7.65,-12.84),
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
				pos = Vector(118.7,44.19,5.54),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-169.81,13.81,-15.42),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(118.7,-44.19,5.54),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-169.81,-13.81,-15.42),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_peterbilt_579_ai_a", light_table)