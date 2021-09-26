local V = {
	Name = "Ford Crown Victoria Police",
	Model = "models/ats/vehicles/crown_victoria_generic_old.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Legacy",
	SpawnOffset = Vector(0,0,20),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1840,
		
		EnginePos = Vector(101,0,4),
		
		LightsTable = "ats_crown_victoria_generic",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/18in_police.mdl",
		
		CustomWheelPosFL = Vector(69.89,34,-10),
		CustomWheelPosFR = Vector(69.89,-34,-10),	
		CustomWheelPosRL = Vector(-51.42,34.5,-10),
		CustomWheelPosRR = Vector(-51.42,-34.5,-10),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-2,-16,20),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-101.57,30.71,-11.51),
				ang = Angle(-145,0,0),
			},
			{
				pos = Vector(-101.57,-30.71,-11.51),
				ang = Angle(-145,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(8,-16,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-30,18,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-30,0,-10),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-30,-18,-10),
				ang = Angle(0,-90,15)
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
		LimitRPM = 4900,
		PeakTorque = 250,
		PowerbandStart = 2200,
		PowerbandEnd = 4600,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-67,-38.16,12),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 71,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/vic_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/vic_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 50,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/vic_high.wav",
		Sound_HighPitch = 0.9,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/vic_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_car_08.wav",
		
		DifferentialGear = 0.45,
		Gears = {-0.06,0,0.075,0.17,0.29,0.41}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_crown_victoria_generic_old", V )