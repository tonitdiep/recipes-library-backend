class Recipe < ApplicationRecord
    validates :name, presence: true
    # validates :skill_level, inclusion: { in: %w(easy, medium, hard)}
end
