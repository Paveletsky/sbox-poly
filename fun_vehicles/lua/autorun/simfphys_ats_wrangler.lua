local V = {
	Name = "Jeep Wrangler",
	Model = "models/ats/vehicles/wrangler.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - SUVs & Pickups",
	SpawnOffset = Vector(0,0,10),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 1705,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-83.93,0,-4.31))
                ent:SetTrailerCenterposition(Vector(-83.93,0,-4.31))
            end
        end,
		
		EnginePos = Vector(73,0,16),
		
		LightsTable = "ats_wrangler",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/car/generic/17in_offroad.mdl",
		
		CustomWheelPosFL = Vector(58.46,37.48,-5.5),
		CustomWheelPosFR = Vector(58.46,-37.48,-5.5),	
		CustomWheelPosRL = Vector(-44.22,37.48,-5.5),
		CustomWheelPosRR = Vector(-44.22,-37.48,-5.5),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,1),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(-12,-19,36),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			Bodygroups = {0,1},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-69.4,-27,-5.62),
				ang = Angle(-110,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(-2,-19,2),
				ang = Angle(0,-90,15)
			},
			{
				pos = Vector(-43,16,5),
				ang = Angle(0,-90,10)
			},
			{
				pos = Vector(-43,-16,5),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 6,
		FrontConstant = 32000,
		FrontDamping = 2000,
		FrontRelativeDamping = 800,
		
		RearHeight = 6,
		RearConstant = 32000,
		RearDamping = 2000,
		RearRelativeDamping = 800,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.6,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 5200,
		PeakTorque = 250,
		PowerbandStart = 2500,
		PowerbandEnd = 5000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = false,
		
		FuelFillPos = Vector(-65.56,36.83,20.46),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 70,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/jeep_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/jeep_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 43,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/jeep_high.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 37,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/jeep_throttle.wav",
		Sound_ThrottlePitch = 0.75,
		Sound_ThrottleVolume = 0.5,
		
		snd_horn = "ats/vehicles/horns/horn_small_03.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.065,0,0.075,0.17,0.29,0.41,0.58,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_wrangler", V )