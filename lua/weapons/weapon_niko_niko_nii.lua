SWEP.Base = "weapon_base"

-- Name, Author & Spawnable
SWEP.PrintName = "Nico Nico Nii"
SWEP.Author = "PrikolMen:-b"
SWEP.Spawnable = true

-- Info Box
if (CLIENT) then
    SWEP.DrawWeaponInfoBox = false
end

-- Info
SWEP.Purpose = "I don't even know"
SWEP.Instructions = "Try left click or right click :)"

-- Models
SWEP.ViewModel = "models/weapons/v_hands.mdl"
SWEP.WorldModel = ""

-- Primary
SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = 0
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = false
SWEP.Primary.Sound = Sound( "niko_niko_nii_swep/primary.mp3" )

-- Secondary
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Sound = Sound( "niko_niko_nii_swep/secondary.mp3" )

-- Reload
SWEP.ReloadSound = Sound( "niko_niko_nii_swep/reload.mp3" )

-- HoldType
SWEP.HoldType = "normal"

function SWEP:Inizialize()
    self:SetWeaponHoldType( self.HoldType )
end

function SWEP:PrimaryAttack()
    if (CLIENT) then return end
	self:EmitSound( self.Primary.Sound )
end

function SWEP:SecondaryAttack()
    if (CLIENT) then return end
	self:EmitSound( self.Secondary.Sound )
end

function SWEP:Reload()
    if (CLIENT) then return end
    self:EmitSound( self.ReloadSound )
end