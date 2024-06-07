class User < ApplicationRecord
    validates :nombre, presence: true
end
