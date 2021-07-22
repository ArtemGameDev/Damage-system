hook.Add( "EntityTakeDamage", "EntityDamageExample", function( target, dmginfo )
	if ( target:IsPlayer()) then
        
        if target:Armor() > 0 then
            
            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 1 and l1 == 50 then
                dmginfo:SetDamage(l1) -- Chest
            end

            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 1 and m1 == 40 then
                dmginfo:SetDamage(m1) -- Chest
            end
            
            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 1 and h1 == 30 then
                dmginfo:SetDamage(h1) -- Chest
            end
            
            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 1 and l2 == 35 then
                dmginfo:SetDamage(l2) -- Stomach
            end
            
            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 1 and m2 == 30 then
                dmginfo:SetDamage(m2) -- Stomach
            end

            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 1 and h2 == 25 then
                dmginfo:SetDamage(h2) -- Stomach
            end
        
        end
        
        if target:Armor() == 0 then

            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 1 then
                dmginfo:SetDamage(55) -- Chest
            end
            
            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 1 and l2 != 50 and h2 != 30 and m2 != 40 then
                dmginfo:SetDamage(40) -- Stomach
            end
            
            if target:LastHitGroup() == 4 and dmginfo:GetAmmoType() == 1 then
                dmginfo:SetDamage(25) -- Arm
            end

            if target:LastHitGroup() == 5 and dmginfo:GetAmmoType() == 1 then
                dmginfo:SetDamage(25) -- Arm
            end

            if target:LastHitGroup() == 6 and dmginfo:GetAmmoType() == 1 then
                dmginfo:SetDamage(20) -- Leg
            end

            if target:LastHitGroup() == 7 and dmginfo:GetAmmoType() == 1 then
                dmginfo:SetDamage(20) -- Leg
            end

            if target:LastHitGroup() == 1 and dmginfo:GetAmmoType() == 1 then
                dmginfo:SetDamage(60) -- Head
            end

        end

        if target:Armor() > 0 then
            
            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 7 and l3 == 48 then
                dmginfo:SetDamage(l3) -- Chest
            end

            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 7 and m3 == 30 then
                dmginfo:SetDamage(m3) -- Chest
            end
            
            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 7 and h3 == 15 then
                dmginfo:SetDamage(h3) -- Chest
            end
            
            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 7 and l4 == 33 then
                dmginfo:SetDamage(l4) -- Stomach
            end
            
            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 7 and m4 == 20 then
                dmginfo:SetDamage(m4) -- Stomach
            end

            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 7 and h4 == 10 then
                dmginfo:SetDamage(h4) -- Stomach
            end
        
        end
        
        if target:Armor() == 0 then

            if target:LastHitGroup() == 2 and dmginfo:GetAmmoType() == 7 then
                dmginfo:SetDamage(50) -- Chest
            end
            
            if target:LastHitGroup() == 3 and dmginfo:GetAmmoType() == 7 then
                dmginfo:SetDamage(40) -- Stomach
            end
            
            if target:LastHitGroup() == 4 and dmginfo:GetAmmoType() == 7 then
                dmginfo:SetDamage(15) -- Arm
            end

            if target:LastHitGroup() == 5 and dmginfo:GetAmmoType() == 7 then
                dmginfo:SetDamage(15) -- Arm
            end

            if target:LastHitGroup() == 6 and dmginfo:GetAmmoType() == 7 then
                dmginfo:SetDamage(10) -- Leg
            end

            if target:LastHitGroup() == 7 and dmginfo:GetAmmoType() == 7 then
                dmginfo:SetDamage(10) -- Leg
            end

            if target:LastHitGroup() == 1 and dmginfo:GetAmmoType() == 7 then 
                dmginfo:SetDamage(50) -- Head
            end

        end

	end
end)

hook.Add("PlayerUse", "Armor_Test", function(ply,ent)
    if ent:GetClass() == "light kevlar armor" then
        l1 = 50 l2 = 35 l3 = 48 l4 = 33
        h1 = nil h2 = nil h3 = nil h4 = nil
        m1 = nil m2 = nil m3 = nil m4 = nil
    end
    
    if ent:GetClass() == "heavy kevlar armor" then
        h1 = 30 h2 = 25 h3 = 15 h4 = 10
        l1 = nil l2 = nil l3 = nil l4 = nil
        m1 = nil m2 = nil m3 = nil m4 = nil
    end

    if ent:GetClass() == "medium kevlar armor" then
        m1 = 40 m2 = 30 m3 = 30 m4 = 20
        l1 = nil l2 = nil l3 = nil
        h1 = nil h2 = nil l4 = nil
    end
end)        