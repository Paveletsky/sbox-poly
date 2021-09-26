local V = {
	Name = "Kenworth W900 AeroCab Sleeper",
	Model = "models/ats/vehicles/kenworth_w900_ai_c.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 8500,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-161.5,0,-2.35))
                ent:SetTrailerCenterposition(Vector(-161.5,0,-2.35))
            end
        end,
		
		EnginePos = Vector(160,0,20),
		
		LightsTable = "ats_kenworth_w900_ai_b",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/chrome/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/chrome/rear.mdl",
		
		CustomWheelPosFL = Vector(133,44.97,-35),
		CustomWheelPosFR = Vector(133,-44.97,-35),
		CustomWheelPosML = Vector(-136.83,40.27,-33),
		CustomWheelPosMR = Vector(-136.83,-40.27,-33),		
		CustomWheelPosRL = Vector(-193.29,40.27,-33),
		CustomWheelPosRR = Vector(-193.29,-40.27,-33),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(30,-20,63),
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
		
		PassengerSeats = {
			{
				pos = Vector(40,-22,24),
				ang = Angle(0,-90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(22.34,52.2,131.15),
				ang = Angle(-45,-25,0),
			},
			{
				pos = Vector(22.34,-52.2,131.15),
				ang = Angle(-45,25,0),
			},
		},
		
		FrontHeight = 5,
		FrontConstant = 34000,
		FrontDamping = 6000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 5,
		RearConstant = 34000,
		RearDamping = 6000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 125,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 75,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3600,
		PeakTorque = 300,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-59.86,43,-2.14),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 1135,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/kenworth_w900_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/kenworth_w900_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/kenworth_w900_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/kenworth_w900_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "ats/vehicles/horns/horn_kenworth_w900_new.wav",
		snd_bloweron = "ats/vehicles/kenworth_w900_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.2,
		Gears = {-0.26,0,0.07,0.16,0.25,0.36,0.49,0.6,0.79,1,1.23,1.4,1.7,2}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_kenworth_w900_ai_c", V )