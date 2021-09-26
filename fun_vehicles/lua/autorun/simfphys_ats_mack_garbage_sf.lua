local V = {
	Name = "Mack RD-690 Garbage Truck 'Waste Management Services'",
	Model = "models/ats/vehicles/mack_garbage.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 7000,
		
		EnginePos = Vector(176,0,6),
		
		LightsTable = "ats_mack_garbage",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/truck/steel/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/truck/steel/rear.mdl",
		
		CustomWheelPosFL = Vector(144,44.98,-28),
		CustomWheelPosFR = Vector(144,-44.98,-28),
		CustomWheelPosML = Vector(-76,40.28,-28),
		CustomWheelPosMR = Vector(-76,-40.28,-28),
		CustomWheelPosRL = Vector(-137.94,40.28,-28),
		CustomWheelPosRR = Vector(-137.94,-40.28,-28),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(63,-23,55),
		SeatPitch = 10,
		SeatYaw = 90,
		
		ModelInfo = {
			Color = Color(211,227,224,255),
			Skin = 3,
		},
		
		OnTick = 
		function(ent)
			local function rev()
				if ( ent:GetGear() == 1) then
					if ( CurTime() % 0.225 ~= 0 ) then
					else
						sound.Play( "ats/vehicles/horns/rev_gen.wav", ent:GetPos())
					end
				end
			end
			rev()
		end,
		
		ExhaustPositions = {
			{
				pos = Vector(55.42,-52.99,67.65),
				ang = Angle(-80,90,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(77,-23,11),
				ang = Angle(0,-90,10)
			},
		},
		
		FrontHeight = 16,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 12,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 150,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3500,
		PeakTorque = 200,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(63,47,-8.73),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 152,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/truck_03_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_03_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_03_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_truck_03.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.22,
		Gears = {-0.07,0,0.07,0.17,0.26,0.4,0.5,0.6,0.7}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_mack_garbage_sf", V )