local light_table = {
	ModernLights = true,
	-- projected texture / lamp pos   - front
	L_HeadLampPos = Vector( 0, 0, 0 ),
	L_HeadLampAng = Angle(0,90,0),
	R_HeadLampPos = Vector( 110, -24, 0 ),
	R_HeadLampAng = Angle(10,-5,0),
	-- projected texture - rear
	L_RearLampPos = Vector(-145,26,5),
	L_RearLampAng = Angle(25,180,0),
	R_RearLampPos = Vector(-145,-26,5),
	R_RearLampAng = Angle(25,180,0),
	
	Headlight_sprites = {},
	Headlamp_sprites = {},
	Rearlight_sprites = {
		{pos = Vector(-244,35.16,-53.69),size = 25},
		{pos = Vector(-244,-35.16,-53.69),size = 25},
	},
	Brakelight_sprites = {
		{pos = Vector(-244,27.99,-53.69),size = 25},
		{pos = Vector(-244,-27.99,-53.69),size = 25},
	},
	Reverselight_sprites = {
		{pos = Vector(-244,-10.57,-53.69),size = 25},
		{pos = Vector(-244,10.57,-53.69),size = 25},
	},
	FogLight_sprites = {},
	Turnsignal_sprites = {
		Right = {         --V Negitive is Right
		{pos = Vector(-244,-42.29,-53.69),size = 25},
		},
		Left = {        --V Positive is left
		{pos = Vector(-244,42.29,-53.69),size = 25},
		},
	},
	DelayOn = 0,
	DelayOff = 0,
}
list.Set( "simfphys_lights", "gtavtankersciv", light_table)

local V = {
	Name = "Ron Tanker",
	Model = "models/notakid/gtavredux/tanker/tanker_main.mdl",
	Class = "Utility",
	Category = "GTA V Trailers",
	SpawnOffset = Vector(0,0,120),
	SpawnAngleOffset = 90,

	FLEX = {
		Trailers = {
			inputPos = Vector(174.1,0,-58),
			inputType = "axis",
		}
	},

	Members = {
		Mass = 1800,
		NAKTankerHB = {
            Tank = {
                OBBMax = Vector(228,55,43),
                OBBMin = Vector(-243,-55,-44),
            },
		},
        -- AirFriction = -8000,
        OnSpawn = function(ent)
			NAK.DisableUse(ent)NAK.TrailerLegs( ent, Vector(62,18,-115), 60 )NAK.TankerHitbox( ent )
        end,

		LightsTable = "gtavtankersciv",
	
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/notakid/gtavredux/armytrailer/armytrailer_wheel.mdl",
		CustomWheelPosFL = Vector(-140.5,-41,-80),
		CustomWheelPosFR = Vector(-140.5,41,-80),
		CustomWheelPosRL = Vector(-193.2,-41,-80),
		CustomWheelPosRR = Vector(-193.2,41,-80),
		CustomWheelAngleOffset = Angle(180,-90,180),
		FrontWheelRadius = 22,
		RearWheelRadius = 22,
		
		StrengthenSuspension = true,
		
		CustomMassCenter = Vector(180,0,-5),
		
		CustomSteerAngle = 32,
		FirstPersonViewPos = Vector(0,-12,7),	
		SeatOffset = Vector(-17,-20.5,20),
		SeatPitch = 0,
		SeatYaw = 90,

		EnginePos = Vector(0,0,-20),

		FuelType = FUELTYPE_NONE,
		FuelFillPos = Vector(0,0,0),
		FuelTankSize = 0,
		
		FrontHeight = 4, 
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,
		RearHeight = 4, 
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,
		
		TurnSpeed = 4,
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 600,

		MaxGrip = 53,
		Efficiency = 1.1,
		GripOffset = 0,
		BrakePower = 40,

		IdleRPM = 600,
		LimitRPM = 5000,
		PeakTorque = 220,
		PowerBias = 1,
		PowerbandStart = 1500,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,

		snd_horn = "common/null.wav",
		EngineSoundPreset = 1,
		snd_pitch = 1,
		snd_idle = "common/null.wav",
		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav",
		snd_low_pitch = 1,
		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_pitch = 1,

		DifferentialGear = 0.1,
		Gears = {-1,0,1}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_gtav_tanker", V )
--//LAZY DUPLICATION OF TABLE
local V2 = {}
for k,v in pairs(V) do
    V2[k] = v
end
--//Heist trailer
V2.Name = "Civ Tanker"
V2.Model = "models/notakid/gtavredux/tanker2/tanker2_main.mdl"
list.Set( "simfphys_vehicles", "sim_fphys_gtav_tanker2", V2 )