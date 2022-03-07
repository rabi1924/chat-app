class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  hhas_many :messages, dependent: :destroy

  validates :name, presence: true

end
