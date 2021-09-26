local V = {
	Name = "Blue Bird Vision",
	Model = "models/ats/vehicles/bus_s.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Services",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 8750,
		
		EnginePos = Vector(210,0,-20),
		
		LightsTable = "ats_bus_s",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/bus/front_bus.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/bus/rear_bus.mdl",
		
		CustomWheelPosFL = Vector(168.9,46.3,-60),
		CustomWheelPosFR = Vector(168.9,-46.3,-60),	
		CustomWheelPosRL = Vector(-109.5,41,-60),
		CustomWheelPosRR = Vector(-109.5,-41,-60),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(90,-20,44),
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
				pos = Vector(60,-30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(22,30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-14,-30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-48,30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-84,-30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-120,30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-154,-30,-7),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-154,30,-7),
				ang = Angle(0,-90,10)
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
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 250,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 700,
		LimitRPM = 3600,
		PeakTorque = 330,
		PowerbandStart = 1400,
		PowerbandEnd = 2400,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-161,-52,-14),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 227,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/newbus_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/newbus_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/newbus_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/bus_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_bus.wav",
		
		DifferentialGear = 0.34,
		Gears = {-0.05,0,0.06,0.14,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_bus_s", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(206,38.7,-24.5),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(206,-38.7,-24.5),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-214.4,33.4,7.4),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-214.4,-33.4,7.4),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(206,38.7,-24.5),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(206,-38.7,-24.5),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(140.4,0,72.2),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(140.4,9,72.2),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(140.4,-9,72.2),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(206,38.7,-24.5),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(206,-38.7,-24.5),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-214.4,33.4,7.4),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-214.4,-33.4,7.4),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-207,0,72.2),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-207,9,72.2),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(-207,-9,72.2),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-214.4,33.4,7.4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-214.4,-33.4,7.4),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-214.2,25.7,7.3),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-214.2,-25.7,7.3),
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
				pos = Vector(201.8,46.1,-24.5),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(177,44,-2.9),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-214.4,41.6,7.4),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(201.8,-46.1,-24.5),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(177,-44,-2.9),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-214.4,-41.6,7.4),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_bus_s", light_table)