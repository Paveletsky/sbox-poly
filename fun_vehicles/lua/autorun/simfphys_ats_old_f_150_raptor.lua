local V = {
	Name = "Ford F-150 Raptor",
	Model = "models/ats/vehicles/old_f_150_raptor.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Legacy",
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2630,
		
		EnginePos = Vector(110,0,-18),
		
		LightsTable = "ats_f_150",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad_3.mdl",
		
		CustomWheelPosFL = Vector(79.58,41.16,-38),
		CustomWheelPosFR = Vector(79.58,-41.16,-38),	
		CustomWheelPosRL = Vector(-70.86,41.16,-38),
		CustomWheelPosRR = Vector(-70.86,-41.16,-38),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(15,-19,7),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-119.27,29.25,-33.55),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-119.27,-29.25,-33.55),
				ang = Angle(-90,0,0),
			},
		},
		PassengerSeats = {
			{
				pos = Vector(20,-20,-28),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,20,-28),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,0,-28),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-20,-28),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 14,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 45,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5700,
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-45.84,42.28,-20.92),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 98,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_02_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_02_high.wav",
		Sound_HighPitch = 0.7,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_02_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_03.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.06,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_old_f_150_raptor", V )