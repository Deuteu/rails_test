class Datum < ActiveRecord::Base
  validates :phone, format: { with: /\+{0,1}\d{1,15}/, message: "Format allowed : (+)digits" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:"Format allowed : mail@domain.xx" }
  validates :year, :numericality => { greater_than: 1999 }
  validates :order, :numericality => { greater_than_or_equal_to: 0, less_than: 21 }
end
