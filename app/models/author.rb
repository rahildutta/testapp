class Author < ActiveRecord::Base
  validates :Name, :Address, presence: true
  validate :is_validate_no_greater_zero, on: [:create, :update]
  validate :is_auth_actve, on: :destroy
  has_many :books
  def is_validate_no_greater_zero
    if no_of_books_published < 1 && active===true
      errors.add(:base, " Author cannot be active when no of books is less than zero!!")
    end
    def is_auth_actve
      if active===true
        errors.add(:base, " Author cannot be deleted!!")
      end
    end
  end
end

