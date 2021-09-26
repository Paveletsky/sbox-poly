local V = {
	Name = "Ford Explorer Washington State Patrol",
	Model = "models/ats/vehicles/ford_explorer_police_2.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Pacific Region",
	SpawnOffset = Vector(0,0,30),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2010,
		
		EnginePos = Vector(90,0,-2),
		
		LightsTable = "ats_ford_explorer_police",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_police.mdl",
		
		CustomWheelPosFL = Vector(56.22,36.27,-23),
		CustomWheelPosFR = Vector(56.22,-36.27,-23),	
		CustomWheelPosRL = Vector(-64.79,37,-23),
		CustomWheelPosRR = Vector(-64.79,-37,-23),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-9,-20,15),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ModelInfo = {
			Bodygroups = {1},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-110.1,22.6,-21.9),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-110.1,-22.6,-21.9),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(3,-20,-16),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-40,20,-16),
				ang = Angle(0,-90,12)
			},
			{
				pos = Vector(-40,0,-16),
				ang = Angle(0,-90,12)
			},
			{
				pos = Vector(-40,-20,-16),
				ang = Angle(0,-90,12)
			},
		},
		
		
		FrontHeight = 14,
		FrontConstant = 24000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 24000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 6300,
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-66,40,7),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 70,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_01_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/big_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_09.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.065,0,0.065,0.17,0.29,0.41,0.58,0.67}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_ford_explorer_washington_hp", V )