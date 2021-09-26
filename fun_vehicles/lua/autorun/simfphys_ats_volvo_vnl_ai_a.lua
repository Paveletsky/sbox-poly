local V = {
	Name = "Volvo VNL 300",
	Model = "models/ats/vehicles/volvo_vnl_ai_a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 7456,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-82.27,0,-1.9))
                ent:SetTrailerCenterposition(Vector(-82.27,0,-1.9))
            end
        end,
		
		EnginePos = Vector(131.5,0,5.2),
		
		LightsTable = "ats_volvo_vnl_ai_a",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/truck/steel/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/truck/steel/rear.mdl",
		
		CustomWheelPosFL = Vector(83.62,47.4,-32),
		CustomWheelPosFR = Vector(83.62,-47.4,-32),
		CustomWheelPosML = Vector(-58.54,40.4,-32),
		CustomWheelPosMR = Vector(-58.54,-40.4,-32),		
		CustomWheelPosRL = Vector(-116.65,40.4,-32),
		CustomWheelPosRR = Vector(-116.65,-40.4,-32),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(20,-26,55),
		SeatPitch = 10,
		SeatYaw = 90,
		
		OnTick = 
		function(ent)
			local function rev()
				if ( ent:GetGear() == 1) then
					if ( CurTime() % 0.225 ~= 0 ) then
					else
						sound.Play( "ats/vehicles/horns/rev_volvo.wav", ent:GetPos())
					end
				end
			end
			rev()
		end,
		
		PassengerSeats = {
			{
				pos = Vector(40,-25,19),
				ang = Angle(0,-90,10)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-0.3,-34,120.97),
				ang = Angle(-90,30,0),
			},
		},
		
		FrontHeight = 4,
		FrontConstant = 34000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 4,
		RearConstant = 34000,
		RearDamping = 5000,
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
		LimitRPM = 3600,
		PeakTorque = 250,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(12.35,49,1.2),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 757,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/volvo_vnl_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/volvo_vnl_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/volvo_vnl_high.wav",
		Sound_HighPitch = 1.25,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/volvo_vnl_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_volvo_vnl_new.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.2,
		Gears = {-0.26,0,0.07,0.16,0.25,0.36,0.49,0.6,0.79,1,1.23,1.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_volvo_vnl_ai_a", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(123.67,42.6,1.7),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(123.67,-42.6,1.7),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-151.8,10.45,-6.8),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-151.8,-10.45,-6.8),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(123.67,42.6,1.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(123.67,-42.6,1.7),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(70.6,0,68.18),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(70.6,9.51,68.18),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(70.6,-9.51,68.18),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(66.45,34.4,68.35),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(66.45,-34.4,68.35),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(127.9,41.43,-3.97),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(127.9,-41.43,-3.97),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-151.8,10.45,-6.8),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-151.8,-10.45,-6.8),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(16.7,47.75,13.97),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(16.7,-47.75,13.97),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,255,255,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-151.8,10.45,-6.8),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-151.8,-10.45,-6.8),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-151.8,0,-6.8),
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
				pos = Vector(129.26,45.5,-8.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(122.78,48.87,-7.28),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-151.8,10.45,-6.8),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(129.26,-45.5,-8.3),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(122.78,-48.87,-7.28),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-151.8,-10.45,-6.8),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_volvo_vnl_ai_a", light_table)