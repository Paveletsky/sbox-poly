local V = {
	Name = "John Deere S-Series",
	Model = "models/ats/vehicles/harvester_u.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,80),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 5750,
		
		EnginePos = Vector(-139.53,0,44.11),
		
		LightsTable = "ats_harvester",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/harvester/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/harvester/rear.mdl",
		
		CustomWheelPosFL = Vector(35.12,68.8,-46),
		CustomWheelPosFR = Vector(35.12,-68.8,-46),		
		CustomWheelPosRL = Vector(-130.37,66.63,-56),
		CustomWheelPosRR = Vector(-130.37,-66.63,-56),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		SteerFront = false,
		SteerRear = true,
		
		FrontWheelRadius = 48,
		RearWheelRadius = 37,
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(39,0,68),
		SeatPitch = 15,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(60,25,20),
				ang = Angle(0,-90,0)
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
		
		MaxGrip = 220,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 850,
		LimitRPM = 2200,
		PeakTorque = 250,
		PowerbandStart = 1100,
		PowerbandEnd = 2000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-43.62,43.76,-46.48),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 500,
		
		PowerBias = -1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/harvester_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/harvester_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/harvester_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/harvester_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_harvester.wav",
		snd_bloweron = "ats/vehicles/harvester_trans.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.25,
		Gears = {-0.1,0,0.07,0.16,0.25}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_harvester_u", V )