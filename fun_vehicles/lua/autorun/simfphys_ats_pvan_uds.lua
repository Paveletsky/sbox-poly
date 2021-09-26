local V = {
	Name = "Chevrolet Step Van 'UDS'",
	Model = "models/ats/vehicles/pvan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 4998,
		
		EnginePos = Vector(120,0,-5),
		
		LightsTable = "ats_pvan",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/cargo/front_cargo.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/cargo/rear_cargo.mdl",
		
		CustomWheelPosFL = Vector(84.18,36,-36),
		CustomWheelPosFR = Vector(84.18,-36,-36),		
		CustomWheelPosRL = Vector(-83,32.99,-36),
		CustomWheelPosRR = Vector(-83,-32.9,-36),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),	

		ModelInfo = {
			Skin = 1,
		},
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(35,-20,38),
		SeatPitch = 10,
		SeatYaw = 90,
		
		FrontHeight = 12,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 12,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 4500,
		PeakTorque = 275,
		PowerbandStart = 1800,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(13,45,-31),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 94,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/stepvan_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/stepvan_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/stepvan_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/stepvan_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_04.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.055,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_pvan_uds", V )