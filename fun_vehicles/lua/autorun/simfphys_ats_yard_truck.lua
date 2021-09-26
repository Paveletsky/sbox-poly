local V = {
	Name = "Ottawa YT 30",
	Model = "models/ats/vehicles/yard_truck.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1500,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-55.8,0,-24.48))
                ent:SetTrailerCenterposition(Vector(-55.8,0,-24.48))
            end
        end,
		
		EnginePos = Vector(95,0,-19),
		
		LightsTable = "ats_yard_truck",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/yard_truck/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/yard_truck/rear.mdl",
		
		CustomWheelPosFL = Vector(49.94,45.12,-47),
		CustomWheelPosFR = Vector(49.94,-45.12,-47),		
		CustomWheelPosRL = Vector(-70.34,44.19,-47),
		CustomWheelPosRR = Vector(-70.34,-44.19,-47),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(32,-38,42),
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
				pos = Vector(8.45,-38.56,73.13),
				ang = Angle(-75,0,0),
			},
		},
		
		FrontHeight = 6,
		FrontConstant = 34000,
		FrontDamping = 2500,
		FrontRelativeDamping = 1000,
		
		RearHeight = 6,
		RearConstant = 50000,
		RearDamping = 2500,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 2000,
		PeakTorque = 300,
		PowerbandStart = 1000,
		PowerbandEnd = 1900,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-18.98,-54.68,-26.85),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 60,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/truck_03_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_03_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_small_01.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.1,0,0.07,0.16,0.25}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_yard_truck", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(95.75,31.1,-18.78),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(95.75,-31.05,-18.78),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-104.58,15.98,-45.66),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-104.58,-15.98,-45.66),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(95.75,31.1,-18.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(95.75,-31.05,-18.78),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(95.75,31.1,-18.78),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(95.75,-31.05,-18.78),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-104.58,15.98,-45.66),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-104.58,-15.98,-45.66),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-104.58,15.98,-45.66),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-104.58,-15.98,-45.66),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(25.61,-5,62.69),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	
	DelayOn = 0,
	DelayOff = 0,
	
}
list.Set( "simfphys_lights", "ats_yard_truck", light_table)