local V = {
	Name = "Chevrolet Caprice PPV Oregon State Trooper",
	Model = "models/ats/vehicles/capr_or_hp.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Pacific Region",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1834,
		
		EnginePos = Vector(99.85,-0.32,-6.27),
		
		LightsTable = "ats_capr_arizona_hp",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_police.mdl",
		
		CustomWheelPosFL = Vector(67.94,34.21,-21),
		CustomWheelPosFR = Vector(67.94,-34.76,-21),	
		CustomWheelPosRL = Vector(-58.79,34.38,-21),
		CustomWheelPosRR = Vector(-58.79,-34.68,-21),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-8,-16,10),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-105.81,22.77,-20.94),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-105.81,-23.37,-20.94),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(5,-16,-20),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,18,-20),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,0,-20),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-30,-18,-20),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 8,
		FrontConstant = 33000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 8,
		RearConstant = 33000,
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
		LimitRPM = 7200,
		PeakTorque = 220,
		PowerbandStart = 3500,
		PowerbandEnd = 6500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-78.72,35.05,3.67),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 72,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/sedan_03_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/sedan_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sedan_03_high.wav",
		Sound_HighPitch = 0.7,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/sedan_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_01.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.07,0,0.075,0.17,0.29,0.41,0.58,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_capr_or_hp", V )