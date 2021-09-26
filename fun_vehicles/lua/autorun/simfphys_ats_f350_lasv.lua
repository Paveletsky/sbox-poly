local V = {
	Name = "Ford F-350 Las Vegas Fire & Rescue",
	Model = "models/ats/vehicles/f350.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Mountain Region",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2500,
		
		EnginePos = Vector(132.87,0,-30),
		
		LightsTable = "ats_f350",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/bus/front_bus.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/bus/rear_bus.mdl",
		
		CustomWheelPosFL = Vector(102.94,36,-51),
		CustomWheelPosFR = Vector(102.94,-36,-51),		
		CustomWheelPosRL = Vector(-81.63,29.1,-51),
		CustomWheelPosRR = Vector(-81.63,-29.1,-51),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(35,-18,2),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ModelInfo = {
			Skin = 4,
		},
		
		PassengerSeats = {
			{
				pos = Vector(43,-18,-37),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 12,
		FrontConstant = 34000,
		FrontDamping = 5000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 12,
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
		LimitRPM = 3000,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-2.17,43.24,-39.66),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 151,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_01_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_03.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.05,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_f350_lasv", V )