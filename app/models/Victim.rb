class Victim < ApplicationRecord    #=> Tabla: victims
    validates :name, presence: true
    has_many :attacks , dependent: :destroy
    has_many :monsters, :through => :attacks
end