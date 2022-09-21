class Attack < ApplicationRecord    #=> Tabla: attacks
    belongs_to :monster 
    belongs_to :victim
    validate :level_mayor_no_ataca_edad_menor

    def level_mayor_no_ataca_edad_menor
        if ((monster.scare_level>1) && ((Date.today - victim.birthdate)<6570))
            errors.add(:scare_level,"level")
        end
    end
end