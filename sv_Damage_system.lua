RISED = {}

RISED.Config = {}

       -- Armor Resist --
RISED.Config.ArmorOTAresistChest = 0.15

       -- No Armor Resist Chest --
RISED.Config.NoArmor545ResistChest = 1.5
RISED.Config.NoArmor103ResistChest = 2.5
RISED.Config.NoArmor76225ResistChest = 1.3
RISED.Config.NoArmor76239ResistChest = 1.45
RISED.Config.NoArmor76254ResistChest = 2
RISED.Config.NoArmor919ResistChest = 1.2
RISED.Config.NoArmor939ResistChest = 1.6
RISED.Config.NoArmor1270ResistChest = 2
       -- No Armor Resist Arms --
RISED.Config.NoArmor545ResistArms = 1.3
RISED.Config.NoArmor103ResistArms = 1.6
RISED.Config.NoArmor76225ResistArms = 1.2
RISED.Config.NoArmor76239ResistArms = 1.25
RISED.Config.NoArmor76254ResistArms = 1.8
RISED.Config.NoArmor919ResistArms = 1.2
RISED.Config.NoArmor939ResistArms = 1.4
RISED.Config.NoArmor1270ResistArms = 1.6
       -- No Armor Resist Legs --
RISED.Config.NoArmor545ResistLegs = 1.25
RISED.Config.NoArmor103ResistLegs = 1.55
RISED.Config.NoArmor76225ResistLegs = 1.15
RISED.Config.NoArmor76239ResistLegs = 1.2
RISED.Config.NoArmor76254ResistLegs = 1.75
RISED.Config.NoArmor919ResistLegs = 1.15
RISED.Config.NoArmor939ResistLegs = 1.35
RISED.Config.NoArmor1270ResistLegs = 1.5
       -- No Armor Resist Head --
RISED.Config.NoArmor545ResistHead = 1.8
RISED.Config.NoArmor103ResistHead = 3
RISED.Config.NoArmor76225ResistHead = 1.5
RISED.Config.NoArmor76239ResistHead = 1.75
RISED.Config.NoArmor76254ResistHead = 2.5
RISED.Config.NoArmor919ResistHead = 1.4
RISED.Config.NoArmor939ResistHead = 2
RISED.Config.NoArmor1270ResistHead = 2.5

hook.Add( "EntityTakeDamage", "EntityDamageExample", function( target, dmginfo )
	if ( target:IsPlayer()) then
        
        local WeaponClass = dmginfo:GetInflictor():GetActiveWeapon():GetClass()
        local weaponTable = weapons:Get(WeaponClass)

        if target:Armor() > 0 then
           if weaponTable.PrimaryAmmo = "5,45x39_ammo" then
                if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                    target:ScaleDamage(RISED.Config.ArmorOTAresistChest)
                end
            end
        end
        
        if target:Armor() == 0 then
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                
                if weaponTable.PrimaryAmmo = "5,45x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor545ResistChest)
                end
                
                if weaponTable.PrimaryAmmo = "10,3x77_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor103ResistChest)
                end
                
                if weaponTable.PrimaryAmmo = "7,62x25_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76225ResistChest)
                end

                if weaponTable.PrimaryAmmo = "7,62x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76239ResistChest)
                end

                if weaponTable.PrimaryAmmo = "7,62x54R_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76239ResistChest)
                end

                if weaponTable.PrimaryAmmo = "9x19_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor919ResistChest)
                end

                if weaponTable.PrimaryAmmo = "9x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor939ResistChest)
                end

                if weaponTable.PrimaryAmmo = "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistChest)
                end
            
            end

            if (target:LastHitGroup() == 4 or target:LastHitGroup() == 5) then

                if weaponTable.PrimaryAmmo = "5,45x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor545ResistArms)
                end
                                
                if weaponTable.PrimaryAmmo = "10,3x77_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor103ResistArms)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x25_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76225ResistArms)
                end
                
                if weaponTable.PrimaryAmmo = "7,62x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76239ResistArms)
                end
                
                if weaponTable.PrimaryAmmo = "7,62x54R_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76254ResistArms)
                end
                
                if weaponTable.PrimaryAmmo = "9x19_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor919ResistArms)
                end
                
                if weaponTable.PrimaryAmmo = "9x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor939ResistArms)
                end
                
                if weaponTable.PrimaryAmmo = "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistArms)
                end
               
            end

            if (target:LastHitGroup() == 6 or target:LastHitGroup() == 7) then

                if weaponTable.PrimaryAmmo = "5,45x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor545ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "10,3x77_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor103ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x25_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76225ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76239ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x54R_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76254ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "9x19_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor919ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "9x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor939ResistLegs)
                end
                                
                if weaponTable.PrimaryAmmo = "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistLegs)
                end
            end
            
            if target:LastHitGroup() == 1 then
            
                if weaponTable.PrimaryAmmo = "5,45x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor545ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "10,3x77_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor103ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x25_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76225ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76239ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "7,62x54R_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor76254ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "9x19_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor919ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "9x39_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor939ResistHead)
                end
                                
                if weaponTable.PrimaryAmmo = "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistHead)
                end
            end


        end

	end
end)

hook.Add("PlayerUse", "Armor_Test", function(ply,ent)
    if ent:GetClass() == "OTA Armor" then
    end
end)