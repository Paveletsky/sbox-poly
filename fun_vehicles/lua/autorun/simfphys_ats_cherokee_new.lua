local V = {
	Name = "Jeep Grand Cherokee",
	Model = "models/ats/vehicles/cherokee.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,35),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2948,
		
		EnginePos = Vector(96,0,1),
		
		LightsTable = "ats_cherokee",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/20in_offroad.mdl",
		
		CustomWheelPosFL = Vector(68.8,37.8,-21),
		CustomWheelPosFR = Vector(68.8,-37.8,-21),	
		CustomWheelPosRL = Vector(-61.82,38,-21),
		CustomWheelPosRR = Vector(-61.82,-38,-21),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(3,-18,20),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ExhaustPositions = {
			{
				pos = Vector(-99.82,24.15,-18.64),
				ang = Angle(-90,0,0),
			},
			{
				pos = Vector(-99.82,-24.15,-18.64),
				ang = Angle(-90,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(7,-18,-15),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,18,-15),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,0,-15),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-40,-18,-15),
				ang = Angle(0,-90,0)
			},
		},
		
		Attachments = {
			{
				model = "models/ats/vehicles/cherokee_badge.mdl",
				color = Color(255,255,255,255),
				pos = Vector(0,0,0),
				ang = Angle(0,0,0)
			},
		},
		
		FrontHeight = 14,
		FrontConstant = 34000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 14,
		RearConstant = 34000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 100,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 6400,
		PeakTorque = 300,
		PowerbandStart = 2400,
		PowerbandEnd = 5500,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-60,-39.3,10),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 93,
		
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
		
		snd_horn = "ats/vehicles/horns/horn_car_06.wav",
		
		DifferentialGear = 0.25,
		Gears = {-0.07,0,0.065,0.17,0.29,0.41,0.58,0.67,0.76,0.9}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_cherokee_new", V )