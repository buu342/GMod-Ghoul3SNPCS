AddCSLuaFile()

ENT.Base 			= "base_nextbot"
ENT.Spawnable		= true

function ENT:Initialize()
	self:SetModel("models/props_junk/GlassBottle01a.mdl")
	if SERVER then
		self.npc = ents.Create( "sent_jitterskull" )
		if ( !IsValid( self.npc ) ) then return end
		self.npc:SetPos( self:GetPos() + Vector(0,0,8) )
		self.npc:Spawn()
		self.npc:Activate()
	end
	self:SetSolid(SOLID_NONE)
	self:SetCollisionGroup(COLLISION_GROUP_NONE)
	self:DrawShadow(false)
	self:SetGravity(0)
	self:SetNoDraw(true)
end

function ENT:RunBehaviour()
	while true do
		coroutine.wait( 9001 )
	end
end

function ENT:Think()
	if !IsValid(self.npc) && SERVER then
		self:Remove()
	end
end

function ENT:OnRemove()
	if SERVER && IsValid(self.npc) then
		self.npc:Remove()
	end
end

function ENT:Draw()

end


list.Set( "NPC", "npc_jitterskull", {
	Name = "Jitterskull",
	Class = "npc_jitterskull",
	Category = "Ghouls"
} )