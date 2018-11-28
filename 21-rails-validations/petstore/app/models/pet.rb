class Pet < ApplicationRecord

    validates:creature, presence: true

    validate :is_it_cute_tho?

    def is_it_cute_tho?
      if self.cute == false
        errors.add(:cute, "pet gotta be cute")
      end
    end
end
