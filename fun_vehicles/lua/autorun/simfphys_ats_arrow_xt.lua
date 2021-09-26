local V = {
	Name = "Pierce Arrow XT",
	Model = "models/ats/vehicles/arrow_xt.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "ATS - EM - Generic",
	SpawnOffset = Vector(0,0,70),
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 5055,
		
		EnginePos = Vector(179,0,-30),
		
		LightsTable = "ats_arrow_xt",
		
		CustomWheels = true,
		CustomSuspensionTravel = 1.5,
			
		CustomWheelModel = "models/ats/vehicles/wheel/chrome/front.mdl",
		CustomWheelModel_R = "models/ats/vehicles/wheel/chrome/rear.mdl",
		
		CustomWheelPosFL = Vector(108.23,46.94,-54),
		CustomWheelPosFR = Vector(108.23,-46.94,-54),		
		CustomWheelPosRL = Vector(-92.81,39.58,-54),
		CustomWheelPosRR = Vector(-92.81,-39.58,-54),
		CustomWheelAngleOffset = Angle(0,-90,0),
		
		CustomMassCenter = Vector(0,0,0),		
		
		CustomSteerAngle = 35,
		
		SeatOffset = Vector(131,-34,35),
		SeatPitch = 12,
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
				pos = Vector(-51.72,-47.31,-64.25),
				ang = Angle(-90,90,0),
			},
		},
		
		PassengerSeats = {
			{
				pos = Vector(138,-33,-25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(53,35,-25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(53,-35,-25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(107,34,-25),
				ang = Angle(0,90,0)
			},
			{
				pos = Vector(107,-34,-25),
				ang = Angle(0,90,0)
			},
		},
		
		FrontHeight = 16,
		FrontConstant = 50000,
		FrontDamping = 10000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 16,
		RearConstant = 50000,
		RearDamping = 10000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 1.4,
		
		MaxGrip = 200,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 100,
		BulletProofTires = false,
		
		IdleRPM = 800,
		LimitRPM = 3000,
		PeakTorque = 400,
		PowerbandStart = 1500,
		PowerbandEnd = 2600,
		Turbocharged = false,
		Supercharged = true,
		DoNotStall = false,
		
		FuelFillPos = Vector(-113.26,51.31,-24),
		FuelType = FUELTYPE_DIESEL,
		FuelTankSize = 250,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,

		Sound_Idle = "ats/vehicles/truck_01_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "ats/vehicles/truck_01_low.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 2,
		Sound_MidFadeOutRPMpercent = 40,
		Sound_MidFadeOutRate = 0.3,
		
		Sound_High = "ats/vehicles/truck_01_high.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1.5,
		Sound_HighFadeInRPMpercent = 40,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "ats/vehicles/truck_01_throttle.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "ats/vehicles/horns/horn_fire_truck.wav",
		snd_bloweron = "ats/vehicles/volvo_vnl_turbo.wav",
		snd_bloweroff = "common/null.wav",
		
		DifferentialGear = 0.3,
		Gears = {-0.06,0,0.07,0.17,0.26,0.4,0.5,0.6}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ats_arrow_xt", V )

local light_table = {
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector(183,37.72,-28.18),
	L_HeadLampAng = Angle(17,0,0),
	R_HeadLampPos = Vector(183,-37.72,-28.18),
	R_HeadLampAng = Angle(10,0,0),
	
	-- projected texture - rear
	L_RearLampPos = Vector(-180.92,42.7,-38.59),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-180.92,-42.7,-38.59),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {   -- lowbeam
		{
			pos = Vector(183,37.72,-28.18),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(183,-37.72,-28.18),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,238,200,255),
		},
		{
			pos = Vector(168.47,0,30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(168.47,12.61,30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(168.47,-12.61,30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(168.47,42,30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(168.47,-42,30),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(154,51,29.9),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
		{
			pos = Vector(154,-51,29.9),
			material = "sprites/light_ignorez",
			size = 30,
			color = Color(255,135,0,255),
		},
	},
	
	Headlamp_sprites = {
		{pos = Vector(183,30.58,-28.18),size = 100,material = "sprites/light_ignorez"},
		{pos = Vector(183,-30.58,-28.18),size = 100,material = "sprites/light_ignorez"},
	},
	
	Rearlight_sprites = {
		{
			pos = Vector(-180.92,42.7,-38.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-180.92,-42.7,-38.59),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,0,0,255),
		},
	},
	Brakelight_sprites = {
		{
			pos = Vector(-180.92,42.7,-38.59),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
		{
			pos = Vector(-180.92,-42.7,-38.59),
			material = "sprites/light_ignorez",
			size = 70,
			color = Color(255,0,0,255),
		},
	},
	Reverselight_sprites = {
		{
			pos = Vector(-180.92,42.7,-50),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
		{
			pos = Vector(-180.92,-42.7,-50),
			material = "sprites/light_ignorez",
			size = 60,
			color = Color(255,255,255,255),
		},
	},
	
	ems_sounds = {"ats/vehicles/horns/siren_fire_truck_wail.wav","ats/vehicles/horns/siren_fire_truck_yelp.wav"},
	ems_sprites = {
		--front lightbar left
		{
			pos = Vector(159.82,3.68,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(159.82,11.4,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(159.82,19,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
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
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(159.82,27,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
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
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(153.27,32,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
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
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		--front lightbar right
		{
			pos = Vector(159.82,-3.68,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						--
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						Color(255,255,255,255),
						Color(255,255,255,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(159.82,-11.4,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(159.82,-19,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(159.82,-27,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(153.27,-32,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		--rear lightbar
		{
			pos = Vector(147.27,3.68,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(147.27,11.4,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(147.27,19,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		{
			pos = Vector(147.27,27,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
					},
			Speed = 0.05
		},
		--
		{
			pos = Vector(147.27,-3.68,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(147.27,-11.4,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(147.27,-19,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		{
			pos = Vector(147.27,-27,40),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						Color(255,0,0,255),
						Color(255,0,0,150),
						--
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
		--left side reds
		{
			pos = Vector(132.68,50,39),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(183.61,51.45,-50.63),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(183,30.58,-18.27),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(-172,52,26),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(-180.92,42.87,-33.31),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(-180.92,46,20.76),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		--left side whites
		{
			pos = Vector(183,37.57,-18.27),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(100.63,52.26,-17.55),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-94.35,52.44,-21.73),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-180.92,28.3,-30.54),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--right side reds
		{
			pos = Vector(132.68,-50,39),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(183.61,-51.45,-50.63),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(183,-30.58,-18.27),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(-172,-52,26),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(-180.92,-42.87,-33.31),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		{
			pos = Vector(-180.92,-46,20.76),
			material = "sprites/light_ignorez",
			size = 80,
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
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.065
		},
		--right side whites
		{
			pos = Vector(183,-37.57,-18.27),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(100.63,-52.26,-17.55),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-94.35,-52.44,-21.73),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		{
			pos = Vector(-180.92,-28.3,-30.54),
			material = "sprites/light_ignorez",
			size = 80,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						--
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(255,255,255,255),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.06
		},
		--rotary
		{
			pos = Vector(-175.34,31.55,51.89),
			material = "sprites/light_ignorez",
			size = 90,
			Colors = {
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(255,255,255,20),
						Color(255,255,255,60),
						Color(255,255,255,100),
						Color(255,255,255,140),
						Color(255,255,255,180),
						Color(255,255,255,220),
						Color(255,255,255,255),
						Color(255,255,255,220),
						Color(255,255,255,180),
						Color(255,255,255,140),
						Color(255,255,255,100),
						Color(255,255,255,60),
						Color(255,255,255,20),
						Color(0,0,0,0),
						Color(0,0,0,0),
						Color(0,0,0,0),
					},
			Speed = 0.05
		},
	},
	
	DelayOn = 0,
	DelayOff = 0,
	
	Turnsignal_sprites = {
		Left = {
			{
				pos = Vector(180.78,48,-28.26),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-66.36,53.22,-33.89),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-180.92,42.7,-44.33),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
		Right = {
			{
				pos = Vector(180.78,-48,-28.26),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-66.36,-53.22,-33.89),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
			{
				pos = Vector(-180.92,-42.7,-44.33),
				material = "sprites/light_ignorez",
				size = 60,
				color = Color(255,135,0,255),
			},
		},
	}
	
}
list.Set( "simfphys_lights", "ats_arrow_xt", light_table)