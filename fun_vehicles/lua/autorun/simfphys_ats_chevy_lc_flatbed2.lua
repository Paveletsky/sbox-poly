local V = {
	Name = "Chevrolet Low Cab Forward Flatbed",
	Model = "models/ats/vehicles/chevy_lc_flatbed2.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 4500,
		
		EnginePos = Vector(125,0,-6),
		
		LightsTable = "ats_chevy_lc_flatbed",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/cargo/front_cargo.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/cargo/rear_cargo.mdl",
		
		CustomWheelPosFL = Vector(83.55,37.41,-40),
		CustomWheelPosFR = Vector(83.55,-37.41,-40),		
		CustomWheelPosRL = Vector(-61.61,41.15,-40),
		CustomWheelPosRR = Vector(-61.61,-41.15,-40),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(74,-24,46),
		SeatPitch = 10,
		SeatYaw = 90,
		
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
				pos = Vector(-28.41,14.27,-34.63),
				ang = Angle(-140,0,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(80,-28,0),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(80,-4,0),
				ang = Angle(0,-90,0)
			},
		},
		
		FrontHeight = 0,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 0,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 150,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 55,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(41.14,43.12,-12.5),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 378,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/truck_02_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_02_low.wav",
		Sound_MidPitch = 1.3,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_03_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_03_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_van_05.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.35,
		Gears = {-0.045,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_chevy_lc_flatbed2", V )