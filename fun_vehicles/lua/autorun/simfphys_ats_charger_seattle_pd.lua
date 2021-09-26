local V = {
	Name = "Dodge Charger Seattle Police",
	Model = "models/ats/vehicles/charger_police.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Pacific Region",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1929,
		
		EnginePos = Vector(100,0,0),
		
		LightsTable = "ats_charger_generic_police",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_charger.mdl",
		
		CustomWheelPosFL = Vector(66.94,33.16,-12),
		CustomWheelPosFR = Vector(66.94,-33.16,-12),	
		CustomWheelPosRL = Vector(-60.62,33.58,-12),
		CustomWheelPosRR = Vector(-60.62,-33.58,-12),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-5,-16,20),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			Bodygroups = {4},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-102.65,21.89,-14.34),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-102.65,-21.89,-14.34),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(5,-17,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,17,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,0,-12),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-35,-17,-12),
				ang = Angle(0,-90,15)
			},
		},
		
		FrontHeight = 9,
		FrontConstant = 32000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 9,
		RearConstant = 32000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 90,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 65,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5250,
		PeakTorque = 400,
		PowerbandStart = 2400,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-75.48,-36.66,10),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 72,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/muscle_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/muscle_01_low.wav",
		Sound_MidPitch = 1.2,
		Sound_MidVolume = 1.5,
		Sound_MidFadeOutRPMpercent = 43,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/muscle_01_high.wav",
		Sound_HighPitch = 1.3,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 37,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/muscle_01_throttle.wav",
		Sound_ThrottlePitch = 0.75,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_08.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.065,0,0.075,0.17,0.29,0.41,0.58}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_charger_seattle_pd", V )