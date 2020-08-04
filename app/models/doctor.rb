class Doctor < ActiveRecord::Base
  # Associations
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  # Validations
  # validates :col_name, validation1, validation2, ...
  validates :first_name, presence: true
  validates :specialty, presence: true
  validates :last_name, uniqueness: { scope: :first_name }
end
