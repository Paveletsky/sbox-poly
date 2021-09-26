local V = {
	Name = "John Deere 8110",
	Model = "models/ats/vehicles/tractor.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 4500,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-97,0,-29))
                ent:SetTrailerCenterposition(Vector(-97,0,-29))
            end
        end,
		
		EnginePos = Vector(61,0,0),
		
		LightsTable = "ats_tractor",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/tractor/front2.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/tractor/rear2.mdl",
		
		CustomWheelPosFL = Vector(64.91,40.1,-36),
		CustomWheelPosFR = Vector(64.91,-40.1,-36),		
		CustomWheelPosRL = Vector(-67.11,40.85,-25),
		CustomWheelPosRR = Vector(-67.11,-40.85,-25),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		FrontWheelRadius = 33,
		RearWheelRadius = 44,
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-50,0,30),
		SeatPitch = 15,
		SeatYaw = 90,
		
		ModelInfo = {
			Skin = 1,
		},
		
		ExhaustPositions = {
			{
				pos = Vector(3.82,-49.74,72),
				ang = Angle(-75,90,0),
			},
		},
		
		FrontHeight = 14,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 14,
		RearConstant = 50000,
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
		LimitRPM = 2200,
		PeakTorque = 250,
		PowerbandStart = 1100,
		PowerbandEnd = 2000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(4.86,38.57,-2.45),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 100,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/tractor_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/tractor_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/tractor_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/tractor_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_tractor.wav",
		snd_bloweron = "ats/vehicles/kenworth_w900_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.25,
		Gears = {-0.1,0,0.07,0.16,0.25}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_tractor2", V )