local V = {
	Name = "Ford Taurus Reno Police",
	Model = "models/ats/vehicles/ford_taurus_police.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Mountain Region",
	SpawnOffset = Vector(0,0,30),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1840,
		
		EnginePos = Vector(105,0,-7),
		
		LightsTable = "ats_ford_taurus_police",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_police.mdl",
		
		CustomWheelPosFL = Vector(70.16,33.6,-21),
		CustomWheelPosFR = Vector(70.16,-33.6,-21),	
		CustomWheelPosRL = Vector(-51.6,33.6,-21),
		CustomWheelPosRR = Vector(-51.6,-33.6,-21),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(8,-15.85,14),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ModelInfo = {
			Bodygroups = {0,2},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-96.1,23.98,-19),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-96.1,-23.98,-19),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(18,-15,-21),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-20,18,-21),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-20,-18,-21),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 8,
		FrontConstant = 30000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 8,
		RearConstant = 30000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 60,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5500,
		PeakTorque = 344,
		PowerbandStart = 2600,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-64,-36.6,6),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sport_01_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_01_high.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sport_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_02.wav",
		
		DifferentialGear = 0.33,
		Gears = {-0.08,0,0.075,0.17,0.29,0.41,0.58,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ford_taurus_look_reno", V )