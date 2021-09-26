local V = {
	Name = "Kenworth T680 High Rise Sleeper",
	Model = "models/ats/vehicles/kenworth_t680_ai_c.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - Industrial",
	SpawnOffset = Vector(0,0,50),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 8227,
		
		OnSpawn = function(ent)
            if ent.GetCenterposition != nil then
                ent:SetCenterposition(Vector(-148.77,0,0))
                ent:SetTrailerCenterposition(Vector(-148.77,0,0))
            end
        end,
		
		EnginePos = Vector(135,0,15),
		
		LightsTable = "ats_kenworth_t680_ai_b",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/chrome/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/chrome/rear.mdl",
		
		CustomWheelPosFL = Vector(89.32,45.85,-33),
		CustomWheelPosFR = Vector(89.32,-45.85,-33),
		CustomWheelPosML = Vector(-122.88,39.61,-31),
		CustomWheelPosMR = Vector(-122.88,-39.61,-31),		
		CustomWheelPosRL = Vector(-179.35,39.61,-31),
		CustomWheelPosRR = Vector(-179.35,-39.61,-31),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 50,
		
		SeatOffset = Vector(12,-20,60),
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
				pos = Vector(28,-21,24),
				ang = Angle(0,-90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-74.6,-25.2,124.6),
				ang = Angle(-90,0,0),
			},
		},
		
		FrontHeight = 4,
		FrontConstant = 34000,
		FrontDamping = 6000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 4,
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
		PeakTorque = 320,
		PowerbandStart = 1500,
		PowerbandEnd = 3000,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-9.2,49.9,-3.4),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 1135,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/kenworth_t680_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/kenworth_t680_low.wav",
		Sound_MidPitch = 1.5,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/kenworth_t680_high.wav",
		Sound_HighPitch = 1.2,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/kenworth_t680_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "ats/vehicles/horns/horn_kenworth_t680.wav",
		snd_bloweron = "ats/vehicles/kenworth_t680_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.2,
		Gears = {-0.26,0,0.07,0.16,0.25,0.36,0.49,0.6,0.79,1,1.23,1.4,1.7,2}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_kenworth_t680_ai_c", V )