RISED = {}

RISED.Config = {}

       -- Armors Resist --
RISED.Config.Armor1resist1270Chest = 0.5
RISED.Config.Armor2resist1270Chest = 0.4
RISED.Config.Armor3resist1270Chest = 0.3
RISED.Config.Armor4resist545Chest = 0.2
RISED.Config.Armor5resist103Chest = 0.1
RISED.Config.Armor6resist1270Chest = 0.25
RISED.Config.Armor7resist1270Chest = 0.35
RISED.Config.Armor8resist1270Chest = 0.45
RISED.Config.Armor9resist1270Chest = 0.55
RISED.Config.Armor10resist545Chest = 0.9
RISED.Config.Armor11resist103Chest = 0.85
RISED.Config.Armor12resist1270Chest = 0.15
       -- No Armor Resist Chest --
RISED.Config.NoArmor1270ResistChest = 2
       -- No Armor Resist Arms --
RISED.Config.NoArmor1270ResistArms = 1.6
       -- No Armor Resist Legs --
RISED.Config.NoArmor1270ResistLegs = 1.5
       -- No Armor Resist Head --
RISED.Config.NoArmor1270ResistHead = 2.5

hook.Add( "EntityTakeDamage", "EntityDamageExample", function( target, dmginfo )
	if target:IsPlayer() and dmginfo:GetDamageType() == DMG_BULLET then
        
        local WeaponClass = dmginfo:GetInflictor():GetActiveWeapon():GetClass()
        local weaponTable = weapons:Get(WeaponClass)

        if target:Armor() > 0 then
                
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                        
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor1resist1270Chest)
                end
                
            end

            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                                
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor2resist1270Chest)
                end
            
            end

            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then

                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor3resist1270Chest)
                end
            
            end

            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor4resist1270Chest)
                end
                        
            end
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor5resist1270Chest)
                end
                        
            end
            
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor6resist1270Chest)
                end
                        
            end

            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
            
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor7resist1270Chest)
                end
                
            end
            
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                                
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor8resist1270Chest)
                end
                        
            end
            
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor9resist1270Chest)
                end
                        
            end
            
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor10resist1270Chest)
                end
                        
            end
            
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor11resist1270Chest)
                end
                        
            end
                        
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.Armor12resist1270Chest)
                end
                        
            end
        
        end
        
        if target:Armor() == 0 then
            if (target:LastHitGroup() == 2 or target:LastHitGroup() == 3) then
                
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistChest)
                end
            
            end

            if (target:LastHitGroup() == 4 or target:LastHitGroup() == 5) then
                
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistArms)
                end
               
            end

            if (target:LastHitGroup() == 6 or target:LastHitGroup() == 7) then
                                
                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistLegs)
                end
            
            end
            
            if target:LastHitGroup() == 1 then

                if weaponTable.PrimaryAmmo == "12x70_ammo" then
                    target:ScaleDamage(RISED.Config.NoArmor1270ResistHead)
                end
            
            end


        end

	end
end)