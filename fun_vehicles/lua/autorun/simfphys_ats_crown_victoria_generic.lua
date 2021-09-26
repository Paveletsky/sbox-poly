local V = {
	Name = "Ford Crown Victoria Police",
	Model = "models/ats/vehicles/crown_victoria_generic.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Generic",
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
list.Set( "simfphys_vehicles", "sim_fphys_ats_crown_victoria_generic", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(102.98,25.88,5.13),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(102.98,-25.88,5.13),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-98.23,31,10.49),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-98.23,-31,10.49),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(102.98,25.88,5.13),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(102.98,-25.88,5.13),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(98.94,31.15,4.44),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(98.94,-31.15,4.44),
			material = "sprites/light_ignorez",
			size = 40,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(102.98,25.88,5.13),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(102.98,-25.88,5.13),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-98.23,31,10.49),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-98.23,-31,10.49),
			material = "sprites/light_ignorez",
			size = 80,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-65,0,21.38),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-102.33,9.45,9.25),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-102.33,-9.45,9.25),
			material = "sprites/light_ignorez",
			size = 50,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"ats/vehicles/horns/siren_01_wail.wav","ats/vehicles/horns/siren_01_yelp.wav"},
	ems_sprites = {
		--lightbar left
		{
			pos = Vector(-2.81,6.29,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-2.81,14.27,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-2.81,20.99,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--
		{
			pos = Vector(-8.71,25.24,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--
		{
			pos = Vector(-14.17,6.29,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-14.17,14.27,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-14.17,20.99,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--lightbar right
		{
			pos = Vector(-2.81,-6.29,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-2.81,-14.27,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-2.81,-20.99,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--
		{
			pos = Vector(-8.71,-25.24,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--
		{
			pos = Vector(-14.17,-6.29,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-14.17,-14.27,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		{
			pos = Vector(-14.17,-20.99,39.11),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
					},
			Speed = 0.075
		},
		--bullbar
		{
			pos = Vector(116.36,4.19,7),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		{
			pos = Vector(116.36,10.42,7),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		--
		{
			pos = Vector(116.36,-4.19,7),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		{
			pos = Vector(116.36,-10.42,7),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.07
		},
		--grille and back window
		{
			pos = Vector(108.82,10.86,2.63),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(255,0,0,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.03
		},
		{
			pos = Vector(108.82,-10.86,2.63),
			material = "sprites/light_ignorez",
			size = 40,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.03
		},
		--
		{
			pos = Vector(-61.3,19.7,20.33),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.03
		},
		{
			pos = Vector(-61.3,-19.7,20.33),
			material = "sprites/light_ignorez",
			size = 60,
			Colors = {
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.03
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(94.37,35.07,4.16),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeLeft = {
			{
				pos = Vector(-98.23,31,10.49),
				material = "sprites/light_ignorez",
				size = 80,
				color = Color(255,0,0,255),
			},
		},
		Right = {
			{
				pos = Vector(94.37,-35.07,4.16),
				material = "sprites/light_ignorez",
				size = 50,
				color = Color(255,135,0,255),
			},
		},
		TurnBrakeRight = {
			{
				pos = Vector(-98.23,-31,10.49),
				material = "sprites/light_ignorez",
				size = 80,
				color = Color(255,0,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_crown_victoria_generic", light_table)