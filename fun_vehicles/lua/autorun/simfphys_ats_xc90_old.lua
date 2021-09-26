local V = {
	Name = "Volvo XC90",
	Model = "models/ats/vehicles/xc90_old.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Legacy",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2667,
		
		EnginePos = Vector(99,0,6),
		
		LightsTable = "ats_xc90",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad.mdl",
		
		CustomWheelPosFL = Vector(71.28,34.97,-17),
		CustomWheelPosFR = Vector(71.28,-34.97,-17),	
		CustomWheelPosRL = Vector(-52.25,35.43,-17),
		CustomWheelPosRR = Vector(-52.25,-35.43,-17),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(9,-17,25),
		SeatPitch = 10,
		SeatYaw = 90,
		
		PassengerSeats = {
			{
				pos = Vector(15,-18,-10),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-25,16,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-25,-16,-8),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-63,15,-6),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-63,-15,-6),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 34000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 10,
		RearConstant = 34000,
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
		LimitRPM = 5200,
		PeakTorque = 300,
		PowerbandStart = 2100,
		PowerbandEnd = 4700,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-63,-40,15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/big_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/big_03_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 60,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/sport_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 60,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/big_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_car_08.wav",
		
		DifferentialGear = 0.4,
		Gears = {-0.04,0,0.065,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_xc90_old", V )